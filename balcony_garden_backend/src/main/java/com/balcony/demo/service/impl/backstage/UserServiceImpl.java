package com.balcony.demo.service.impl.backstage;

import com.balcony.demo.mapper.backstage.UserMapper;
import com.balcony.demo.model.entity.backstage.User;
import com.balcony.demo.service.backstage.UserService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public Page<User> findPage(Page<User> page, String username) {
        return  userMapper.findPage(page, username);
    }
}
