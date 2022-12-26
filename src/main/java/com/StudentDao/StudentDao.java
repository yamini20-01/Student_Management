package com.StudentDao;

import java.sql.*;
import com.Student.Student;

public class StudentDao
{
	public Student getStudent(String stud_id) throws SQLException {
		Student s=new Student();
	
		String query="select * from students where stud_id=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students_management", "root","");
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1,stud_id);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				s.setStud_id(rs.getString("stud_id"));
				s.setStud_name(rs.getString("stud_name"));
				s.setStud_dept(rs.getString("stud_dept"));
				s.setStud_cgpa(rs.getInt("stud_cgpa"));
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return s;
	}
}
