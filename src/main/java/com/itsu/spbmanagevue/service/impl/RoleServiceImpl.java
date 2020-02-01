package com.itsu.spbmanagevue.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.dao.RoleDAO;
import com.itsu.spbmanagevue.entity.Role;
import com.itsu.spbmanagevue.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author suben
 * @create time 2020/1/25 11:43
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDAO roleDAO;

    @Override
    public List<Map> getAllRoleNames() throws Exception {
        List<Map> roleNames = null;
        try {
            QueryWrapper<Role> condition = new QueryWrapper<>();
            condition.select("role_name").eq("stat", "Y");
            List<Role> roles = roleDAO.selectList(condition);
            roleNames = roles.stream().map(x -> {
                        Map map = new HashMap();
                        map.put("id", x.getRid());
                        map.put("roleName", x.getRoleName());
                        return map;
                    }
            ).collect(Collectors.toList());
        } catch (Exception e) {
            throw new SystemException(e);
        }
        return roleNames;
    }

}
