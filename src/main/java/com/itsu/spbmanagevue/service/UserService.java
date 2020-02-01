package com.itsu.spbmanagevue.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.itsu.spbmanagevue.entity.User;
import com.itsu.spbmanagevue.response.ResponseObj;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 苏犇
 * @create time 2020/1/21 20:55
 */
public interface UserService {
    default User getUserByUserName(String username) {
        return null;
    }


    default User getUserById(Integer id) {
        return null;
    }


    ResponseObj login(User user) throws Exception;

    IPage<HashMap> getUsersByPage(Integer currentPage, Integer pageSize);

    void updateUser(User user) throws Exception;

    void saveUser(User user) throws Exception;

    void deleteUserById(Integer uid) throws Exception;

    IPage<HashMap> searchUserByPage(String searchValue, Integer currentPage, Integer pageSize) throws Exception;

    void updateUserRole(Map params) throws Exception;

    Integer getRoleIdByUserName(String username) throws Exception;

}
