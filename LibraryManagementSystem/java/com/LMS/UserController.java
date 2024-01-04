package com.LMS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LMS.database.Database;
import com.LMS.entity.Books;
import com.LMS.entity.Users;
import com.LMS.service.BookService;
import com.LMS.service.UserService;

@Controller
public class UserController {
	
	// user log in controller
	@RequestMapping("/UserLogIn")
	public String userLogIn() {
		return "UserLogIn";
	}

	
	// user action controller
	@RequestMapping("/UserAction")
	public String userAction(Model m, @RequestParam("un") String name, @RequestParam("pass") String pass)
			throws Exception {
		if (userExists(name, pass)) {
			return "UserAction";
		}
		m.addAttribute("user", "ENTER CORRECT USERNAME $ PASSOWORD");
		return "UserLogIn";

	}

	public static boolean userExists(String username, String password) throws Exception {

		try (Connection connection = Database.getConnection()) {
			String query = "select*from users where username=? and password=?";
			PreparedStatement pst = connection.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			return rs.next();
		}

	}

	@Autowired
	private UserService userService;
  
	
	// view users
	@RequestMapping("/ViewUsers")
	public String viewUsers(Model model) {
		List<Users> users = userService.getAllusers();
		model.addAttribute("users", users);
		return "ViewUsers";
	}

	@Autowired
	private BookService bookService;

	
	// shows a books
	@RequestMapping("/vb")
	public String vb(Model model) {
		List<Books> books = bookService.getAllbooks();
		model.addAttribute("books", books);
		return "viewbooks";
	}
	
	// log out the user
	@RequestMapping("/userLO")

	public String logOutUser()
	{
		return "UserLogIn";
	}

}
