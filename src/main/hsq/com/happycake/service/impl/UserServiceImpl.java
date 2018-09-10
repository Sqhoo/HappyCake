package com.happycake.service.impl;

import com.happycake.mapper.UserMapper;
import com.happycake.pojo.User;
import com.happycake.pojo.UserExt;
import com.happycake.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-26
 * Time: 下午9:48
 */
@Service
public class UserServiceImpl implements UserService {
    private final UserMapper userMapper;

    @Autowired
    public UserServiceImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    /*删除用户*/
    @Override
    public void deleteUserInfo(String userId) {
        userMapper.deleteUserInfo(userId);
    }

    /*按照Id模糊查询用户*/
    @Override
    public UserExt queryUserById(UserExt userExt) {
        int count=userMapper.queryUserByIdCount(userExt);
        userExt.setPagePlace(userExt.getPageSize()*(userExt.getCurrentPage()-1));
        userExt.setTotalPage((int) Math.ceil(count*1.0/userExt.getPageSize()));
        List<User> users = userMapper.queryUserById(userExt);
        userExt.setUsers(users);
        return userExt;
    }
}
