package com.Attendance;

public class Attendance {
	String stud_id;
	String stud_attendance;
	public String getStud_id() {
		return stud_id;
	}
	public void setStud_id(String stud_id) {
		this.stud_id = stud_id;
	}
	public String getStud_attendance() {
		return stud_attendance;
	}
	public void setStud_attendance(String stud_attendance) {
		this.stud_attendance = stud_attendance;
	}
	@Override
	public String toString() {
		return "Attendance [stud_id=" + stud_id + ", stud_attendance=" + stud_attendance + "]";
	}
}
