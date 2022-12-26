package com.AttendanceDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Attendance.Attendance;
import com.Student.Student;

public class AttendanceDao {

	public Attendance AttendanceServlet(String stud_id) throws SQLException {
		Attendance a=new Attendance();
		
		String query="select * from attendance where stud_id=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/students_management", "root","");
			//Statement st=con.createStatement();
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1,stud_id);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				a.setStud_id(rs.getString("stud_id"));
				a.setStud_attendance(rs.getString("stud_attendance"));
			}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return a;
	}
	
	
	
	
	
}