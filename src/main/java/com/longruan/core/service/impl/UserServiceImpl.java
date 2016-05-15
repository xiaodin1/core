package com.longruan.core.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.longruan.core.dao.UserMapper;
import com.longruan.core.model.User;
import com.longruan.core.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource(name="userMapper")
	private UserMapper userMapper;
	
	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		return userMapper.insert(user);
	}

	@Override
	public int insertSelective(User user) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(user);
	}

	@Override
	public User selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
//		User user = new User();
//		user.setId(id);
//		user.setName("name");
//		user.setLoginname("loginName");
//		return user;
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public int updateByPrimaryKey(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKey(user);
	}

}
