package com.itsu.spbmanagevue.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author 苏犇
 * @create time 2019/10/8 11:12
 */
@Data
@TableName("tb_food")
public class Food implements Serializable {
    private static final long serialVersionUID = -7638987532584927087L;

    @TableId
    private Integer id;

    @TableField("name")
    private String name;
    @TableField("weight")
    private Integer weight;
    @TableField("type")
    private Integer type;
}
