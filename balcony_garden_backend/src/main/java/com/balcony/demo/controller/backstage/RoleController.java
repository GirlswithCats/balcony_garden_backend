package com.balcony.demo.controller.backstage;


import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.model.entity.Flower;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import com.balcony.demo.service.IRoleService;
import com.balcony.demo.model.entity.Role;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author zlj
 * @since 2022-04-23
 */

@RestController
@Repository
@RequestMapping("/role")
public class RoleController {

    @Resource
    private IRoleService roleService;

    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestBody Role role) {
        return ApiResult.success(roleService.saveOrUpdate(role));
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(roleService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return ApiResult.success(roleService.removeByIds(ids));
    }

    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(roleService.list());
    }

    @GetMapping("/{id}")
    public ApiResult findOne(@PathVariable Integer id) {
        return ApiResult.success(roleService.getById(id));
    }

    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                               @RequestParam Integer pageSize) {
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return ApiResult.success(roleService.page(new Page<>(pageNum, pageSize), queryWrapper));

    }
}

