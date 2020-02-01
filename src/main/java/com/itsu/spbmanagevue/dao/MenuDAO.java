package com.itsu.spbmanagevue.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itsu.spbmanagevue.entity.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * @author suben
 * @create time 2020/1/23 18:27
 */
public interface MenuDAO extends BaseMapper<Menu> {
    List<Menu> getUserMenuByUserName(String username);

    List<Integer> getMenuButton(@Param("menuId") Integer menuId, @Param("rid") Integer rid);

    List<HashMap> getMenuButtonInfo();

}
