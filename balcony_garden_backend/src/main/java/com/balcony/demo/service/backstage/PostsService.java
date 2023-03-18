package com.balcony.demo.service.backstage;

import com.balcony.demo.model.entity.BmsPost;
import com.balcony.demo.model.entity.backstage.Posts;
import com.balcony.demo.model.vo.PostVO;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 */
public interface PostsService  extends IService<Posts>  {

     /**
      * 获取后台话题列表
      *
      * @param page
      * @param username
      * @return
      */
     Page<Posts> findPage(Page<Posts> page, String username);


}
