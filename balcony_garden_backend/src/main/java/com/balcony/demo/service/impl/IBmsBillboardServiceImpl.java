package com.balcony.demo.service.impl;

import com.balcony.demo.mapper.BmsBillboardMapper;
import com.balcony.demo.model.entity.BmsBillboard;
import com.balcony.demo.service.IBmsBillboardService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class IBmsBillboardServiceImpl extends ServiceImpl<BmsBillboardMapper,
        BmsBillboard> implements IBmsBillboardService {

}
