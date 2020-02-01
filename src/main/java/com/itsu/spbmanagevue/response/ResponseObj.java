package com.itsu.spbmanagevue.response;

import com.itsu.spbmanagevue.components.constant.ProjectConstant;
import lombok.Getter;
import lombok.Setter;

/**
 * @author suben
 * @create time 2020/1/23 15:30
 */
@Getter
@Setter
public class ResponseObj<T> {

    private Integer code;
    private String msg;
    private T data;

    private ResponseObj(Integer code, String msg, T data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    private ResponseObj(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    private ResponseObj(Integer code) {
        this.code = code;
    }

    public ResponseObj(Integer code, T data) {
        this.code = code;
        this.data = data;
    }

    public static ResponseObj createSuccess() {
        return new ResponseObj(ProjectConstant.SUCCESS_RETURN_CODE);
    }

    public static <T> ResponseObj createSuccess(T data) {
        return new ResponseObj(ProjectConstant.SUCCESS_RETURN_CODE, data);
    }

    public static ResponseObj createError() {
        return new ResponseObj(ProjectConstant.ERROR_RETURN_CODE, ProjectConstant.ERROR_RETURN_MSG);
    }

    public static ResponseObj createError(Integer code) {
        return new ResponseObj(code);
    }

    public static ResponseObj createError(Integer code, String msg) {
        return new ResponseObj(code, msg);
    }

    public static ResponseObj createError(String msg) {
        return new ResponseObj(ProjectConstant.ERROR_RETURN_CODE, msg);
    }

}
