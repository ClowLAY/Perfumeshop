package com.perfumeshop.service;


import com.perfumeshop.entity.ShopCart;
import com.perfumeshop.entity.ShopCartExample;
import com.perfumeshop.entity.ShopCartKey;

import java.util.List;

public interface ShopCartService {
    public void addShopCart(ShopCart shopCart);

    public List<ShopCart> selectByExample(ShopCartExample shopCartExample);

    public void deleteByKey(ShopCartKey shopCartKey);

    public void updateCartByKey(ShopCart shopCart);

    public ShopCart selectCartByKey(ShopCartKey shopCartKey);
}
