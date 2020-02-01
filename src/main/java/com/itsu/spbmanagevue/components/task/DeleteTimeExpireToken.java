package com.itsu.spbmanagevue.components.task;

import com.auth0.jwt.JWT;
import com.itsu.spbmanagevue.components.constant.ProjectConstant;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Set;

/**
 * @author suben
 * @create time 2020/1/22 22:56
 */
@Component
@Slf4j
public class DeleteTimeExpireToken {

    @Resource
    private RedisTemplate redisTemplate;

    @Scheduled(cron = "0/5 * * * * ?")
    public void subToDel() {
        Set keys = redisTemplate.keys(ProjectConstant.TOKEN_PREFIX + "*");
        keys.forEach(x -> {
            String token = (String) redisTemplate.opsForValue().get(x);
            Date expiresAt = JWT.decode(token).getExpiresAt();
            if (expiresAt.getTime() - new Date().getTime() < 0) {
                log.info("key:{} is expire time , will be delete ...", x);
                redisTemplate.delete(x);
            }
        });
    }
}
