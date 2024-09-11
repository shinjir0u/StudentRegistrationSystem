package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import student.dao.StudentDAO;
import student.model.DateOfBirth;
import student.model.Matriculation;
import student.model.Nrc;
import student.model.Student;

public class StudentRetrieveAction extends ActionSupport {
	private StudentDAO studentDAO = new StudentDAO();
	Student student;
	
	public String retrieveStudent() {
		String sql = "SELECT * FROM student_view;";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		try {
			while (resultSet.next()) {
				
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	private Student setStudentValuesFromDatabase(ResultSet resultSet) {
		try {
			Student student = new Student();
			String date = resultSet.getString(3);
			String[] dateOfBirth = date.split("-"); 
			
			String nrc = resultSet.getString(11);
			String[] nrcFirstSplit = nrc.split("/");
			String nrcStateNumber = nrcFirstSplit[0] + "/";
			String[] nrcSecondSplit = nrcFirstSplit[1].split("("); 
			String nrcState = nrcSecondSplit[0];
			String[] nrcThirdSplit = nrcSecondSplit[1].split(")");
			String nrcNationality = "(" + nrcThirdSplit[0] + ")";
			int number = Integer.parseInt(nrcThirdSplit[1]);
			
			student.setId(resultSet.getInt(1));
			student.setName(resultSet.getString(2));
			student.setDateOfBirth(new DateOfBirth(dateOfBirth[2], dateOfBirth[1], dateOfBirth[0]));
			student.setPhoneNumber(resultSet.getString(4));
			student.setEmail(resultSet.getString(5));
			student.setTownship(resultSet.getString(6));
			student.setState(resultSet.getString(7));
			student.setAddress(resultSet.getString(8));
			student.setCardId(resultSet.getString(9));
			student.setPhoto(resultSet.getString(10));
			student.setNrc(new Nrc(nrcStateNumber, nrcState, nrcNationality, number));
			student.setGender(resultSet.getString(12));
			student.setNationality(resultSet.getString(13));
			student.setReligion(resultSet.getString(14));
			student.setMajor(resultSet.getString(15));
			student.setType(resultSet.getString(16));
			student.setMatriculation(new Matriculation());
			//student.setGuardian(setGuardianValuesFromRequest());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return student;
	}
	
	//fix and work on it
	private Matriculation setMatriculationFromDatabase() {
		Matriculation matriculation = new Matriculation();
		String sql = "SELECT * FROM matriculation_marks_view WHERE student_id = " + student.getId() + ";";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		return matriculation;
		
		
	}
}
