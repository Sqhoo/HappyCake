package com.happycake.control;

import com.happycake.pojo.User;
import com.happycake.pojo.UserExt;
import com.happycake.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-22
 * Time: 下午9:30
 */
@Controller
@RequestMapping("behind/user")
public class UserControl {
    private final UserService userService;

    @Autowired
    public UserControl(UserService userService) {
        this.userService = userService;
    }


    @RequestMapping("userInfo")
    public String userInfo(){
        return "behind/userInfo";
    }

    @RequestMapping("feedback")
    public String feedback(){
        return "behind/feedback";
    }



    /*删除用户*/
    @RequestMapping("deleteUserInfo")
    @ResponseBody
    public String deleteUserInfo(String userId){
        userService.deleteUserInfo(userId);
        return "success";
    }
    /*按照Id模糊查询用户信息*/
    @RequestMapping("queryUserById")
    @ResponseBody
    public UserExt queryUserById(Integer currentPage,String userId){
        UserExt userExt=new UserExt();
        userExt.setCurrentPage(currentPage);
        userExt.setPageSize(1);
        userExt.setUserId(userId);
        return userService.queryUserById(userExt);
    }
}
