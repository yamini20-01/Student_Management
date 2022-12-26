package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.StudentDao.StudentDao;
import com.login.dao.LoginDao;

public class LoginStudent extends HttpServlet {
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass"); 
		
			LOGINDAO dao=new LOGINDAO();
			
			try {
				if(dao.check(uname,pass))
				{ 
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("Home.jsp");
				}
				else {
					response.sendRedirect("login.jsp");
				}
			} catch (IOException e)
			{
				e.printStackTrace();
			}
	}
}
