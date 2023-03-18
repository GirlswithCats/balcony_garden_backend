package com.balcony.demo.service.impl;

import com.balcony.demo.mapper.BmsTipMapper;
import com.balcony.demo.model.entity.BmsTip;
import com.balcony.demo.model.entity.Flower;
import com.balcony.demo.service.IBmsTipService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Slf4j
@Service
public class IBmsTipServiceImpl extends ServiceImpl<BmsTipMapper, BmsTip> implements IBmsTipService {


    @Resource
    private BmsTipMapper bmsTipMapper;

    @Override
    public  BmsTip getRandomTip(){
        BmsTip todayTip = null;
        try {
            todayTip = this.baseMapper.getRandomTip();
        } catch (Exception e) {
            log.info("tip转化失败");
        }
        return todayTip;
    }


}
