package com.balcony.demo.service.impl;

import com.balcony.demo.model.entity.Fruits;
import com.balcony.demo.mapper.FruitsMapper;
import com.balcony.demo.service.IFruitsService;
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
public class FruitsServiceImpl extends ServiceImpl<FruitsMapper, Fruits> implements IFruitsService {

}
