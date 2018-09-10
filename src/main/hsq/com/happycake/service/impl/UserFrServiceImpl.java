package com.happycake.service.impl;

import com.happycake.mapper.UserMapperFr;
import com.happycake.pojo.User;
import com.happycake.service.UserFrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-27
 * Time: 下午3:21
 */
@Service
public class UserFrServiceImpl implements UserFrService {
    private final UserMapperFr userMapperFr;

    @Autowired
    public UserFrServiceImpl(UserMapperFr userMapperFr) {
        this.userMapperFr = userMapperFr;
    }

    @Override
    public void insertUser(User user) {
        userMapperFr.insertUser(user);
    }

    @Override
    public void updateUser(User user) {
        userMapperFr.updateUser(user);
    }

    @Override
    public User queryUser(User user) {
        return userMapperFr.queryUser(user);
    }
}
