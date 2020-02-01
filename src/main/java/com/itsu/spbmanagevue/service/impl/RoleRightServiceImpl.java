package com.itsu.spbmanagevue.service.impl;

import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.dao.MenuDAO;
import com.itsu.spbmanagevue.dao.RoleDAO;
import com.itsu.spbmanagevue.entity.Menu;
import com.itsu.spbmanagevue.entity.Role;
import com.itsu.spbmanagevue.service.RoleRightService;
import com.itsu.spbmanagevue.utils.TreeUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author suben
 * @create time 2020/1/25 16:53
 */
@Service
@Slf4j
public class RoleRightServiceImpl implements RoleRightService {
    @Resource
    private MenuDAO menuDAO;

    @Resource
    private RoleDAO roleDAO;

    @Override
    public List<HashMap> getRoleRightList() throws Exception {
        List<HashMap> menuButtonInfo = null;
        try {
            menuButtonInfo = menuDAO.getMenuButtonInfo();
        } catch (Exception e) {
            throw new SystemException(e);
        }
        return menuButtonInfo;
    }

    @Override
    public List<Map> getRolesList() throws Exception {
        List<Role> result;
        List<Map> list;
        try {
            result = roleDAO.getRoleListWithMenuButton();
            list = result.stream().map(x -> {
                Map map = new HashMap();
                map.put("rid", x.getRid());
                map.put("roleName", x.getRoleName());
                map.put("stat", x.getStat());
                map.put("roleDesc", x.getRoleDesc());
                try {
                    List<Menu> menus = TreeUtil.transferToTree(x.getMenus());
                    map.put("menus", menus);
                } catch (Exception e) {
                    log.error(e.getMessage(), e);
                }
                return map;
            }).collect(Collectors.toList());
        } catch (Exception e) {
            throw new SystemException(e);
        }
        return list;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteRoleRightRef(Integer rid, Integer mid) throws Exception {
        List<Integer> result = findAllLeafsIds(mid);
        try {
            if (!CollectionUtils.isEmpty(result))
                deleteMultipleRoleRightRef(rid, result);
            deleteSingleRoleRightRef(rid, mid);
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }

    private void deleteMultipleRoleRightRef(Integer rid, List<Integer> result) {
        for (Integer mid : result) {
            this.deleteSingleRoleRightRef(rid, mid);
        }
    }

    private void deleteSingleRoleRightRef(Integer rid, Integer mid) {
        log.info("rid:{}, mid: {} will be delete", rid, mid);
        roleDAO.deleteRoleMenuRef(rid, mid);
    }

    private List<Integer> findAllLeafsIds(Integer mid) {

        List<Menu> allMenus = menuDAO.selectList(null);
        List<Integer> ids = new ArrayList<>();
        for (Menu menu : allMenus) {
            if (menu.getPid() != null && menu.getPid().intValue() == mid.intValue()) {
                ids.add(menu.getMenuId());
                findChildrenLeafsIds(menu.getMenuId(), ids, allMenus);
            }
        }
        return ids;
    }

    private void findChildrenLeafsIds(Integer menuId, List<Integer> ids, List<Menu> allMenus) {
        for (Menu menu : allMenus) {
            if (menu.getPid() != null && menu.getPid().intValue() == menuId.intValue()) {
                ids.add(menu.getMenuId());
                findChildrenLeafsIds(menu.getMenuId(), ids, allMenus);
            }
        }
    }

    @Override
    public Map getRoleRights(Integer rid) throws Exception {
        Map map = null;
        try {
            Role role = roleDAO.getRoleWithMenuButtonById(rid);
            map = new HashMap();
            map.put("rid", role.getRid());
            map.put("roleName", role.getRoleName());
            map.put("stat", role.getStat());
            map.put("roleDesc", role.getRoleDesc());
            List<Menu> menus = TreeUtil.transferToTree(role.getMenus());
            map.put("menus", menus);
        } catch (Exception e) {
            throw new SystemException(e);
        }
        return map;
    }
}
