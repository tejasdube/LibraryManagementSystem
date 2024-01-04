package com.LMS;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.LMS.entity.Books;
import com.LMS.entity.IssueBooks;
import com.LMS.service.BookService;
import com.LMS.service.IssueBookService;

@Controller

public class BookController {
	
	
	private BookService bookService;
	@Autowired
	public BookController(BookService bookService) {
		this.bookService=bookService;
	}
	@RequestMapping("/viewbooks")
	public String getAllbooks(Model model) {
		List<Books> books = bookService.getAllbooks();
		model.addAttribute("books", books);

		return "viewbooks";

	}

	
    @Autowired	
	private IssueBookService issueBookService;
    @RequestMapping("/IssuedBooks")
    public String getIssueBook(Model model) {
    	List<IssueBooks>books=issueBookService.getBooks();
    	model.addAttribute("books",books);
    	return "ViewIssuedBooks";
    }
    @RequestMapping("/search")
    public RedirectView searchBookInfo(@RequestParam(value = "query") String query) {
    	RedirectView rv=new RedirectView();
    	String urlString ="https://www.google.com/search?q="+ query;
    	rv.setUrl(urlString);
		return rv;
    }
	
}
