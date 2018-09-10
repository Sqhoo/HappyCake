package com.happycake.service;


import com.happycake.pojo.User;
import com.happycake.pojo.UserExt;

import java.util.List;

public interface UserService {
    void deleteUserInfo(String userId);
    UserExt queryUserById(UserExt userExt);
}
