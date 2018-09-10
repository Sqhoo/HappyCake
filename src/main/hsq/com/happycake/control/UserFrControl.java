package com.happycake.control;

import com.happycake.pojo.User;
import com.happycake.service.UserFrService;
import com.happycake.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-27
 * Time: 上午11:06
 */
@Controller
@RequestMapping("/front/user")
public class UserFrControl {
    private final UserFrService userFrService;

    @Autowired
    public UserFrControl(UserFrService userFrService) {
        this.userFrService = userFrService;
    }
    @RequestMapping("index")
    public String index(){
        return "front/index";
    }
    @RequestMapping("userInfo")
    public String userInfo(){
        return "front/userInfo";
    }
    @RequestMapping("account")
    public String account(){
        return "front/account";
    }

    /*注册用户*/
    @RequestMapping("insertUser")
    public String insertUser(User user){
        user.setPassword(Md5Util.md5(user.getPassword()));
        user.setUserId(String.valueOf(new Date().getTime()));
        userFrService.insertUser(user);
        return "redirect:index";
    }
    /*查找邮箱是否被注册*/
    @RequestMapping("queryUserByEmail")
    @ResponseBody
    public String queryUserByEmail(User user){
        User user1 = userFrService.queryUser(user);
        if (user1==null){
            return "false";
        }else {
            return "true";
        }
    }
    /*登录验证*/
    @RequestMapping("queryUser")
    @ResponseBody
    public String queryUser(User user, HttpSession session){
        user.setPassword(Md5Util.md5(user.getPassword()));
        User user1 = userFrService.queryUser(user);
        if (user1!=null){
            session.setAttribute("user",user1);
            return "true";
        }else {
            return "false";
        }
    }
    /*更新用户信息*/
    @RequestMapping("updateUser")
    @ResponseBody
    public String updateUser(User user,HttpSession session){
        if (user.getPassword()!=null && !(user.getPassword().equals(""))){
            user.setPassword(Md5Util.md5(user.getPassword()));
        }
        userFrService.updateUser(user);
        User newUser = userFrService.queryUser(user);
        session.setAttribute("user",newUser);
        return "success";
    }
}
