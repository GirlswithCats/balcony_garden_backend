package com.balcony.demo.model.entity.backstage;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.util.Date;

@Data
@TableName(value = "ums_user")
public class User {

    @TableId(value = "id", type = IdType.ASSIGN_ID)
    private String id;

    private String username;

    private String alias;

    @JsonIgnore
    private String password;

    private String avatar = "https://s3.ax1x.com/2020/12/01/DfHNo4.jpg";

    private String email;

    private String mobile;

    private String bio = "自由职业者";

    private Integer score = 0;

    /**
     * 用户角色
     */
    @TableField("role_id")
    private Integer roleId;

    /**
     * 作者名称
     */
    @TableField(exist = false)
    private String rolename;

    private Boolean active = true;

    private Date createTime;


    /**
     * 状态。1:使用，0:已停用
     */

    private Boolean status = true;


}
