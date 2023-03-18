package com.balcony.demo.service;

import com.balcony.demo.model.entity.BmsTip;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

public interface IBmsTipService extends IService<BmsTip> {
    BmsTip getRandomTip();

}
