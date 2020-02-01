package com.itsu.spbmanagevue.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.List;

/**
 * @author 苏犇
 * @create time 2020/1/9 23:02
 */
@Data
@TableName("tb_role")
public class Role {

    @TableId("rid")
    private Integer rid;

    @TableField("role_name")
    private String roleName;

    @TableField("stat")
    private String stat;

    @TableField("role_desc")
    private String roleDesc;

    @TableField(exist = false)
    private List<Menu> menus;
}
