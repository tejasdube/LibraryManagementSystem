package com.LMS.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.LMS.entity.Users;
@Repository
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public List<Users> getAllUsers(){
		String query="select*from users";
	 return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Users.class));	
	
	}
	

}
