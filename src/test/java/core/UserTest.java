package core;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.longruan.core.model.User;
import com.longruan.core.service.UserService;
import com.longruan.core.service.impl.UserServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class UserTest {
	
	@Resource(name="userService")
	UserService userService = new UserServiceImpl();
	
	@Test
	public void testUser(){
		User user = userService.selectByPrimaryKey("1461925041176003");
		System.out.println(user);
	}
}
