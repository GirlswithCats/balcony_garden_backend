package com.balcony.demo.controller.backstage;

import cn.hutool.extra.tokenizer.Result;
import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.controller.BaseController;
import com.balcony.demo.model.entity.BmsPost;
import com.balcony.demo.model.entity.Role;
import com.balcony.demo.model.entity.backstage.Posts;
import com.balcony.demo.model.vo.PostVO;
import com.balcony.demo.service.backstage.PostsService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/posts")
public class PostsController extends BaseController {

    @Resource
    private PostsService postsService;

    // 查询所有数据
    @GetMapping
    public List<Posts> findAll() {
        return postsService.list();
    }

    @PostMapping
    public ApiResult save(@RequestBody Posts posts) {
        return ApiResult.success(postsService.saveOrUpdate(posts));
    }

    @DeleteMapping("/{id}")
    public ApiResult delete(@PathVariable Integer id) {
        return ApiResult.success(postsService.removeById(id));
    }

    @PostMapping("/del/batch")
    public ApiResult deleteBatch(@RequestBody List<Integer> ids) {
        return ApiResult.success(postsService.removeByIds(ids));
    }

    //    后台
    @GetMapping("/page")
    public ApiResult findPage(@RequestParam String username,
                              @RequestParam Integer pageNum,
                                 @RequestParam Integer pageSize) {
            Page<Posts> page = postsService.findPage(new Page<>(pageNum, pageSize), username);
            return ApiResult.success(page);
    }
}
