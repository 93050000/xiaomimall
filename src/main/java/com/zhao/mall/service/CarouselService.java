package com.zhao.mall.service;

import com.zhao.mall.entity.Carousel;
import com.zhao.mall.utils.PageQueryUtil;
import com.zhao.mall.utils.PageResult;
import com.zhao.mall.vo.IndexCarouselVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CarouselService {
    //查询列表页
    PageResult getCarouselPage(PageQueryUtil pageUtil);

    //轮播图添加
    String saveCarousel(Carousel carousel);

    //轮播图修改
    String updateCarousel(Carousel carousel);

    //根据id查询轮播图信息
    Carousel getCarouselById(Integer id);

    //根据id删除多个轮播图
    boolean deleteBatch(Integer[] ids);

    //返回固定数量的轮播图对象(首页调用)
    public List<IndexCarouselVO> getCarouselsForIndex(int number);
}
