package com.balcony.demo.controller.backstage;

import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.controller.BaseController;
import com.balcony.demo.model.entity.backstage.User;
import com.balcony.demo.service.backstage.UserService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


@RestController
@RequestMapping("/user")
public class UserController  extends BaseController {

    @Resource
    private UserService userService;


    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestBody User user) {
        return ApiResult.success(userService.saveOrUpdate(user));
    }

    // 查询所有数据
    @GetMapping
    public List<User> findAll() {
        return userService.list();
    }

    @DeleteMapping("/{id}")
    public boolean delete(@PathVariable String id) {
        return userService.removeById(id);
    }


    // 分页查询 - mybatis-plus的方式
    //    后台
    @GetMapping("/page")
    public ApiResult findPage(@RequestParam String username,
                              @RequestParam Integer pageNum,
                              @RequestParam Integer pageSize) {
        Page<User> page = userService.findPage(new Page<>(pageNum, pageSize), username);
        return ApiResult.success(page);
    }

}
