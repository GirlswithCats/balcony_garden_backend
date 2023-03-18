package com.balcony.demo.service;

import com.balcony.demo.model.dto.CommentDTO;
import com.balcony.demo.model.entity.BmsComment;
import com.balcony.demo.model.entity.UmsUser;
import com.balcony.demo.model.vo.CommentVO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IBmsCommentService extends IService<BmsComment> {
    /**
     *
     *
     * @param topicid
     * @return {@link BmsComment}
     */
    List<CommentVO> getCommentsByTopicID(String topicid);

    BmsComment create(CommentDTO dto, UmsUser principal);
}
