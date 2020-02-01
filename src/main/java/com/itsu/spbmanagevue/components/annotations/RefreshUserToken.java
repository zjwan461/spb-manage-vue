package com.itsu.spbmanagevue.components.annotations;

import java.lang.annotation.*;

/**
 * @author suben
 * @create time 2020/1/22 21:57
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface RefreshUserToken {
    long timeMiles() default 1000 * 60 * 30;
}
