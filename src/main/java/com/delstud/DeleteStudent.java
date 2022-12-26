package com.delstud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String stud_id=request.getParameter("stud_id");
		String url="jdbc:mysql://localhost:3306/students_management";    
        String user="root";    
        String password="";
		int i=0;
		PrintWriter out=response.getWriter(); 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, password);  
			String query = "DELETE FROM students where stud_id = ?";
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, stud_id); 
			i = st.executeUpdate();
			if(i==1) {
				RequestDispatcher rd=request.getRequestDispatcher("DelStudPrint.jsp");
        		rd.forward(request, response); 
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("invalid.jsp");
        		rd.forward(request, response); 
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		  
        
		
		
	}
}
