package com.happycake.service.impl;

import com.happycake.mapper.AdminMapper;
import com.happycake.pojo.Admin;
import com.happycake.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-08-21
 * Time: 下午5:50
 */
@Service
public class AdminServiceImpl implements AdminService {

    private final AdminMapper adminMapper;

    @Autowired
    public AdminServiceImpl(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public String queryAdminId(Admin admin) {
        return adminMapper.queryAdminId(admin);
    }
}
