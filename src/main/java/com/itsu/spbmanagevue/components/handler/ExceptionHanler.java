package com.itsu.spbmanagevue.components.handler;

import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.itsu.spbmanagevue.components.exception.AuthenException;
import com.itsu.spbmanagevue.components.exception.SystemException;
import com.itsu.spbmanagevue.response.ResponseObj;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:53
 */
@ControllerAdvice
@Slf4j
public class ExceptionHanler {

    @ExceptionHandler(JWTVerificationException.class)
    @ResponseBody
    public ResponseObj handleAuthenException(HttpServletRequest request, HttpServletResponse response, Exception e) {
        log.error(e.getMessage(), e);
        ResponseObj resonseObj = null;
        if (e instanceof TokenExpiredException) {
            resonseObj = ResponseObj.createError(401, "登录超时");
        } else if (e instanceof AuthenException) {
            resonseObj = ResponseObj.createError(401, e.getMessage());
        } else {
            resonseObj = ResponseObj.createError(401, "token 验证失败");
        }
        return resonseObj;
    }

    @ExceptionHandler(SystemException.class)
    @ResponseBody
    public ResponseObj handleSystemException(HttpServletRequest request, Exception e) {

        log.error(e.getMessage(), e);
        ResponseObj error = ResponseObj.createError(e.getMessage());
        return error;
    }


}
