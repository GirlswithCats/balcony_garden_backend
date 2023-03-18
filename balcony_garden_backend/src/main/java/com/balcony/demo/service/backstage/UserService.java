package com.balcony.demo.service.backstage;

import com.balcony.demo.model.entity.backstage.User;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;


public interface UserService extends IService<User> {

    Page<User> findPage(Page<User> page, String username);

}

