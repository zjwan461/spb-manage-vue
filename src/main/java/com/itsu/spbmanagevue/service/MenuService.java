package com.itsu.spbmanagevue.service;

import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.entity.Menu;

import java.util.List;

/**
 * @author suben
 * @create time 2020/1/23 18:48
 */
public interface MenuService {
    List<Menu> getMenusForCurrentUser(String username) throws SystemException;

    List<Integer> getButtonsForCurrentUser(Integer menuId, String token) throws Exception;
}
