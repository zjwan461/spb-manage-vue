package com.itsu.spbmanagevue.components.exception;

/**
 * @author suben
 * @create time 2020/1/25 12:15
 */
public class IlegalParamException extends SystemException {
    public IlegalParamException(Integer errorCode, String message) {
        super(errorCode, message);
    }

    public IlegalParamException(Integer errorCode) {
        super(errorCode);
    }

    public IlegalParamException(String message, Throwable cause) {
        super(message, cause);
    }

    public IlegalParamException(Throwable cause) {
        super(cause);
    }

    public IlegalParamException(String message) {
        super(message);
    }
}
