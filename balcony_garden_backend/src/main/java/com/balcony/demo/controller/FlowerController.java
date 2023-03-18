package com.balcony.demo.controller;


import cn.hutool.core.date.DateUtil;
import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.mapper.FlowerMapper;
import com.balcony.demo.model.entity.BmsPost;
import com.balcony.demo.model.entity.Flower;
import com.balcony.demo.model.entity.UmsUser;
import com.balcony.demo.model.vo.PostVO;
import com.balcony.demo.service.IUmsUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import com.balcony.demo.service.IFlowerService;

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
@RequestMapping("/flower")
public class FlowerController {

    @Resource
    private IFlowerService flowerService;
    @Resource
    private IUmsUserService umsUserService;
    @Resource
    private FlowerMapper flowerMapper;

    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestHeader(value = USER_NAME) String user,@RequestBody Flower flower) {
        if (flower.getId() == null) {
            flower.setTime(DateUtil.now());
            UmsUser users = umsUserService.getUserByUsername(user);
            flower.setUser(users.getUsername());
        }
        flowerService.saveOrUpdate(flower);
        return ApiResult.success(flowerService.saveOrUpdate(flower));
    }
    @GetMapping("/list")
    public ApiResult list() {
        QueryWrapper<Flower> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("essence", 1);
        List<Flower> list = flowerMapper.selectList(queryWrapper);
        return ApiResult.success(list);
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(flowerService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return ApiResult.success(flowerService.removeByIds(ids));
    }

    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(flowerService.list());
    }

    @GetMapping("/{id}")
    public ApiResult findOne(@PathVariable Integer id) {
        return ApiResult.success(flowerService.getById(id));
    }

    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                              @RequestParam Integer pageSize) {
        QueryWrapper<Flower> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return ApiResult.success(flowerService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }


}

