package com.balcony.demo.service.impl;

import com.balcony.demo.model.entity.Vegetable;
import com.balcony.demo.mapper.VegetableMapper;
import com.balcony.demo.service.IVegetableService;
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
public class VegetableServiceImpl extends ServiceImpl<VegetableMapper, Vegetable> implements IVegetableService {

}
