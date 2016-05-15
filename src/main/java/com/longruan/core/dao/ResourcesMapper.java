package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.Resources;

@Repository("resourcesMapper")
public interface ResourcesMapper {
    int deleteByPrimaryKey(String id);

    int insert(Resources record);

    int insertSelective(Resources record);

    Resources selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Resources record);

    int updateByPrimaryKey(Resources record);
}