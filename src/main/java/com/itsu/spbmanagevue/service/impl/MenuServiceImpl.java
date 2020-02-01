package com.itsu.spbmanagevue.service.impl;

import com.auth0.jwt.JWT;
import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.dao.MenuDAO;
import com.itsu.spbmanagevue.entity.Menu;
import com.itsu.spbmanagevue.service.MenuService;
import com.itsu.spbmanagevue.service.UserService;
import com.itsu.spbmanagevue.utils.TreeUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author suben
 * @create time 2020/1/23 18:49
 */
@Service
public class MenuServiceImpl implements MenuService {

    @Resource
    private MenuDAO menuDAO;

    @Resource
    private UserService userService;

    @Override
    public List<Menu> getMenusForCurrentUser(String username) throws SystemException {
        if (StringUtils.isBlank(username)) {
            return null;
        }
        List<Menu> menus = null;
        try {
            List<Menu> sourceMenus = menuDAO.getUserMenuByUserName(username);
            menus = TreeUtil.transferToTree(sourceMenus);
        } catch (Exception e) {
            throw new SystemException(e);
        }
        return menus;
    }

    @Override
    public List<Integer> getButtonsForCurrentUser(Integer menuId, String token) throws Exception {
        if (StringUtils.isBlank(token))
            return null;
        try {
            String username = JWT.decode(token).getAudience().get(0);
            Integer rid = userService.getRoleIdByUserName(username);
            return menuDAO.getMenuButton(menuId, rid);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }
}
