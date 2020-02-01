package com.itsu.spbmanagevue.components.interceptors;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.itsu.spbmanagevue.components.annotations.UserLoginToken;
import com.itsu.spbmanagevue.components.constant.ProjectConstant;
import com.itsu.spbmanagevue.components.exception.AuthenException;
import com.itsu.spbmanagevue.entity.User;
import com.itsu.spbmanagevue.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * @author 苏犇
 * @create time 2020/1/20 22:49
 */
public class AuthenticationInterceptor implements HandlerInterceptor {
    @Resource
    private RedisTemplate redisTemplate;

    @Resource
    private UserService userService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String token = request.getHeader("token");
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        Method method = handlerMethod.getMethod();
        if (method.isAnnotationPresent(UserLoginToken.class)) {
            UserLoginToken anno = method.getAnnotation(UserLoginToken.class);
            if (anno.required()) {
                if (StringUtils.isBlank(token)) {
                    throw new AuthenException("token为空");
                }
                String newerToken = (String) redisTemplate.opsForValue().get(ProjectConstant.TOKEN_PREFIX + ":" + token);
                if (StringUtils.isNotBlank(newerToken)) {
                    token = newerToken;
                }

                String username = "";
                try {
                    username = JWT.decode(token).getAudience().get(0);
                } catch (JWTDecodeException e) {
                    throw e;
                }

                User user = userService.getUserByUserName(username);
                if (user == null) {
                    throw new AuthenException("当前用户不存在");
                }

                JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(user.getPwd())).build();

                try {
                    jwtVerifier.verify(token);
                } catch (JWTVerificationException e) {
                    throw e;
                }
                return true;
            }
        }

        return true;
    }

}
