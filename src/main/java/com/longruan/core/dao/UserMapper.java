package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.User;

@Repository("userMapper")
public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);
}