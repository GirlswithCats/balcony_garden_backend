package com.balcony.demo.service.impl;

import com.balcony.demo.model.entity.Role;
import com.balcony.demo.mapper.RoleMapper;
import com.balcony.demo.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zlj
 * @since 2022-04-23
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
