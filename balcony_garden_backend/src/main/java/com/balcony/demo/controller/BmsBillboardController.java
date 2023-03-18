package com.balcony.demo.controller;

import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.model.entity.BmsBillboard;
import com.balcony.demo.service.IBmsBillboardService;
import com.balcony.demo.service.impl.IBmsBillboardServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@Repository
@RequestMapping("/billboard")
public class BmsBillboardController extends BaseController{

    @Resource
    private IBmsBillboardService bmsBillboardService;

//    private IBmsBillboardServiceImpl bmsBillboardService;

    @GetMapping("/show")
    public ApiResult<BmsBillboard> getNotices(){
        List<BmsBillboard> list = bmsBillboardService.list(new LambdaQueryWrapper<BmsBillboard>().eq(BmsBillboard::isShow,true));
        return ApiResult.success(list.get(list.size()-1));
    }
}
