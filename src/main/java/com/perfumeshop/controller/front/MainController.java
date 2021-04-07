package com.perfumeshop.controller.front;


import com.perfumeshop.entity.*;
import com.perfumeshop.entity.*;
import com.perfumeshop.service.CateService;
import com.perfumeshop.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private CateService cateService;

    @Autowired
    private GoodsService goodsService;


    @RequestMapping("/")
    public String showAdmin(Model model, HttpSession session) {
        Integer userid;
        User user = (User) session.getAttribute("user");
        if (user == null) {
            userid = null;
        } else {
            userid = user.getUserid();
        }
        List<Goods> chanelGoods = getCateGoods("香奈儿", userid); //香奈儿
        model.addAttribute("chanelGoods", chanelGoods);

        List<Goods> diorGoods = getCateGoods("迪奥", userid);//迪奥
        model.addAttribute("diorGoods", diorGoods);

        List<Goods> colGoods = getCateGoods("纪梵希", userid);    //纪梵希
        model.addAttribute("colGoods", colGoods);
        List<Goods> bookGoods = getCateGoods("古驰", userid);  //古驰
        model.addAttribute("bookGoods", bookGoods);

        List<Goods> bvlgariGoods = getCateGoods("宝格丽", userid); //宝格丽
        model.addAttribute("bvlgariGoods", bvlgariGoods);

        List<Goods> yslGoods = getCateGoods("圣罗兰", userid); //圣罗兰
        model.addAttribute("yslGoods", yslGoods);
        return "main";
    }




    @RequestMapping("/main")
    public String showAllGoods(Model model, HttpSession session) {
        Integer userid;
        User user = (User) session.getAttribute("user");
        if (user == null) {
            userid = null;
        } else {
            userid = user.getUserid();
        }

        //香奈儿
        List<Goods> chanelGoods = getCateGoods("香奈儿", userid);
        model.addAttribute("chanelGoods", chanelGoods);

        //迪奥
        List<Goods> diorGoods = getCateGoods("迪奥", userid);
        model.addAttribute("diorGoods", diorGoods);

        //纪梵希
        List<Goods> colGoods = getCateGoods("纪梵希", userid);
        model.addAttribute("colGoods", colGoods);

        //古驰
        List<Goods> bookGoods = getCateGoods("古驰", userid);
        model.addAttribute("bookGoods", bookGoods);

        //宝格丽
        List<Goods> bvlgariGoods = getCateGoods("宝格丽", userid);
        model.addAttribute("bvlgariGoods", bvlgariGoods);

        //圣罗兰
        List<Goods> yslGoods = getCateGoods("圣罗兰", userid);
        model.addAttribute("yslGoods", yslGoods);

        return "main";
    }

    public List<Goods> getCateGoods(String cate, Integer userid) {
        //查询分类
        CategoryExample digCategoryExample = new CategoryExample();
        digCategoryExample.or().andCatenameLike(cate);
        List<Category> digCategoryList = cateService.selectByExample(digCategoryExample);

        if (digCategoryList.size() == 0) {
            return null;
        }

        //查询属于刚查到的分类的商品
        GoodsExample digGoodsExample = new GoodsExample();
        List<Integer> digCateId = new ArrayList<Integer>();
        for (Category tmp:digCategoryList) {
            digCateId.add(tmp.getCateid());
        }
        digGoodsExample.or().andCategoryIn(digCateId);

        List<Goods> goodsList = goodsService.selectByExampleLimit(digGoodsExample);

        List<Goods> goodsAndImage = new ArrayList<>();
        //获取每个商品的图片
        for (Goods goods:goodsList) {
            //判断是否为登录状态
            if (userid == null) {
                goods.setFav(false);
            } else {
                Favorite favorite = goodsService.selectFavByKey(new FavoriteKey(userid, goods.getGoodsid()));
                if (favorite == null) {
                    goods.setFav(false);
                } else {
                    goods.setFav(true);
                }
            }

            List<ImagePath> imagePathList = goodsService.findImagePath(goods.getGoodsid());
            goods.setImagePaths(imagePathList);
            goodsAndImage.add(goods);
        }
        return goodsAndImage;
    }
}
