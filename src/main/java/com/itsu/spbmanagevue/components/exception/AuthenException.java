package com.itsu.spbmanagevue.components.exception;

import com.auth0.jwt.exceptions.JWTVerificationException;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:09
 */
public class AuthenException extends JWTVerificationException {


    public AuthenException(String message) {
        super(message);
    }

    public AuthenException(String message, Throwable cause) {
        super(message, cause);
    }
}
