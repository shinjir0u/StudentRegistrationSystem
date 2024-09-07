package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import student.dao.StudentDAO;
import student.model.*;

public class StudentAction extends ActionSupport implements ServletRequestAware {
	private HashMap<Integer, Student> students;
	private HttpServletRequest request;
	private StudentDAO studentDAO = new StudentDAO();

	public String addStudentToHashmap() {
		students = studentDAO.loadFile();
		Guardian guardian = setGuardianValues();
 		students.put(studentDAO.generateHashKey(students), setStudentValuesFromRequest());
		studentDAO.saveFile(students);
		return SUCCESS;
	}
	
	public String addStudentToDatabase() {
		Student student = setStudentValuesFromRequest();
		Guardian guardian = student.getGuardian();
		Nrc studentNrc = student.getNrc();
		Nrc guardianNrc = guardian.getNrc();
		DateOfBirth studentDateOfBirth = student.getDateOfBirth();
		DateOfBirth guardianDateOfBirth = guardian.getDateOfBirth();
		String sql = "WITH new_nrc AS ("
				+ "  INSERT INTO nrc (state_number, state, nationality, nrc_number)  "
				+ "  VALUES ( " 
				+ studentNrc.getStateNumber()+ ", "
				+ studentNrc.getTownship() + ", " 
				+ studentNrc.getNationality() + ", " 
				+ studentNrc.getNationality() 
				+ ") RETURNING nrc_id ), "
				+ "  new_student AS ("
				+ "	 INSERT INTO students (nrc, gender, nationality, religion, township, major, student_type,"
				+ "                        student_name, date_of_birth, phone_number, email, address, "
				+ "                        student_card_id, photo) VALUES "
				+ "                        ((SELECT nrc_id FROM new_nrc),"
				+ student.getGender() + ", "
				+ student.getNationality() + ", "
				+ student.getReligion() + ", "
				+ student.getTownship() + ", "
				+ student.getMajor() + ", "
				+ student.getType() + ", "
				+ student.getName() + ", "
				+ studentDateOfBirth.getYear() + "-" + studentDateOfBirth.getMonth() + "-" + studentDateOfBirth.getDay() + ", "
				+ student.getPhoneNumber() + ", "
				+ student.getEmail() + ", "
				+ student.getAddress() + ", "
				+ student.getCardId() + ", "
				+ student.getPhoto() + ") RETURNING student_id),"
				+ "guardian_nrc AS ("
				+ "INSERT INTO nrc (state_number, state, nationality)"
				+ "VALUES ("
				+ guardianNrc.getStateNumber() + ", "
				+ guardianNrc.getTownship() + ", "
				+ guardianNrc.getNationality() + ", "
				+ guardianNrc.getNumber()
				+ ") RETURING nrc_id )"
				+ "	 INSERT INTO relatives (nrc, gender, nationaltiy, religion, township, "
				+ "							student_id, relative_name, phone_number, email,"
				+ "							address, date_of_birth) "
				+ "VALUES ("
				+ "(SELECT nrc_id FROM guardian_nrc), "
				+ guardian.getGender() + ", "
				+ guardian.getNationality() + ", "
				+ guardian.getReligion() + ", "
				+ guardian.getTownship() + ", "
				+ "(SELECT student_id FROM new_student), "
				+ guardian.getName() + ", "
				+ guardian.getPhoneNumber() + ", "
				+ guardian.getEmail() + ", "
				+ guardian.getAddress() + ", "
				+ guardianDateOfBirth.getYear() + "-" + guardianDateOfBirth.getMonth() + "-" + guardianDateOfBirth.getDay() 
				+ ");";
		studentDAO.addStudentToDatabase(sql);
		return SUCCESS;
	}
	
