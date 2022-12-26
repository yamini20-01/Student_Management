package com.addstudservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddStudentServlet extends HttpServlet {

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");

		String stud_id=request.getParameter("stud_id");
		String stud_name=request.getParameter("stud_name");
		String stud_dept=request.getParameter("stud_dept");
		String stud_cgpa=request.getParameter("stud_cgpa");
		int count=0;
	
		PrintWriter out=response.getWriter(); 
		try {
			 Class.forName("com.mysql.jdbc.Driver");    
	            String url="jdbc:mysql://localhost:3306/students_management";    
	            String user="root";    
	            String password="";    
	                
	            Connection con=DriverManager.getConnection(url, user, password);    
	            String query="Insert into students(stud_id,stud_name,stud_dept,stud_cgpa) values (?,?,?,?);";    
	            PreparedStatement st=con.prepareStatement(query);    
	            st.setString(1, stud_id);    
	            st.setString(2, stud_name);    
	            st.setString(3,stud_dept);    
	            st.setString(4, stud_cgpa);    
	             
	            count=st.executeUpdate();    
	                
	            if(count==1)    
	            {    
	            	RequestDispatcher rd=request.getRequestDispatcher("Addstudprint.jsp");
	        		rd.forward(request, response);
	            }    
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
