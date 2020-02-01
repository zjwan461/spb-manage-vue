package com.itsu.spbmanagevue.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author suben
 * @create time 2020/1/25 16:51
 */
public interface RoleRightService {
    List<HashMap> getRoleRightList() throws Exception;

    List<Map> getRolesList() throws Exception;

    Map getRoleRights(Integer rid) throws Exception;

    void deleteRoleRightRef(Integer rid, Integer mid) throws Exception;
}
