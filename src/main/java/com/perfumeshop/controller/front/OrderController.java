package com.perfumeshop.controller.front;


import com.perfumeshop.entity.*;
import com.perfumeshop.service.*;
import com.perfumeshop.util.Msg;
import com.perfumeshop.entity.*;
import com.perfumeshop.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
public class OrderController {

    /*@Value("#{addressService}")*/
    @Autowired
    private AddressService addressService;

    @Autowired
    private ShopCartService shopCartService;

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ActivityService activityService;

    @RequestMapping("/order")
    public String showOrder(HttpSession session, Model model) {

        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }

        //查询当前用户的收货地址
        AddressExample addressExample = new AddressExample();
        addressExample.or().andUseridEqualTo(user.getUserid());
        List<Address> addressList = addressService.getAllAddressByExample(addressExample);

        model.addAttribute("address", addressList);

        //订单信息
        //获取当前用户的购物车信息
        ShopCartExample shopCartExample = new ShopCartExample();
        shopCartExample.or().andUseridEqualTo(user.getUserid());
        List<ShopCart> shopCart = shopCartService.selectByExample(shopCartExample);

        //获取购物车中的商品信息
        List<Goods> goodsAndImage = new ArrayList<>();

        Float totalPrice = new Float(0);
        Integer oldTotalPrice = 0;

        for (ShopCart cart:shopCart) {
            Goods goods = goodsService.selectById(cart.getGoodsid());

            List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
            goods.setImagePaths(imagePathList);
            goods.setNum(cart.getGoodsnum());

            //活动信息
            Activity activity = activityService.selectByKey(goods.getActivityid());
            goods.setActivity(activity);

            if(activity.getDiscount() != 1) {
                goods.setNewPrice(goods.getPrice()*goods.getNum()* activity.getDiscount());
            }else  if (activity.getFullprice()!=null){
                //算出满多少减去的价格
                float price = goods.getPrice()*goods.getNum();
                int reducePrice =new Float(price/activity.getFullprice()).intValue();

                goods.setNewPrice(price-(reducePrice*activity.getReduceprice()));
            } else {
                goods.setNewPrice((float) (goods.getPrice()*goods.getNum()));
            }

            if(activity.getFullnum() != null && goods.getNum() >= activity.getFullnum()) {
                //算出满多少件免几件
                goods.setNewPrice((float) (goods.getPrice()*(goods.getNum()-activity.getReducenum())));
            }
            totalPrice = totalPrice + goods.getNewPrice();
            oldTotalPrice = oldTotalPrice + goods.getNum() * goods.getPrice();
            goodsAndImage.add(goods);
        }

        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("oldTotalPrice", oldTotalPrice);
        model.addAttribute("goodsAndImage", goodsAndImage);

        return "orderConfirm";
    }

    @RequestMapping("/orderFinish")
    @ResponseBody
    public Msg orderFinish(Float oldPrice, Float newPrice, Boolean isPay, Integer addressid, HttpSession session) {
        User user = (User) session.getAttribute("user");
        //获取订单信息
        ShopCartExample shopCartExample = new ShopCartExample();
        shopCartExample.or().andUseridEqualTo(user.getUserid());
        List<ShopCart> shopCart = shopCartService.selectByExample(shopCartExample);
        //删除购物车
        for (ShopCart cart : shopCart) {
            shopCartService.deleteByKey(new ShopCartKey(cart.getUserid(),cart.getGoodsid()));
        }
        //把订单信息写入数据库
        Order order = new Order(null, user.getUserid(), new Date(),
                oldPrice, newPrice, isPay, false, false,
                false, addressid,null,null);
        orderService.insertOrder(order);
        //插入的订单号
        Integer orderId = order.getOrderid();
        //把订单项写入orderitem表中
        for (ShopCart cart : shopCart) {
            orderService.insertOrderItem(new OrderItem(null, orderId, cart.getGoodsid(), cart.getGoodsnum()));
        }
        return Msg.success("购买成功");
    }

}