package com.Student;

public class Student {
String stud_id;
String stud_name;
String stud_dept;	
int stud_cgpa;
public String getStud_id() {
	return stud_id;
}
public void setStud_id(String stud_id) {
	this.stud_id = stud_id;
}
public String getStud_name() {
	return stud_name;
}
public void setStud_name(String stud_name) {
	this.stud_name = stud_name;
}
public String getStud_dept() {
	return stud_dept;
}
public void setStud_dept(String stud_dept) {
	this.stud_dept = stud_dept;
}
public int getStud_cgpa() {
	return stud_cgpa;
}
public void setStud_cgpa(int stud_cgpa) {
	this.stud_cgpa = stud_cgpa;
}
@Override
public String toString() {
	return "Student [stud_id=" + stud_id + ", stud_name=" + stud_name + ", stud_dept=" + stud_dept + ", stud_cgpa="
			+ stud_cgpa + "]";
}
}
