package com.balcony.demo.mapper;

import com.balcony.demo.model.entity.BmsTopicTag;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface BmsTopicTagMapper extends BaseMapper<BmsTopicTag> {
    /**
     * 根据标签获取话题ID集合
     *
     * @param id
     * @return
     */

    Set<String> getTopicIdsByTagId(@Param("id") String id);
}
