package com.balcony.demo.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author zlj
 * @since 2022-05-02
 */
@Getter
@Setter
  @ApiModel(value = "Fruits对象", description = "")
public class Fruits implements Serializable {

    private static final long serialVersionUID = 1L;

      @TableId(value = "id", type = IdType.AUTO)
      private Integer id;

      @ApiModelProperty("标题")
      private String title;

      @ApiModelProperty("内容")
      private String content;

      @ApiModelProperty("发布时间")
      private String time;

      @ApiModelProperty("发布人")
      private String user;

      @ApiModelProperty("封面")
      private String img;

      @ApiModelProperty("浏览统计")
      private Integer view;

      @ApiModelProperty("是否置顶，1-是，0-否")
      private Boolean top;

      @ApiModelProperty("是否加精，1-是，0-否")
      private Boolean essence;

      @ApiModelProperty("专栏ID")
      private Integer sectionId;


}
