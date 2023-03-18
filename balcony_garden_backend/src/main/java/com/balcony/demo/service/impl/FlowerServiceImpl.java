package com.balcony.demo.service.impl;

import com.balcony.demo.mapper.FlowerMapper;
import com.balcony.demo.model.entity.BmsPost;
import com.balcony.demo.model.entity.Flower;
import com.balcony.demo.service.IFlowerService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zlj
 * @since 2022-05-02
 */
@Service
public class FlowerServiceImpl extends ServiceImpl<FlowerMapper, Flower> implements IFlowerService {

}
