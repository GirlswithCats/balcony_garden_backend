package com.balcony.demo.controller;


import cn.hutool.core.date.DateUtil;
import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.mapper.VegetableMapper;
import com.balcony.demo.model.entity.Flower;
import com.balcony.demo.model.entity.UmsUser;
import com.balcony.demo.service.IUmsUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;


import javax.annotation.Resource;
import java.util.List;

import com.balcony.demo.service.IVegetableService;
import com.balcony.demo.model.entity.Vegetable;

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
@RequestMapping("/vegetable")
public class VegetableController {

    @Resource
    private IVegetableService vegetableService;
    @Resource
    private IUmsUserService umsUserService;

    @Resource
    private VegetableMapper vegetableMapper;

    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestHeader(value = USER_NAME) String user,
                          @RequestBody Vegetable vegetable) {
        if (vegetable.getId() == null) {
            vegetable.setTime(DateUtil.now());
            UmsUser users = umsUserService.getUserByUsername(user);
            vegetable.setUser(users.getUsername());
        }
        vegetableService.saveOrUpdate(vegetable);

        return ApiResult.success(vegetableService.saveOrUpdate(vegetable));
    }

    @GetMapping("/list")
    public ApiResult list() {
        QueryWrapper<Vegetable> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("essence", 1);
        List<Vegetable> list = vegetableMapper.selectList(queryWrapper);
        return ApiResult.success(list);
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(vegetableService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return ApiResult.success(vegetableService.removeByIds(ids));
    }

    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(vegetableService.list());
    }

    @GetMapping("/{id}")
    public ApiResult findOne(@PathVariable Integer id) {
        return ApiResult.success(vegetableService.getById(id));
    }

    @GetMapping("/page")
    public ApiResult findPage(@RequestParam(defaultValue = "") String title,
                                @RequestParam Integer pageNum,
                                    @RequestParam Integer pageSize) {
        QueryWrapper<Vegetable> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        if (!"".equals(title)) {
            queryWrapper.like("name", title);
        }
        return ApiResult.success(vegetableService.page(new Page<>(pageNum, pageSize), queryWrapper));

    }


}

