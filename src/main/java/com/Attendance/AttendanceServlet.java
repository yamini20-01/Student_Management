package com.Attendance;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.AttendanceDao.AttendanceDao;
import com.Student.Student;
import com.StudentDao.StudentDao;

public class AttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String stud_id=request.getParameter("stud_id");
		AttendanceDao dao=new AttendanceDao();
		Attendance a1;
		try {
			a1 = dao.AttendanceServlet(stud_id);
			request.setAttribute("attendance", a1);
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("showAttendance.jsp");
		rd.forward(request, response);
	}

}
