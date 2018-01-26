package com.szj.controller;

import com.alibaba.fastjson.JSON;
import com.szj.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author: SueZhiJun
 * @date: 2018/1/24 19:04
 * Description:
 */

@Controller
@RequestMapping("user")
public class UserController {

    @Resource
    private UserService userService;

    /* ===【1】===== 【用户管理】 ======== */
    @RequestMapping("userData")
    @ResponseBody
    private String userData(Integer pageNumber,Integer pageSize) {
        System.out.println("page=="+pageNumber);
        System.out.println("limit=="+pageSize);
        return JSON.toJSONString(userService.userData(pageNumber,pageSize));
    }


}
