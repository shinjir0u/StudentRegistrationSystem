package student.controller;

import java.util.HashMap;

import com.opensymphony.xwork2.ActionSupport;

import student.dao.StudentDAO;
import student.model.Student;

public class AdminCheckAction extends ActionSupport{
	private HashMap<Integer, Student> students;
	
	@Override
	public String execute() throws Exception {
		StudentDAO studentDAO = new StudentDAO();
		students = studentDAO.loadFile();
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
	public String showStudentDetails() {
		return SUCCESS;
	}
	
	public HashMap<Integer, Student> getStudents() {
		return students;
	}

	public void setStudents(HashMap<Integer, Student> students) {
		this.students = students;
	}
}
