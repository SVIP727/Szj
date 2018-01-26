package com.szj.dao;

import com.szj.bean.User;

import java.util.List;


public interface UserDao {

   // Integer userCount();

    List<User> userData(User user);
}
