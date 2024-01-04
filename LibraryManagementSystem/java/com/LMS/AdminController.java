package com.LMS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LMS.database.Database;

@Controller
public class AdminController {
	//admin log in
	@RequestMapping("/AdminLogIn")
	public String admin() {
		return "AdminLogIn";
	}

	
	
	// controller checks the user is valid or not
	@RequestMapping("/AdminAction")
	public String AdminAction(Model m, @RequestParam("username") String name, @RequestParam("pass") String pass)
			throws Exception {

		if (userExists(name, pass)) {
			return "AdminAction";
		}

		m.addAttribute("key", "invalid username & password Try Again");
		return "AdminLogIn";

	}

	public static boolean userExists(String username, String password) throws Exception {
		try (Connection connection = Database.getConnection()) {
			String query = "select * from admin where username=? and password=?";
			PreparedStatement pst = connection.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);

			ResultSet resultSet = pst.executeQuery();

			return resultSet.next();
		}

	}

	
	// it is for adding books in the library
	@RequestMapping("/AddBooks")
	public String addbooks(Model m, @RequestParam(value = "Bname", required = false) String Bname,
			@RequestParam(value = "genre", required = false) String genre,
			@RequestParam(value = "price", required = false) String bprice) throws SQLException, Exception {

		try (Connection connection = Database.getConnection()) {
			String query = "insert into addbooks(Bname,genre,price)values(?,?,?)";
			PreparedStatement pst = connection.prepareStatement(query);
			pst.setString(1, Bname);
			pst.setString(2, genre);
			pst.setString(3, bprice);
			pst.execute();

		}

		return "AddBooks";

	}

	
	// it is use for adding user in the system
	@RequestMapping("/adduser")
	public String addUser(@RequestParam(value = "un", required = false) String name,
			@RequestParam(value = "pass", required = false) String pass) throws Exception, Exception {
		try (Connection connection = Database.getConnection()) {
			String query = "insert into users(username,password)values(?,?)";
			PreparedStatement pst = connection.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, pass);
			pst.executeUpdate();
			connection.close();

		}

		return "AddUser";
	}

	
	// it is  use for issue book for user
	@RequestMapping("/IssueBooks")
	public String issueBooks(@RequestParam(value = "bid" ,required = false) String Bid,@RequestParam(value = "uid",required = false) String  Uid, @RequestParam(value = "period"
	,required = false)String period,@RequestParam(value = "Idate" ,required = false)String Idate) throws SQLException, Exception {
		try(Connection connection=Database.getConnection()){
			String query="insert into issuebooks(Bid,Uid,Period,IssueDate)values(?,?,?,?)";
			PreparedStatement pst=connection.prepareStatement(query);
			pst.setString(1, Bid);
			pst.setString(2, Uid);
			pst.setString(3, period);
		pst.setString(4, Idate);
			pst.execute();
			
			
		}
		
		
		return "IssueBook";
	}
	
	// log out controller
	
	@RequestMapping("/index")
	public String logOut() {
		return "index";
	}

}
