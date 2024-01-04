package com.LMS.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.LMS.entity.IssueBooks;

@Repository
public class IssueBooksDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public List<IssueBooks> getBooks() {
		String query="select*from issuebooks";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(IssueBooks.class));
		
		
	}


	}


