package com.itsu.spbmanagevue;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.dao.MenuDAO;
import com.itsu.spbmanagevue.dao.UserDAO;
import com.itsu.spbmanagevue.entity.Menu;
import com.itsu.spbmanagevue.entity.User;
import com.itsu.spbmanagevue.service.MenuService;
import com.itsu.spbmanagevue.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpbManageVueApplicationTests {

    @Resource
    private UserService userService;
    @Resource
    private UserDAO userDAO;

    @Resource
    private MenuDAO menuDAO;

    @Resource
    private MenuService menuService;

    @Test
    public void test1() {
        User user = userDAO.getUserInfoById(1);
        System.out.println(JSON.toJSONString(user));
    }


    @Test
    public void test2() {
        QueryWrapper<User> condition = new QueryWrapper<>();
        condition.eq("username", "suben");
        condition.eq("pwd", "suben");
        User user = userDAO.selectOne(condition);
        System.out.println(JSON.toJSONString(user));
    }

    @Test
    public void test3() {
        Page<User> page = new Page<>(1, 2);
        page = userDAO.selectPage(page, null);
        System.out.println(page.getTotal());
        System.out.println(page.getCurrent());
        System.out.println(JSON.toJSONString(page.getRecords()));
        System.out.println(page.getSize());
        System.out.println(page.getPages());
    }

    @Test
    public void test4() {
        List<Menu> menus = menuDAO.getUserMenuByUserName("suben");
        System.out.println(JSON.toJSONString(menus));
    }

    @Test
    public void test5() throws SystemException {
        List<Menu> treeMenus = menuService.getMenusForCurrentUser("suben");
        System.out.println(JSON.toJSONString(treeMenus));

    }

    @Test
    public void test6() {
        IPage<HashMap> page = userService.getUsersByPage(1, 2);
        System.out.println(page.getCurrent());
        System.out.println(page.getPages());
        System.out.println(JSON.toJSONString(page.getRecords()));
        System.out.println(page.getSize());
        System.out.println(page.getTotal());
    }


    @Test
    public void test7() {
        User user = new User();
        user.setId(4);
        user.setStat("N");
        int i = userDAO.updateById(user);

    }

    @Test
    public void test8() throws Exception {
        IPage<HashMap> page = userService.searchUserByPage("su", 1, 2);
        System.out.println(JSON.toJSONString(page));
    }
}
