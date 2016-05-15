package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.Role;

@Repository("roleMapper")
public interface RoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}