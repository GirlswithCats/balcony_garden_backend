package com.balcony.demo.controller;

import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.model.dto.CommentDTO;
import com.balcony.demo.model.entity.BmsComment;
import com.balcony.demo.model.entity.UmsUser;
import com.balcony.demo.model.vo.CommentVO;
import com.balcony.demo.service.IBmsCommentService;
import com.balcony.demo.service.IUmsUserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import static com.balcony.demo.jwt.JwtUtil.USER_NAME;

@RestController
@RequestMapping("/comment")
public class BmsCommentController extends BaseController {

    @Resource
    private IBmsCommentService bmsCommentService;
    @Resource
    private IUmsUserService umsUserService;

    @GetMapping("/get_comments")
    public ApiResult<List<CommentVO>> getCommentsByTopicID(@RequestParam(value = "topicid", defaultValue = "1") String topicid) {
        List<CommentVO> lstBmsComment = bmsCommentService.getCommentsByTopicID(topicid);
        return ApiResult.success(lstBmsComment);
    }
    @PostMapping("/add_comment")
    public ApiResult<BmsComment> add_comment(@RequestHeader(value = USER_NAME) String userName,
                                             @RequestBody CommentDTO dto) {
        UmsUser user = umsUserService.getUserByUsername(userName);
        BmsComment comment = bmsCommentService.create(dto, user);
        return ApiResult.success(comment);
    }
}

