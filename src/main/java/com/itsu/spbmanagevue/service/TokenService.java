package com.itsu.spbmanagevue.service;

import com.itsu.spbmanagevue.entity.User;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:22
 */
public interface TokenService {

    String generateToken(User user, long timeMiles);

    String generateNewToken(User user, String oldToken, long timeMiles);
}
