package com.balcony.demo.service.impl;

import com.balcony.demo.mapper.BmsFollowMapper;
import com.balcony.demo.model.entity.BmsFollow;
import com.balcony.demo.service.IBmsFollowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class IBmsFollowServiceImpl extends ServiceImpl<BmsFollowMapper, BmsFollow> implements IBmsFollowService {
}
