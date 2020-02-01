package com.itsu.spbmanagevue.service.impl;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.itsu.spbmanagevue.components.constant.ProjectConstant;
import com.itsu.spbmanagevue.entity.User;
import com.itsu.spbmanagevue.service.TokenService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:23
 */
@Service
public class TokenServiceImpl implements TokenService {


    @Resource
    RedisTemplate redisTemplate;

    @Override
    public String generateToken(User user, long timeMiles) {
        String token = JWT.create()
                .withAudience(user.getUsername())
                .withExpiresAt(new Date(new Date().getTime() + timeMiles))
                .sign(Algorithm.HMAC256(user.getPwd()));
        return token;
    }

    @Override
    public String generateNewToken(User user, String oldToken, long timeMiles) {
        String newerToken = this.generateToken(user, timeMiles);
        redisTemplate.opsForValue().set(ProjectConstant.TOKEN_PREFIX + ":" + oldToken, newerToken);
        return newerToken;
    }
}
