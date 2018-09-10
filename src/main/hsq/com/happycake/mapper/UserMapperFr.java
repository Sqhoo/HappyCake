package com.happycake.mapper;

import com.happycake.pojo.User;

public interface UserMapperFr {
    void insertUser(User user);

    void updateUser(User user);

    User queryUser(User user);
}
