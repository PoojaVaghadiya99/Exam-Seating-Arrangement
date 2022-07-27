package com.seatingarrangement.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		RequestDispatcher dispatchar = null;

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Pooja!1299");
			PreparedStatement pst = con.prepareStatement("select * from admin_info where name = ? and password = ?");
			pst.setString(1,name);
			pst.setString(2,pass);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				request.setAttribute("status","Success");
				session.setAttribute("name",rs.getString("name"));
				dispatchar = request.getRequestDispatcher("index.jsp");
			} else {
				request.setAttribute("status","Failed");
				dispatchar = request.getRequestDispatcher("login.jsp");
			}
			
			dispatchar.forward(request,response);
;			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
