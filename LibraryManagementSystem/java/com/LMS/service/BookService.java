package com.LMS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.LMS.Dao.BookDao;
import com.LMS.entity.Books;
@Service
public class BookService {

	private BookDao bookDao;
    @Autowired
	public void setBookService(BookDao bookDao) {
		this.bookDao=bookDao;
	}

	public List<Books> getAllbooks() {
		// TODO Auto-generated method stub
		return bookDao.getAllbooks();
	}


}
