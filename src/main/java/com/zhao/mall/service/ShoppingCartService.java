package com.zhao.mall.service;

import com.zhao.mall.entity.ShoppingCartItem;
import com.zhao.mall.vo.ShoppingCartItemVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ShoppingCartService {
    //保存商品至购物车中
    String saveCartItem(ShoppingCartItem shoppingCartItem);

    //修改购物车中的属性
    String updateCartItem(ShoppingCartItem shoppingCartItem);

    //获取购物项详情
    ShoppingCartItem getCartItemById(Long shoppingCartItemId);

    //删除购物车中的商品
    Boolean deleteById(Long shoppingCartItemId);

    //获取我的购物车中的列表数据
    List<ShoppingCartItemVO> getMyShoppingCartItems(Long userId);
}
