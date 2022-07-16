package com.zhao.mall.service;

import com.zhao.mall.entity.Goods;
import com.zhao.mall.utils.PageQueryUtil;
import com.zhao.mall.utils.PageResult;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GoodsService {
    //后台分页
    PageResult getGoodsPage(PageQueryUtil pageUtil);

    //添加商品
    String saveGoods(Goods goods);

    //批量新增商品数据
    void batchSaveGoods(List<Goods> newBeeMallGoodsList);

    //修改商品信息
    String updateGoods(Goods goods);

    //获取商品详情
    Goods getGoodsById(Long id);

    //批量修改销售状态(上架下架)
    Boolean batchUpdateSellStatus(Long[] ids,int sellStatus);

    //商品搜索
    PageResult searchGoods(PageQueryUtil pageUtil);
}
