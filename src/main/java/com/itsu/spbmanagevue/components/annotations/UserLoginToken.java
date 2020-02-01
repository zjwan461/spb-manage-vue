package com.itsu.spbmanagevue.components.annotations;

import java.lang.annotation.*;

/**
 * @author 苏犇
 * @create time 2020/1/20 22:48
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface UserLoginToken {
    boolean required() default true;
}
