package com.szj.service;

import com.alibaba.fastjson.JSON;
import com.szj.bean.User;
import com.szj.dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: SueZhiJun
 * @date: 2018/1/24 19:04
 * Description:
 */

@Service
@Transactional
public class UserService {

    @Resource
    private UserDao userDao;


    /* ===【1】===== 【用户管理】 ======== */
    public Map<String, Object> userData(Integer pageNumber,Integer pageSize) {
        Map<String, Object> map = new HashMap<>();
        User user = new User();
        user.setStart((pageNumber-1)*pageSize);
        user.setPageSize(pageSize);
       // Integer count = userDao.userCount();
        List<User> rows = userDao.userData(user);
        System.out.println("data==="+ JSON.toJSONString(rows));
        map.put("total", 124);
        map.put("rows", rows);
        System.out.println("map==="+ JSON.toJSONString(map));
        return map;
    }
}
