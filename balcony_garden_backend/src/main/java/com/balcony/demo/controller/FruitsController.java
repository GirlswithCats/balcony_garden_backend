package com.balcony.demo.controller;


import cn.hutool.core.date.DateUtil;
import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.mapper.FruitsMapper;
import com.balcony.demo.model.entity.UmsUser;
import com.balcony.demo.model.entity.Vegetable;
import com.balcony.demo.service.IUmsUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import com.balcony.demo.service.IFruitsService;
import com.balcony.demo.model.entity.Fruits;

import org.springframework.web.bind.annotation.RestController;

import static com.balcony.demo.jwt.JwtUtil.USER_NAME;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author zlj
 * @since 2022-05-02
 */
@RestController
@RequestMapping("/fruits")
public class FruitsController {

    @Resource
    private IFruitsService fruitsService;
    @Resource
    private IUmsUserService umsUserService;
    @Resource
    private FruitsMapper fruitsMapper;

    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestHeader(value = USER_NAME) String user,
                          @RequestBody Fruits fruits) {

        if (fruits.getId() == null) {
            fruits.setTime(DateUtil.now());
            UmsUser users = umsUserService.getUserByUsername(user);
            fruits.setUser(users.getUsername());
        }
        fruitsService.saveOrUpdate(fruits);

        return ApiResult.success(fruitsService.saveOrUpdate(fruits));
    }

    @GetMapping("/list")
    public ApiResult list() {
        QueryWrapper<Fruits> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("essence", 1);
        List<Fruits> list = fruitsMapper.selectList(queryWrapper);
        return ApiResult.success(list);
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(fruitsService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return ApiResult.success(fruitsService.removeByIds(ids));
    }

    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(fruitsService.list());
    }

    @GetMapping("/{id}")
    public ApiResult findOne(@PathVariable Integer id) {
        return ApiResult.success(fruitsService.getById(id));
    }

    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                              @RequestParam Integer pageSize) {
        QueryWrapper<Fruits> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return ApiResult.success(fruitsService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }


}

