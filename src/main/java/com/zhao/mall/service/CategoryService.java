package com.zhao.mall.service;

import com.zhao.mall.entity.GoodsCategory;
import com.zhao.mall.utils.PageQueryUtil;
import com.zhao.mall.utils.PageResult;
import com.zhao.mall.vo.IndexCategoryVO;
import com.zhao.mall.vo.SearchPageCategoryVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService {
//    商品分页
    PageResult getCategorisPage(PageQueryUtil pageUtil);
//添加商品
    String saveCategory(GoodsCategory goodsCategory);
//修改商品
    String updateGoodsCategory(GoodsCategory goodsCategory);
//根据id查找商品
    GoodsCategory getGoodsCategoryById(Long id);
//删除商品
    Boolean deleteBatch(Integer[] ids);

    //返回分类数据(首页调用)
    List<IndexCategoryVO> getCategoriesForIndex();

    //返回分类数据(搜索页调用)
    SearchPageCategoryVO getCategoriesForSearch(Long categoryId);

    //根据parentId和level获取分类列表
    List<GoodsCategory> selectByLevelAndParentIdsAndNumber(List<Long> parentIds, int categoryLevel);
}
