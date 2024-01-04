package com.LMS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.LMS.database.Database;
import com.LMS.entity.Books;
import com.LMS.entity.IssueBooks;
import com.LMS.entity.Users;

@Controller
public class LibraryController {

    @RequestMapping("/Mybooks")
    public String userDashboard(Model model,@RequestParam(value = "un",required = false)String username) throws Exception {
     
    	
    	

        // Fetch user
        Users user = getUserByUsername(username);

        // Fetch all books
        List<Books> allBooks = getAllBooks();

        // Fetch user issues
        List<IssueBooks> userIssues = getIssuesByUser(user);

        model.addAttribute("user", user);
        model.addAttribute("allBooks", allBooks);
        model.addAttribute("userIssues", userIssues);

        return "Mybooks";
    }

    private Users getUserByUsername(String username) throws Exception {
        String sql = "SELECT * FROM users WHERE username = ?";
        try (Connection connection = Database.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, username);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    Users user = new Users();
                    user.setUid(resultSet.getInt("uid"));
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    // map other user properties
                    return user;
                }
            }
        } catch (SQLException e) {
            // Handle exception
            e.printStackTrace();
            throw e; // Rethrow the exception or handle it appropriately
        }
		return null;
    }

    private List<Books> getAllBooks() throws Exception {
        List<Books> allBooks = new ArrayList<>();
        String sql = "SELECT * FROM addbooks";
        try (Connection connection = Database.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Books book = new Books();
                book.setBid(resultSet.getInt("bid"));
                book.setBname(resultSet.getString("bname"));
                book.setGenre(resultSet.getString("genre"));
                book.setPrice(resultSet.getString("price"));
                // map other book properties
                allBooks.add(book);
            }
        } catch (SQLException e) {
            // Handle exception
            e.printStackTrace();
            throw e; // Rethrow the exception or handle it appropriately
        }
        return allBooks;
    }

    private List<IssueBooks> getIssuesByUser(Users user) throws Exception {
        List<IssueBooks> userIssues = new ArrayList<>();
        String sql = "SELECT * FROM issuesbooks WHERE Uid = ?";
        try (Connection connection = Database.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setInt(1, user.getUid()); // Use setInt instead of setLong
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    IssueBooks issue = new IssueBooks();
                    issue.setBid(resultSet.getInt("Bid"));
                    issue.setIid(resultSet.getInt("Iid"));
                    issue.setUid(resultSet.getInt("Uid"));
                    issue.setIssueDate(resultSet.getString("IssueDate"));
                    issue.setPeriod(resultSet.getString("period"));
                    issue.setRdate(resultSet.getString("Rdate"));
                    // map other issue properties
                    userIssues.add(issue);
                }
            }
        } catch (SQLException e) {
            // Handle exception
            e.printStackTrace();
            throw e; // Rethrow the exception or handle it appropriately
        }
        return userIssues;
    }
    
   
}

