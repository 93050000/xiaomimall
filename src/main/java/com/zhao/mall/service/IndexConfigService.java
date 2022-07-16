package com.zhao.mall.service;

import com.zhao.mall.entity.IndexConfig;
import com.zhao.mall.utils.PageQueryUtil;
import com.zhao.mall.utils.PageResult;
import com.zhao.mall.vo.IndexConfigGoodsVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface IndexConfigService {
    PageResult getConfigsPage(PageQueryUtil pageUtil);

    String saveIndexConfig(IndexConfig indexConfig);

    String updateIndexConfig(IndexConfig indexConfig);

    IndexConfig getIndexConfigById(Long id);

    boolean deleteBatch(Long[] ids);

    //返回固定数量的首页配置商品对象(首页调用)
    List<IndexConfigGoodsVO> getConfigGoodsesForIndex(int configType, int number);

}
