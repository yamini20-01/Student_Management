package com.Student;

import java.io.IOException;
import java.sql.SQLException;

import com.StudentDao.StudentDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class getStudent extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String stud_id=request.getParameter("stud_id");
		StudentDao dao=new StudentDao();
		Student s1;
		try {
			s1 = dao.getStudent(stud_id);
			request.setAttribute("student", s1);
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("showStudent.jsp");
		rd.forward(request, response);
	}
}
 