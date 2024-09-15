package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import data.MatriculationSubject;
import student.dao.StudentDAO;
import student.model.*;

public class StudentRetrieveAction extends ActionSupport {
	private StudentDAO studentDAO = new StudentDAO();
	HashMap<Integer, Student> students;
	Student student = new Student();
	
	@Override
	public String execute() throws Exception {
		System.out.println("hello retrieve");
		return SUCCESS;
	}

	public String retrieveStudentFromDatabase() {
		setStudentValuesFromDatabase();
		return SUCCESS;
	}
	
	public String retrieveStudentFromHashMap() {
		students = studentDAO.loadFile();
		return SUCCESS;
	}

	private void setStudentValuesFromDatabase() {
		String sql = "SELECT * FROM student_view WHERE student_id=3;";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				String[] dateOfBirth = getDateOfBirthFromDatabase(resultSet.getString("date_of_birth"));
				String[] nrc = getNrcFromDatabase(resultSet.getString("nrc"));
				
				student.setId(resultSet.getInt("student_id"));
				student.setName(resultSet.getString("student_name"));
				student.setDateOfBirth(new DateOfBirth(dateOfBirth[2], dateOfBirth[1], dateOfBirth[0]));
				student.setPhoneNumber(resultSet.getString("phone_number"));
				student.setEmail(resultSet.getString("email"));
				student.setTownship(resultSet.getString("township_name"));
				student.setState(resultSet.getString("state_name"));
				student.setAddress(resultSet.getString("address"));
				student.setCardId(resultSet.getString("student_card_id"));
				student.setPhoto(resultSet.getString("photo"));
				student.setNrc(new Nrc(nrc[0], nrc[1], nrc[2], Integer.parseInt(nrc[3])));
				student.setGender(resultSet.getString("gender_name"));
				student.setNationality(resultSet.getString("nationality_name"));
				student.setReligion(resultSet.getString("religion_name"));
				student.setMajor(resultSet.getString("major_name"));
				student.setType(resultSet.getString("student_type_name"));
				student.setMatriculation(setMatriculationFromDatabase());
				student.setGuardian(setGuardianFromDatabase());
				student.setAcademicRecords(getAcademicRecordsFromDatabase());
			}
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	private Matriculation setMatriculationFromDatabase() {
		Matriculation matriculation = new Matriculation();
		List<MatriculationSubject> list = new ArrayList<>();
		String sql = "SELECT s.student_id, m.subject_id, m.subject_name, m.mark, s.matriculation_place, s.matriculation_roll_no, s.matriculation_year "
				+ "FROM student_view s, matriculation_marks_view m WHERE s.student_id=m.student_id AND s.student_id=" + student.getId() + ";";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				list.add(new MatriculationSubject(
						resultSet.getInt("subject_id"), 
						resultSet.getString("subject_name"), 
						resultSet.getInt("mark")));
				matriculation.setPlace(resultSet.getString("matriculation_place"));
				matriculation.setYear(resultSet.getInt("matriculation_year"));
				matriculation.setRollNo(resultSet.getString("matriculation_roll_no"));
			}
		matriculation.setSubjects(list);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		return matriculation;
	}
	
	private Guardian setGuardianFromDatabase() {
		Guardian guardian = new Guardian();
		String sql = "SELECT * FROM relative_view WHERE student_id=" + student.getId() + ";";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				String[] dateOfBirth = getDateOfBirthFromDatabase(resultSet.getString(4));
				String[] nrc = getNrcFromDatabase(resultSet.getString("nrc"));
				guardian.setId(resultSet.getInt("relative_id"));
				guardian.setName(resultSet.getString("relative_name"));
				guardian.setDateOfBirth(new DateOfBirth(dateOfBirth[2],	dateOfBirth[1],	dateOfBirth[0]));
				guardian.setPhoneNumber(resultSet.getString("phone_number"));
				guardian.setEmail(resultSet.getString("email"));
				guardian.setTownship(resultSet.getString("township_name"));
				guardian.setState(resultSet.getString("state_name"));
				guardian.setAddress(resultSet.getString("address"));
				guardian.setNrc(new Nrc(nrc[0], nrc[1], nrc[2], Integer.parseInt(nrc[3])));
				guardian.setNationality(resultSet.getString("nationality_name"));
				guardian.setReligion(resultSet.getString("religion_name"));
				guardian.setType(resultSet.getString("relative_type"));
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return guardian;
	}
	
	private List<AcademicRecord> getAcademicRecordsFromDatabase() {
		List<AcademicRecord> academicRecords = new ArrayList<>();
		String sql = "SELECT * FROM academic_record_view WHERE student_id=" + student.getId() + ";";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				academicRecords.add(new AcademicRecord(resultSet.getString("academic_year"), resultSet.getString("roll_no")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		return academicRecords;
	}
	
	private String[] getDateOfBirthFromDatabase(String databaseDate) {
		return databaseDate.split("-"); 
	}
	
	private String[] getNrcFromDatabase(String databaseNrc) {
		return databaseNrc.split("[\\/()]");
	}
	
	public HashMap<Integer, Student> getStudents() {
		return students;
	}

	public void setStudents(HashMap<Integer, Student> students) {
		this.students = students;
	}
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
}
