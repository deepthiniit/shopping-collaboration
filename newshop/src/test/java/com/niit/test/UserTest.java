package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.UserDao;
import com.niit.model.User;

public class UserTest {
public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext config=new AnnotationConfigApplicationContext();
		config.scan("com.niit.*");
		config.refresh();
		User user=(User)config.getBean("user");
		
		UserDao userDao=(UserDao)config.getBean("userDao");
		
		user.setUsername("abc");
		user.setRole("ROLE_ADMIN");
		user.setAddress("banglore");
		user.setEmail("abc@gmail.com");
		user.setEnabled(true);
        user.setPassword("123");
        user.setPhone("988266988");
  
       userDao.insertUser(user);
		
		
		
	}

}
