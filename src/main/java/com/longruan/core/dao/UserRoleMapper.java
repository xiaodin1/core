package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.UserRole;

@Repository("userRoleMapper")
public interface UserRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
}