	public String retrieveStudent() {
		Student student = new Student();
		String sql = "";
		ResultSet resultSet = studentDAO.retriveStudentFromDatabase(sql);
		try {
			while (resultSet.next()) {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	private Student setStudentValuesFromRequest() {
		Student student = new Student();
		student.setCardId(Integer.parseInt(request.getParameter("studentCardId")));
		student.setName(request.getParameter("studentName"));
		student.setRollNo(request.getParameter("studentRollNo"));
		student.setMajor(request.getParameter("studentMajor"));
		student.setCurrentYear(request.getParameter("studentCurrentYear"));
		student.setAcademicYear(request.getParameter("studentAcademicYear"));
		student.setNrc(new Nrc(
				request.getParameter("studentNrcStateNumber"),
				request.getParameter("studentNrcTownship"),
				request.getParameter("studentNrcNationality"),
				Integer.parseInt(request.getParameter("studentNrcNumber")))
				);
		student.setTownship(request.getParameter("studentTownship"));
		student.setAddress(request.getParameter("studentAddress"));
		student.setGender(request.getParameter("studentGender"));
		student.setPhoneNumber(Integer.parseInt(request.getParameter("studentPhoneNumber")));
		student.setEmail(request.getParameter("studentEmail"));
		student.setDateOfBirth(new DateOfBirth(
				request.getParameter("studentDateOfBirthDay"),
				request.getParameter("studentDateOfBirthMonth"),
				request.getParameter("studentDateOfBirthYear")
				));
		student.setReligion(request.getParameter("studentReligion"));
		student.setNationality(request.getParameter("studentNationality"));
		student.setGuardian(setGuardianValues());
		return student;
	}
	
	private Guardian setGuardianValues() {
		Guardian guardian = new Guardian();
		guardian.setName(request.getParameter("guardianName"));
		guardian.setType(request.getParameter("guardianType"));
		guardian.setPhoneNumber(Integer.parseInt(request.getParameter("guardianPhoneNumber")));
		guardian.setEmail(request.getParameter("guardianEmail"));
		guardian.setNrc(new Nrc(
				request.getParameter("guardianNrcStateNumber"), 
				request.getParameter("guardianNrcTownship"), 
				request.getParameter("guardianNrcNationality"), 
				Integer.parseInt(request.getParameter("guardianNrcNumber"))
				));
		guardian.setTownship(request.getParameter("guardianTownship"));
		guardian.setAddress(request.getParameter("guardianAddress"));
		guardian.setDateOfBirth(new DateOfBirth(
				request.getParameter("guardianDateOfBirthDay"),
				request.getParameter("guardianDateOfBirthMonth"),
				request.getParameter("guardianDateOfBirthYear")
				));
		return guardian;
	}
	
	private Student setStudentValuesFromDatabase(ResultSet resultSet) {
		Student student = new Student();
		student.setName(request.getParameter("studentName"));
		student.setRollNo(request.getParameter("studentRollNo"));
		student.setMajor(request.getParameter("studentMajor"));
		student.setCurrentYear(request.getParameter("studentCurrentYear"));
		student.setAcademicYear(request.getParameter("studentAcademicYear"));
		student.setNrc(new Nrc(
				request.getParameter("studentNrcStateNumber"),
				request.getParameter("studentNrcTownship"),
				request.getParameter("studentNrcNationality"),
				Integer.parseInt(request.getParameter("studentNrcNumber")))
				);
		student.setTownship(request.getParameter("studentTownship"));
		student.setAddress(request.getParameter("studentAddress"));
		student.setGender(request.getParameter("studentGender"));
		student.setPhoneNumber(Integer.parseInt(request.getParameter("studentPhoneNumber")));
		student.setEmail(request.getParameter("studentEmail"));
		student.setDateOfBirth(new DateOfBirth(
				request.getParameter("studentDateOfBirthDay"),
				request.getParameter("studentDateOfBirthMonth"),
				request.getParameter("studentDateOfBirthYear")
				));
		student.setReligion(request.getParameter("studentReligion"));
		student.setNationality(request.getParameter("studentNationality"));
		student.setGuardian(setGuardianValues());
		return student;
	}
	
	public HashMap<Integer, Student> getStudents() {
		return students;
	}

	public void setStudents(HashMap<Integer, Student> students) {
		this.students = students;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
}
