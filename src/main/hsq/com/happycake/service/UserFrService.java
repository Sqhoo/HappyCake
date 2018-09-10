package com.happycake.service;

import com.happycake.pojo.User;

public interface UserFrService {
    /*添加用户*/
    void insertUser(User user);
    /*更新用户信息*/
    void updateUser(User user);
    /*查找用户*/
    User queryUser(User user);
}
