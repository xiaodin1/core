package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.RoleResources;

@Repository("roleResourcesMapper")
public interface RoleResourcesMapper {
    int deleteByPrimaryKey(String id);

    int insert(RoleResources record);

    int insertSelective(RoleResources record);

    RoleResources selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RoleResources record);

    int updateByPrimaryKey(RoleResources record);
}