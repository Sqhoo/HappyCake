package com.happycake.mapper;

import com.happycake.pojo.User;
import com.happycake.pojo.UserExt;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-26
 * Time: 下午9:33
 */
public interface UserMapper {
    void deleteUserInfo(String userId);
    Integer queryUserByIdCount(UserExt userExt);
    List<User> queryUserById(UserExt userExt);
}
