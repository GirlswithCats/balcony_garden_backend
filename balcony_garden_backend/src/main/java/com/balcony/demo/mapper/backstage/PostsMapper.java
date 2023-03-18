package com.balcony.demo.mapper.backstage;

import com.balcony.demo.model.entity.backstage.Posts;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostsMapper extends BaseMapper<Posts> {
    Page<Posts> findPage(Page<Posts> page, String username);
}

