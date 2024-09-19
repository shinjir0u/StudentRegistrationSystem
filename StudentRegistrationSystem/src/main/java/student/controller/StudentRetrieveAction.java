package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import data.Data;
import student.dao.StudentDAO;
import student.model.*;

public class StudentRetrieveAction extends ActionSupport implements SessionAware, ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4419148324897190958L;

	private StudentDAO studentDAO = new StudentDAO();

	private HashMap<Integer, Student> students;
	private Student student;
	private HttpServletRequest request;
	private HashMap<Integer, Data> data;
	private int orderNumber;
	private Map<String, Object> session;
	
	public String execute() {
		return SUCCESS;
	}
	
	public String retrieveFilteredStudentsFromDatabase() {		
		data = studentDAO.setDataValues();
		String sql = "SELECT * FROM student_view WHERE";
		String filteredStudentCardId = request.getParameter("studentCardId");
		String filteredStudentName = request.getParameter("studentName");
		String filteredMajor = request.getParameter("studentMajor");
		String filteredStudentType = request.getParameter("studentType");
		String filteredCurrentYear = request.getParameter("studentCurrentYear");
		String filteredState = request.getParameter("studentState");
		String filteredTownship = request.getParameter("studentTownship");

		if (!filteredStudentCardId.isBlank())
			sql += " student_card_id LIKE '%" + filteredStudentCardId + "%' AND";
		if (!filteredStudentName.isBlank())
			sql += " student_name LIKE '%" + filteredStudentName + "%' AND";
		if (!filteredMajor.equals("0"))
			sql += " major_name = '" + data.get(3).getValueById(filteredMajor)  + "' AND";
		if (!filteredStudentType.equals("0"))
			sql += " student_type_name = '" + data.get(11).getValueById(filteredStudentType) + "' AND";
		if (!filteredCurrentYear.equals("0"))
			sql += " student_id IN "
					+ "(SELECT a.student_id FROM students s, academic_record a "
					+ "WHERE s.student_id=a.student_id AND "
					+ "a.academic_year_id=(SELECT max(a2.academic_year_id) FROM academic_record a2 WHERE a.student_id=a2.student_id) "
					+ "AND a.roll_no LIKE '" + data.get(18).getValueById(filteredCurrentYear) +".%') AND";
		if (!filteredState.equals("0"))
			sql += " state_name = '" + data.get(10).getValueById(filteredState) + "' AND";
		if (!filteredTownship.equals("0"))
			sql += " township_name = '" + data.get(12).getValueById(filteredTownship) + "'";
		sql += ";";
		sql = sql.replace("ANDOR", "OR");
		sql = sql.replace("AND;", ";");
		sql = sql.replace("WHERE;", ";");
		sql = sql.replace("WHEREOR", "WHERE");
		
		students = new LinkedHashMap<>();
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				student = new Student();
				String[] nrc = getNrcFromDatabase(resultSet.getString("nrc"));
				
				student.setId(resultSet.getInt("student_id"));
				student.setName(resultSet.getString("student_name"));
				student.setDateOfBirth(resultSet.getString("date_of_birth"));
				student.setPhoneNumber(resultSet.getString("phone_number"));
				student.setEmail(resultSet.getString("email"));
				student.setTownship(resultSet.getString("township_name"));
				student.setState(resultSet.getString("state_name"));
				student.setAddress(resultSet.getString("address"));
				student.setCardId(resultSet.getString("student_card_id"));
				student.setPhoto(resultSet.getString("photo"));
				student.setNrc(new Nrc(nrc[0]+"/", nrc[1], "(" + nrc[2] + ")", nrc[3]));
				student.setGender(resultSet.getString("gender_name"));
				student.setNationality(resultSet.getString("nationality_name"));
				student.setReligion(resultSet.getString("religion_name"));
				student.setMajor(resultSet.getString("major_name"));
				student.setType(resultSet.getString("student_type_name"));
				student.setMatriculation(setMatriculationFromDatabase());
				student.setGuardian(setGuardianFromDatabase());
				student.setAcademicRecords(getAcademicRecordsFromDatabase());
				student.setAcademicYear(student.getAcademicRecords().get(student.getAcademicRecords().size() - 1).getAcademicYear());
				
				String currentRollNo = student.getAcademicRecords().get(student.getAcademicRecords().size() - 1).getRollNo();
				student.setCurrentYear(calculateCurrentYearFromRollNo(currentRollNo));
				student.setRollNo(currentRollNo);
				students.put(studentDAO.generateHashKey(students), student);
			}
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		session.put("filteredStudents", students);
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String retrieveFilteredStudentFromDatabase() {
		students= (HashMap<Integer, Student>) session.get("filteredStudents");	
		String orderString = request.getParameter("order");
		orderNumber = (null==orderString || "".equals(orderString)) ? 0 : Integer.parseInt(orderString);
		student = students.get(orderNumber);
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String backToRetrievedStudents() {
		students = (HashMap<Integer, Student>) session.get("filteredStudents");
		return SUCCESS;
	}
	
	public String retrieveStudentFromDatabase() {
		String sql = "SELECT * FROM student_view WHERE student_id = " + session.get("studentId") + ";";
		data = studentDAO.setDataValues();
		setStudentValuesFromDatabase(sql);
		return SUCCESS;
	}
	
	public String retrieveStudentsFromHashMap() {
		students = studentDAO.loadFile();
		return SUCCESS;
	}
	
	public String retrieveStudentFromHashMap() {
		students = studentDAO.loadFile();
		data = studentDAO.setDataValues();
		String orderString = request.getParameter("order");
		orderNumber = (null==orderString || "".equals(orderString)) ? 0 : Integer.parseInt(orderString);
		student = students.get(orderNumber);
		return SUCCESS;
	}

	private void setStudentValuesFromDatabase(String sql) {
		student = new Student();
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		
		try {
			while (resultSet.next()) {
				String[] nrc = getNrcFromDatabase(resultSet.getString("nrc"));
				
				student.setId(resultSet.getInt("student_id"));
				student.setName(resultSet.getString("student_name"));
				student.setDateOfBirth(resultSet.getString("date_of_birth"));
				student.setPhoneNumber(resultSet.getString("phone_number"));
				student.setEmail(resultSet.getString("email"));
				student.setTownship(resultSet.getString("township_name"));
				student.setState(resultSet.getString("state_name"));
				student.setAddress(resultSet.getString("address"));
				student.setCardId(resultSet.getString("student_card_id"));
				student.setPhoto(resultSet.getString("photo"));
				student.setNrc(new Nrc(nrc[0]+"/", nrc[1], "(" + nrc[2] + ")", nrc[3]));
				student.setGender(resultSet.getString("gender_name"));
				student.setNationality(resultSet.getString("nationality_name"));
				student.setReligion(resultSet.getString("religion_name"));
				student.setMajor(resultSet.getString("major_name"));
				student.setType(resultSet.getString("student_type_name"));
				student.setMatriculation(setMatriculationFromDatabase());
				student.setGuardian(setGuardianFromDatabase());
				student.setAcademicRecords(getAcademicRecordsFromDatabase());
				student.setAcademicYear(student.getAcademicRecords().get(student.getAcademicRecords().size() - 1).getAcademicYear());
				
				String currentRollNo = student.getAcademicRecords().get(student.getAcademicRecords().size() - 1).getRollNo();
				student.setCurrentYear(calculateCurrentYearFromRollNo(currentRollNo));
				student.setRollNo(currentRollNo);
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
						resultSet.getString("subject_id"), 
						resultSet.getString("subject_name"), 
						resultSet.getString("mark")));
				matriculation.setPlace(resultSet.getString("matriculation_place"));
				matriculation.setYear(resultSet.getString("matriculation_year"));
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
				String[] nrc = getNrcFromDatabase(resultSet.getString("nrc"));
				
				guardian.setId(resultSet.getInt("relative_id"));
				guardian.setName(resultSet.getString("relative_name"));
				guardian.setDateOfBirth(resultSet.getString("date_of_birth"));
				guardian.setPhoneNumber(resultSet.getString("phone_number"));
				guardian.setEmail(resultSet.getString("email"));
				guardian.setTownship(resultSet.getString("township_name"));
				guardian.setState(resultSet.getString("state_name"));
				guardian.setAddress(resultSet.getString("address"));
				guardian.setNrc(new Nrc(nrc[0] + "/", nrc[1], "(" + nrc[2] + ")", nrc[3]));
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
	
	private String calculateCurrentYearFromRollNo(String currentRollNo) {
		String rollNoCode = currentRollNo.toUpperCase().split("[\\.-]")[0];
		return data.get(17).getValueById(data.get(18).getIdByValue(rollNoCode));
	}
	
	private String[] getNrcFromDatabase(String databaseNrc) {
		return databaseNrc.split("[\\/ ( ) ]");
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

	public void setData(HashMap<Integer, Data> data) {
		this.data = data;
	}

	public HashMap<Integer, Data> getData() {
		return data;
	}
	
	public int getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
}
