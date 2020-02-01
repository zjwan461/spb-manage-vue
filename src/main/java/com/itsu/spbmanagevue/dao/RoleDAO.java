package com.itsu.spbmanagevue.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itsu.spbmanagevue.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author suben
 * @create time 2020/1/25 11:39
 */
public interface RoleDAO extends BaseMapper<Role> {

    List<Role> getRoleListWithMenuButton();

    void deleteRoleMenuRef(@Param("rid") Integer rid, @Param("mid") Integer mid);

    Role getRoleWithMenuButtonById(@Param("rid") Integer rid);

}
