package com.balcony.demo.controller;


import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.model.entity.BmsTip;
import com.balcony.demo.model.entity.backstage.Posts;
import com.balcony.demo.model.entity.backstage.User;
import com.balcony.demo.service.IBmsTipService;
import com.balcony.demo.service.impl.IBmsTipServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@Repository
@RequestMapping("/tip")
public class BmsTipController extends BaseController{

    @Resource
    private IBmsTipService bmsTipService;

    @GetMapping("/today")
    public ApiResult<BmsTip> getRandomTip() {
        BmsTip tip = bmsTipService.getRandomTip();
        return ApiResult.success(tip);
    }

    //    后台


    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestBody BmsTip tip) {
        bmsTipService.saveOrUpdate(tip);
        return ApiResult.success();
    }


    // 查询所有数据
    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(bmsTipService.list());
    }

    //    删除
    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(bmsTipService.removeById(id));
    }
    //   批量 删除
    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return  ApiResult.success(bmsTipService.removeByIds(ids));
    }

    // 分页查询 - mybatis-plus的方式
    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                                  @RequestParam Integer pageSize,
                                  @RequestParam(defaultValue = "") String  id,
                                  @RequestParam(defaultValue = "") String content,
                                  @RequestParam(defaultValue = "") String author) {
//        IPage<BmsTip> page = new Page<>(pageNum, pageSize);
        QueryWrapper<BmsTip> queryWrapper = new QueryWrapper<>();
        if (!"".equals(id)) {
            queryWrapper.like("id", id);
        }
        if (!"".equals(content)) {
            queryWrapper.like("content", content);
        }
        if (!"".equals(author)) {
            queryWrapper.like("author", author);
        }
        return ApiResult.success(bmsTipService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}
