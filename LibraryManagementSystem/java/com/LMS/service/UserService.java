package com.LMS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.LMS.Dao.UserDao;
import com.LMS.entity.Users;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public List<Users>getAllusers(){
		return userDao.getAllUsers();
	}
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	 public Users getUserByUsername(String username) {
	        String sql = "SELECT * FROM users WHERE username = ?";
	        return jdbcTemplate.queryForObject(sql, new Object[]{username}, new UsersRowMapper());
	    }
	    

}
