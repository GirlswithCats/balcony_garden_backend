package com.balcony.demo.controller;

import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.model.entity.BmsPost;
import com.balcony.demo.model.entity.BmsTag;
import com.balcony.demo.model.entity.BmsTip;
import com.balcony.demo.model.entity.Flower;
import com.balcony.demo.service.IBmsTagService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/tag")
public class BmsTagController extends BaseController {

    @Resource
    private IBmsTagService bmsTagService;

    @GetMapping("/s/{name}")
    public ApiResult<Map<String, Object>> getTopicsByTag(
            @PathVariable("name") String tagName,
            @RequestParam(value = "page", defaultValue = "1") Integer page,
            @RequestParam(value = "size", defaultValue = "10") Integer size) {

        Map<String, Object> map = new HashMap<>(16);

        LambdaQueryWrapper<BmsTag> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(BmsTag::getName, tagName);
        BmsTag one = bmsTagService.getOne(wrapper);
        Assert.notNull(one, "话题不存在，或已被管理员删除");
        Page<BmsPost> topics = bmsTagService.selectTopicsByTagId(new Page<>(page, size), one.getId());

        // 其他热门标签
        Page<BmsTag> hotTags = bmsTagService.page(new Page<>(1, 10),
                new LambdaQueryWrapper<BmsTag>()
                        .notIn(BmsTag::getName, tagName)
                        .orderByDesc(BmsTag::getTopicCount));

        map.put("topics", topics);
        map.put("hotTags", hotTags);

        return ApiResult.success(map);
    }


    // 新增或者更新
    @PostMapping
    public ApiResult save(@RequestBody BmsTag tag) {
        bmsTagService.saveOrUpdate(tag);
        return ApiResult.success();
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable String id) {
        return ApiResult.success(bmsTagService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<String> ids) {
        return ApiResult.success(bmsTagService.removeByIds(ids));
    }

    @GetMapping
    public ApiResult findAll() {
        return ApiResult.success(bmsTagService.list());
    }

//    @GetMapping("/{id}")
//    public ApiResult findOne( @PathVariable("id") String id) {
//        return ApiResult.success(bmsTagService.getById(id));
//    }

    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                              @RequestParam Integer pageSize) {
        QueryWrapper<BmsTag> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("id");
        return ApiResult.success(bmsTagService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }


}
