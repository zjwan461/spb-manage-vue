package com.itsu.spbmanagevue.components.exception;

import lombok.Getter;

/**
 * @author 苏犇
 * @create time 2020/1/21 21:34
 */
@Getter
public class SystemException extends Exception {

    private Integer errorCode = 500;

    public SystemException(Integer errorCode) {
        super();
        this.errorCode = errorCode;
    }

    public SystemException(String message) {
        super(message);
    }

    public SystemException(String message, Throwable cause) {
        super(message, cause);
    }

    public SystemException(Integer errorCode, String message) {
        super(message);
        this.errorCode = errorCode;
    }

    public SystemException(Throwable cause) {
        super(cause);
    }
}
