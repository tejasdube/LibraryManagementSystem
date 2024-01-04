package com.LMS.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.LMS.entity.Books;
@Repository
public class BookDao {
	
	private JdbcTemplate jdbcTemplate;
	@Autowired
	public BookDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate=jdbcTemplate;
	}
	
	public List<Books> getAllbooks() {
		// TODO Auto-generated method stub
		String query="select*from addbooks";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(Books.class));
	}

}
