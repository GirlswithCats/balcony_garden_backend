package com.balcony.demo.service.impl.backstage;

import com.balcony.demo.mapper.backstage.PostsMapper;
import com.balcony.demo.model.entity.backstage.Posts;
import com.balcony.demo.model.vo.PostVO;
import com.balcony.demo.service.backstage.PostsService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PostsServiceImpl extends ServiceImpl<PostsMapper, Posts> implements PostsService {

    @Resource
    private  PostsMapper postsMapper;

    @Override
    public Page<Posts> findPage(Page<Posts> page, String username) {

        return  postsMapper.findPage(page, username);
    }

}
