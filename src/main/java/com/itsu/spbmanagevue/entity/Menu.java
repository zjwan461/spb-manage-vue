package com.itsu.spbmanagevue.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.itsu.spbmanagevue.utils.annotation.TreeBean;
import com.itsu.spbmanagevue.utils.annotation.TreeChildren;
import com.itsu.spbmanagevue.utils.annotation.TreeId;
import com.itsu.spbmanagevue.utils.annotation.TreePid;
import lombok.Data;

import java.util.List;

/**
 * @author 苏犇
 * @create time 2020/1/9 23:22
 */
@Data
@TableName("tb_menu")
@TreeBean
public class Menu {

    @TableId("menu_id")
    @TreeId
    private Integer menuId;

    @TableField("menu_name")
    private String menuName;

    @TableField("url")
    private String url;

    @TreePid
    @TableField("pid")
    private Integer pid;

    @TableField("icon")
    private String icon;


    @TableField("type")
    private String type;

    @TreeChildren
    @TableField(exist = false)
    List<Menu> childrenMenus;
}
