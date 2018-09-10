package com.happycake.control;

import com.happycake.pojo.Admin;
import com.happycake.service.AdminService;
import com.happycake.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-21
 * Time: 下午5:56
 */
@Controller
@RequestMapping("behind/admin")
public class AdminControl {
    private final AdminService adminService;

    @Autowired
    public AdminControl(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("login")
    public String login(){
        return "behind/login";
    }
    @RequestMapping("index")
    public String index(){
        return "behind/index";
    }

    /*存储admin的session*/
    @RequestMapping("userSession")
    public String userSession(HttpSession session,String adminUsername){
        session.setAttribute("adminUsername",adminUsername);
        return "redirect:index";
    }
    /*删除session*/
    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:login";
    }

    /*验证账号是否正确的ajax*/
    @RequestMapping("check")
    public @ResponseBody String check(Admin admin){
        admin.setAdminPassword(Md5Util.md5(admin.getAdminPassword()));
        String id = adminService.queryAdminId(admin);
        if (id!=null){
            return "success";
        }
        return "failure";
    }
}
