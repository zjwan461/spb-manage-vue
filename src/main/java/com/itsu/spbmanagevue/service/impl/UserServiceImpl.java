package com.itsu.spbmanagevue.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itsu.spbmanagevue.components.constant.ProjectConstant;
import com.itsu.spbmanagevue.components.exception.IlegalParamException;
import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.dao.UserDAO;
import com.itsu.spbmanagevue.entity.Role;
import com.itsu.spbmanagevue.entity.User;
import com.itsu.spbmanagevue.response.ResponseObj;
import com.itsu.spbmanagevue.service.UserService;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:00
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDAO userDAO;

    @Override
    public User getUserByUserName(String username) {
        QueryWrapper<User> condition = new QueryWrapper<>();
        condition.eq("username", username);
        return userDAO.selectOne(condition);
    }

    @Override
    public User getUserById(Integer id) {
        return userDAO.selectById(id);
    }

    @Override
    public ResponseObj login(User user) throws Exception {
        if (user == null) {
            throw new SystemException("输入参数为null");
        }
        Map<String, Object> map = new HashMap<>();
        QueryWrapper<User> condition = new QueryWrapper<>();
        condition.eq("username", user.getUsername());
        condition.eq("pwd", user.getPwd());
        ResponseObj resonseObj = null;
        user = userDAO.selectOne(condition);
        if (user == null) {
            resonseObj = ResponseObj.createError(100, "用户名或密码错误");
        } else if (!"Y".equals(user.getStat())) {
            resonseObj = resonseObj.createError(101, "用户已被锁定");
        } else {
            resonseObj = resonseObj.createSuccess();
        }
        return resonseObj;
    }

    @Override
    public IPage<HashMap> getUsersByPage(Integer currentPage, Integer pageSize) {
        Page page = new Page<>();
        page.setCurrent(currentPage.longValue());
        page.setSize(pageSize.longValue());
        return userDAO.selectUserByPage(page);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateUser(User user) throws Exception {
        try {
            String id = BeanUtils.getProperty(user, "id");
            if (StringUtils.isBlank(id)) throw new SystemException("id is null");
            userDAO.updateById(user);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void saveUser(User user) throws Exception {
        try {
            user.setPwd(ProjectConstant.DEFAULT_PWD);
            user.setStat(ProjectConstant.DEFAULT_NEW_USER_STAT);
            Role role = new Role();
            role.setRid(ProjectConstant.DEFAULT_ROLE_ID);
            user.setRole(role);
            userDAO.insertUser(user);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteUserById(Integer uid) throws Exception {
        if (uid == null || uid.intValue() == 0) {
            throw new SystemException("user id 不合法");
        }
        try {
            userDAO.deleteById(uid);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }

    @Override
    public IPage<HashMap> searchUserByPage(String searchValue, Integer currentPage, Integer pageSize) throws Exception {
        //searchValue 不为空则进行模糊查询，否则则查询全部
        if (StringUtils.isNotBlank(searchValue)) {
            searchValue = "%" + searchValue + "%";
        } else {
            return getUsersByPage(currentPage, pageSize);
        }
        try {
            Page<HashMap> page = new Page<>();
            page.setSize(pageSize);
            page.setCurrent(currentPage);
            return userDAO.selectUserLikeByPage(searchValue, page);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateUserRole(Map params) throws Exception {
        String username = (String) params.get("username");
        String newRoleName = (String) params.get("newRoleName");
        if (StringUtils.isBlank(username) || StringUtils.isBlank(newRoleName)) {
            throw new IlegalParamException(ProjectConstant.DEFAULT_ILLEGAL_PARAM_MSG);
        }

        try {
            userDAO.updateUserRole(username, newRoleName);
        } catch (Exception e) {
            throw new SystemException(e);
        }

    }

    @Override
    public Integer getRoleIdByUserName(String username) throws Exception {
        QueryWrapper<User> condition = new QueryWrapper<>();
        condition.eq("username", username).select("rid").last("limit 1");
        Integer rid = (Integer) userDAO.selectMaps(condition).get(0).get("rid");
        return rid;
    }
}
