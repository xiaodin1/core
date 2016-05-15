package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.Menu;

@Repository("menuMapper")
public interface MenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}