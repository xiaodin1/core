package com.longruan.core.service;

import com.longruan.core.model.User;

public interface UserService {
    int deleteByPrimaryKey(String id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);
}
