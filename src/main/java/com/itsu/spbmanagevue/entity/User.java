package com.itsu.spbmanagevue.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author 苏犇
 * @create time 2019/12/26 23:35
 */
@Data
@TableName(value = "tb_user")
public class User implements Serializable {

    private static final long serialVersionUID = -513377134926243012L;

    @TableId("id")
    private Integer id;
    @TableField("username")
    private String username;
    @TableField("pwd")
    private String pwd;
    @TableField(exist = false)
    private boolean rem;

    @TableField("email")
    private String email;

    @TableField("mobile")
    private String mobile;

    @TableField("stat")
    private String stat;

    @TableField(exist = false)
    private Role role;

}
