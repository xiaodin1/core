package com.longruan.core.dao;

import org.springframework.stereotype.Repository;

import com.longruan.core.model.Online;

@Repository("onlineMapper")
public interface OnlineMapper {
    int deleteByPrimaryKey(String userid);

    int insert(Online record);

    int insertSelective(Online record);

    Online selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(Online record);

    int updateByPrimaryKey(Online record);
}