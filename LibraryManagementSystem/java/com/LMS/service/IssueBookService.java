package com.LMS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Dao.IssueBooksDao;
import com.LMS.entity.IssueBooks;

@Service
public class IssueBookService {
	
	@Autowired
	private IssueBooksDao issueBooksDao;
	
	public List<IssueBooks> getBooks(){
		return issueBooksDao.getBooks();
	}
	
	
	

}
