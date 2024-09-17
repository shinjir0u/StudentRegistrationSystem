package student.controller;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import data.*;
import student.dao.StudentDAO;
import student.model.*;
import student.model.MatriculationSubject;

public class StudentAddAction extends ActionSupport implements ServletRequestAware {
	private HashMap<Integer, Student> students;
	private HttpServletRequest request;
	private StudentDAO studentDAO = new StudentDAO();
	private HashMap<Integer, Data> data;
	private Student student;

	public String execute() {
		data = studentDAO.setDataValues();
		return SUCCESS;
	}
	
	public String addStudentToHashMap() {
		students = studentDAO.loadFile();
 		students.put(studentDAO.generateHashKey(students), setStudentValuesFromRequest());
		studentDAO.saveFile(students);
		return SUCCESS;
	}
	
	public String addStudentToDatabase() {
		data = studentDAO.setDataValues();	
		Student student = setStudentValuesFromRequest();
		Guardian guardian = student.getGuardian();
		Nrc studentNrc = student.getNrc();
		Nrc guardianNrc = guardian.getNrc();
		DateOfBirth studentDateOfBirth = student.getDateOfBirth();
		DateOfBirth guardianDateOfBirth = guardian.getDateOfBirth();
		Matriculation matriculation = setMatriculationValuesFromRequest();
		List<MatriculationSubject> subjects = matriculation.getSubjects();
		String subject = "";
		for (MatriculationSubject matriculationSubject : subjects) {
			subject = subject + "((SELECT matriculation_id FROM new_matriculation),"
					+ matriculationSubject.getId() + ", " + matriculationSubject.getMark() + "),";
		}
		subject = subject.substring(0, (subject.length()-1)) + "),";
		
		if(student.getType().equals("0")) {
			addFieldError("studentType", "Invalid Type");
			return INPUT;
		}
		if(student.getName().isBlank()) {
			addFieldError("studentName", "Invalid Name");
			return INPUT;
		}
		if(student.getCardId().isBlank()) {
			addFieldError("studentCardId", "Invalid Card ID");
			return INPUT;
		}
		if(student.getRollNo().isBlank()) {
			addFieldError("studentRollNo", "Invalid Roll No");
			return INPUT;
		}
		if(student.getMajor().equals("0")) {
			addFieldError("studentMajor", "Invalid Major");
			return INPUT;
		}
		if(student.getCurrentYear().equals("0")) {
			addFieldError("studentCurrentYear", "Invalid Current Year");
			return INPUT;
		}
		if(student.getAcademicYear().equals("0")) {
			addFieldError("studentAcademicYear", "Invalid Academic Year");
			return INPUT;
		}
		if(studentNrc.getStateNumber().equals("0")) {
			addFieldError("studentNrcStateNumber", "Invalid NRC State Number");
			return INPUT;
		}
		if(studentNrc.getStateNumber().equals("0")) {
			addFieldError("studentNrcTownship", "Invalid NRC Township");
			return INPUT;
		}
		if(studentNrc.getNationality().equals("0")) {
			addFieldError("studentNrcNationality", "Invalid NRC Nationality");
			return INPUT;
		}
		if(studentNrc.getNumber().isBlank()) {
			addFieldError("studentNrcNumber", "Invalid NRC Number");
			return INPUT;
		}
		if(student.getState().equals("0")) {
			addFieldError("studentState", "Invalid State");
			return INPUT;
		}
		if(student.getTownship().equals("0")) {
			addFieldError("studentTownship", "Invalid Township");
			return INPUT;
		}
		if(student.getAddress().isBlank()) {
			addFieldError("studentAddress", "Invalid Address");
			return INPUT;
		}
		if(student.getGender().equals("0")) {
			addFieldError("studentGender", "Invalid Gender");
			return INPUT;
		}
		if(student.getPhoneNumber().isBlank()) {
			addFieldError("studentPhoneNumber", "Invalid Phone Number");
			return INPUT;
		}
		if(student.getEmail().isBlank()) {
			addFieldError("studentEmail", "Invalid Email");
			return INPUT;
		}
		if(student.getDateOfBirth().getYear().equals("0")) {
			addFieldError("studentDateOfBirthYear", "Invalid Birth Year");
			return INPUT;
		}
		if(student.getDateOfBirth().getMonth().equals("0")) {
			addFieldError("studentDateOfBirthMonth", "Invalid Birth Month");
			return INPUT;
		}
		if(student.getDateOfBirth().getDay().equals("0")) {
			addFieldError("studentDateOfBirthDay", "Invalid Birth Day");
			return INPUT;
		}
		if(student.getReligion().equals("0")) {
			addFieldError("studentReligion", "Invalid Religion");
			return INPUT;
		}
		if(student.getNationality().equals("0")) {
			addFieldError("studentNationality", "Invalid Nationality");
			return INPUT;
		}
		if(guardian.getName().isBlank()) {
			addFieldError("guardianName", "Invalid Name");
			return INPUT;
		}
		if(guardian.getName().equals("0")) {
			addFieldError("guardianType", "Invalid Type");
			return INPUT;
		}
		if(guardian.getPhoneNumber().isBlank()) {
			addFieldError("guaridanPhoneNumber", "Invalid Phone Number");
			return INPUT;
		}
		if(guardian.getEmail().isBlank()) {
			addFieldError("guardianEmail", "Invalid Email");
			return INPUT;
		}
		if(guardianNrc.getStateNumber().equals("0")) {
			addFieldError("guardianNrcStateNumber", "Invalid NRC State Number");
			return INPUT;
		}
		if(guardianNrc.getTownship().equals("0")) {
			addFieldError("guardianNrcTownship", "Invalid NRC Township");
			return INPUT;
		}
		if(guardianNrc.getNationality().equals("0")) {
			addFieldError("guardianNrcNationality", "Invalid NRC Nationality");
			return INPUT;
		}
		if(guardian.getNrc().getNumber().isBlank()) {
			addFieldError("guardianNrcNumber", "Invalid NRC Number");
			return INPUT;
		}
		if(guardian.getState().equals("0")) {
			addFieldError("guardianState", "Invalid State");
			return INPUT;
		}
		if(guardian.getTownship().equals("0")) {
			addFieldError("guardianTownship", "Invalid Township");
			return INPUT;
		}
		if(guardian.getAddress().isBlank()) {
			addFieldError("guradianAddress", "Invalid Address");
			return INPUT;
		}
		if(studentDateOfBirth.getYear().equals("0")) {
			addFieldError("guardianDateOfBirthYear", "Invalid Birth Year");
			return INPUT;
		}
		if(studentDateOfBirth.getMonth().equals("0")) {
			addFieldError("guardianDateOfBirthMonth", "Invalid Birth Month");
			return INPUT;
		}
		if(studentDateOfBirth.getDay().equals("0")) {
			addFieldError("guardianDateOfBirthDay", "Invalid Birth Day");
			return INPUT;
		}
		if(student.getReligion().equals("0")) {
			addFieldError("guardianReligion", "Invalid Township");
			return INPUT;
		}
		if(student.getNationality().equals("0")) {
			addFieldError("guardianNationality", "Invalid Nationality");
			return INPUT;
		}
		if(student.getMatriculation().getPlace().isBlank()) {
			addFieldError("matriculationPlace", "Invalid Place");
			return INPUT;
		}
		if(student.getMatriculation().getRollNo().isBlank()) {
			addFieldError("matriculationRollNo", "Invalid Roll No");
			return INPUT;
		}
		if(request.getParameter("matriculationYear").isBlank()) {
			addFieldError("matriculationYear", "Invalid Year");
			return INPUT;
		}
		if(request.getParameter("matriculationSubject1").isBlank()) {
			addFieldError("matriculationSubject1", "Invalid Mark");
			return INPUT;
		}
		if(request.getParameter("matriculationSubject2").isBlank()) {
			addFieldError("matriculationSubject2", "Invalid Mark");
			return INPUT;
		}if(request.getParameter("matriculationSubject3").isBlank()) {
			addFieldError("matriculationSubject3", "Invalid Mark");
			return INPUT;
		}
		if(request.getParameter("matriculationSubject4").isBlank()) {
			addFieldError("matriculationSubject4", "Invalid Mark");
			return INPUT;
		}
		if(request.getParameter("matriculationSubject5").isBlank()) {
			addFieldError("matriculationSubject5", "Invalid Mark");
			return INPUT;
		}
		if(request.getParameter("matriculationSubject6").isBlank()) {
			addFieldError("matriculationSubject6", "Invalid Mark");
			return INPUT;
		}
		if(String.valueOf(student.getMatriculation().getSubjects().get(5).getId()).equals("0")) {
			addFieldError("subject6", "Invalid Subject");
			return INPUT;
		}
		
		String sql = "WITH new_nrc AS ("
					+ "  INSERT INTO nrc (state, nationality, number)  "
					+ "  VALUES ( " 
					+ "" + studentNrc.getTownship() + ", " 
					+ "" + studentNrc.getNationality() + ", " 
					+ "'" + studentNrc.getNumber() + "' "
					+ ") RETURNING nrc_id ), "
				+ "  new_student AS ("
					+ "	 INSERT INTO students (nrc, gender, nationality, religion, township, major, student_type,"
					+ "                        student_name, date_of_birth, phone_number, email, address, "
					+ "                        student_card_id, photo) VALUES "
					+ "                        ((SELECT nrc_id FROM new_nrc),"
					+ "" + student.getGender() + ", "
					+ "" + student.getNationality() + ", "
					+ "" + student.getReligion() + ", "
					+ "" + student.getTownship() + ", "
					+ "" + student.getMajor() + ", "
					+ "" + student.getType() + ", "
					+ "'" + student.getName() + "', "
					+ "'" + studentDateOfBirth.getYear() + "-" + studentDateOfBirth.getMonth() + "-" + studentDateOfBirth.getDay() + "', "
					+ "'" + student.getPhoneNumber() + "', "
					+ "'" + student.getEmail() + "', "
					+ "'" + student.getAddress() + "', "
					+ "'" + student.getCardId() + "', "
					+ "'" + student.getPhoto() + "') RETURNING student_id),"
				+ " new_matriculation AS ("
					+ " INSERT INTO matriculation (student_id, place, roll_no, year) VALUES"
					+ "((SELECT student_id FROM new_student),"
					+ "'" + matriculation.getPlace() + "', "
					+ "'" + matriculation.getRollNo() + "', "
					+ matriculation.getYear() + ") RETURNING matriculation_id),"
				+ " new_matriculation_marks AS ("
					+ " INSERT INTO matriculation_marks(matriculation_id, subject_id, mark) VALUES "
					+ subject
				+ " guardian_nrc AS ("
					+ " INSERT INTO nrc (state, nationality, number)"
					+ " VALUES ("
					+ "" + guardianNrc.getTownship() + ", "
					+ "" + guardianNrc.getNationality() + ", "
					+ "'" + guardianNrc.getNumber() + "' "
					+ ") RETURNING nrc_id ),"
				+ "	new_relative AS ( "
					+ " INSERT INTO relatives (nrc, nationality, religion, township, "
					+ "							student_id, relative_name, phone_number, email,"
					+ "							address, date_of_birth) "
					+ " VALUES ("
					+ " (SELECT nrc_id FROM guardian_nrc), "
					+ "" + guardian.getNationality() + ", "
					+ "" + guardian.getReligion() + ", "
					+ "" + guardian.getTownship() + ", "
					+ " (SELECT student_id FROM new_student), "
					+ "'" + guardian.getName() + "', "
					+ "'" + guardian.getPhoneNumber() + "', "
					+ "'" + guardian.getEmail() + "', "
					+ "'" + guardian.getAddress() + "', "
					+ "'" + guardianDateOfBirth.getYear() + "-" + guardianDateOfBirth.getMonth() + "-" + guardianDateOfBirth.getDay() 
					+ "') RETURNING relative_id)"
				+ " INSERT INTO type_of_relation (relative_id, relative_type_id) VALUES ("
					+ "(SELECT relative_id FROM new_relative),"
					+ "" + guardian.getType() + ");";
		studentDAO.addStudentToDatabase(sql);
		return SUCCESS;
	}
	
	public String addReturningStudentDataToDatabase() {
		Student student = setStudentValuesFromRequest();
		Guardian guardian = student.getGuardian();
		Nrc guardianNrc = guardian.getNrc();
		DateOfBirth studentDateOfBirth = student.getDateOfBirth();
		DateOfBirth guardianDateOfBirth = guardian.getDateOfBirth();

		
		String sql = "WITH new_student AS ("
					+ " UPDATE students SET "
					+ "township = " + new Township().getIdByValue(student.getTownship()) + ", "
					+ "address = '" + student.getAddress() + "', "
					+ "phone_number = '" + student.getPhoneNumber() + "',"
					+ "email = '" + student.getEmail() + "'"
					+ "WHERE student_card_id = '" + student.getCardId() 
					+"' RETURNING student_id),"
				+ "	new_relative AS ( "
					+ " UPDATE relatives SET "
					+ " relative_name = '" + guardian.getName() + "', "
					+ " phone_number = '" + guardian.getPhoneNumber() + "', "
					+ " email = '" + guardian.getEmail() + "', "
					+ " township = " + new Township().getIdByValue(guardian.getTownship()) + ", "
					+ " address = '" + guardian.getAddress() + "', "
					+ " nationality = " + new Nationality().getIdByValue(guardian.getNationality()) + ", "
					+ " religion = " + new Religion().getIdByValue(guardian.getReligion()) + ", "
					+ " date_of_birth = '" + guardianDateOfBirth.getYear() + "-" + guardianDateOfBirth.getMonth() + "-" + guardianDateOfBirth.getDay() + "' " 
					+ " WHERE student_id = (SELECT student_id FROM new_student)"
					+ " RETURNING nrc),"
				+ " guardian_nrc AS ("
					+ " UPDATE nrc SET"
					+ " state = " + new NrcState().getIdByValue(guardianNrc.getTownship()) + ", "
					+ " nationality = " + new NrcNationality().getIdByValue(guardianNrc.getNationality()) + ", "
					+ " number = '" + guardianNrc.getNumber() + "'"
					+ " WHERE nrc_id = (SELECT nrc FROM new_relative)"
					+ ")"
				+ " INSERT INTO academic_record VALUES ("
				+ " (SELECT student_id FROM new_student), "
				+ new AcademicYear().getIdByValue(student.getAcademicYear()) + ", "
				+ "'" + student.getRollNo() + "' );";
		studentDAO.addStudentToDatabase(sql);		
		return SUCCESS;
	}
	
	private Student setStudentValuesFromRequest() {
		Student student = new Student();
		student.setCardId(request.getParameter("studentCardId"));
		student.setName(request.getParameter("studentName"));
		student.setRollNo(request.getParameter("studentRollNo"));
		student.setMajor(request.getParameter("studentMajor"));
		student.setCurrentYear(request.getParameter("studentCurrentYear"));
		student.setAcademicYear(request.getParameter("studentAcademicYear"));
		student.setNrc(new Nrc(
				request.getParameter("studentNrcStateNumber"),
				request.getParameter("studentNrcTownship"),
				request.getParameter("studentNrcNationality"),
				request.getParameter("studentNrcNumber"))
				);
		student.setTownship(request.getParameter("studentTownship"));
		student.setState(request.getParameter("studentState"));
		student.setAddress(request.getParameter("studentAddress"));
		student.setGender(request.getParameter("studentGender"));
		student.setPhoneNumber(request.getParameter("studentPhoneNumber"));
		student.setEmail(request.getParameter("studentEmail"));
		student.setDateOfBirth(new DateOfBirth(
				request.getParameter("studentDateOfBirthDay"),
				request.getParameter("studentDateOfBirthMonth"),
				request.getParameter("studentDateOfBirthYear")
				));
		student.setReligion(request.getParameter("studentReligion"));
		student.setNationality(request.getParameter("studentNationality"));
		student.setGuardian(setGuardianValuesFromRequest());
		student.setMatriculation(setMatriculationValuesFromRequest());
		student.setType(request.getParameter("studentType"));
		return student;
	}
	
	private Guardian setGuardianValuesFromRequest() {
		Guardian guardian = new Guardian();
		guardian.setName(request.getParameter("guardianName"));
		guardian.setType(request.getParameter("guardianType"));
		guardian.setPhoneNumber(request.getParameter("guardianPhoneNumber"));
		guardian.setEmail(request.getParameter("guardianEmail"));
		guardian.setNrc(new Nrc(
				request.getParameter("guardianNrcStateNumber"), 
				request.getParameter("guardianNrcTownship"), 
				request.getParameter("guardianNrcNationality"), 
				request.getParameter("guardianNrcNumber")
				));
		guardian.setTownship(request.getParameter("guardianTownship"));
		guardian.setState(request.getParameter("guardianState"));
		guardian.setAddress(request.getParameter("guardianAddress"));
		guardian.setDateOfBirth(new DateOfBirth(
				request.getParameter("guardianDateOfBirthDay"),
				request.getParameter("guardianDateOfBirthMonth"),
				request.getParameter("guardianDateOfBirthYear")
				));
		guardian.setReligion(request.getParameter("guardianReligion"));
		guardian.setNationality(request.getParameter("guardianNationality"));
		return guardian;
	}
	
	private Matriculation setMatriculationValuesFromRequest() {
		Matriculation matriculation = new Matriculation();
		List<MatriculationSubject> subjects = new ArrayList<>();
		String subject6 = request.getParameter("subject6");
		MatriculationSubject matriculationSubject = new MatriculationSubject();
		
		matriculation.setPlace(request.getParameter("matriculationPlace"));
		matriculation.setRollNo(request.getParameter("matriculationRollNo"));
		matriculation.setYear(request.getParameter("matriculationYear"));
		subjects.add(new MatriculationSubject("1", "Myanmar", request.getParameter("matriculationSubject1")));
		subjects.add(new MatriculationSubject("2", "English", request.getParameter("matriculationSubject2")));
		subjects.add(new MatriculationSubject("3", "Mathematics", request.getParameter("matriculationSubject3")));
		subjects.add(new MatriculationSubject("4", "Chemistry", request.getParameter("matriculationSubject4")));
		subjects.add(new MatriculationSubject("5", "Physics", request.getParameter("matriculationSubject5")));
		subjects.add(new MatriculationSubject(subject6, new MatriculationSubjectData().getValueById(subject6), request.getParameter("matriculationSubject6")));
		matriculation.setSubjects(subjects);
		return matriculation;
	}
	
	public void setStudents(HashMap<Integer, Student> students) {
		this.students = students;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
	public HashMap<Integer, Student> getStudents() {
		return students;
	}

	public HashMap<Integer, Data> getData() {
		return data;
	}

	public void setData(HashMap<Integer, Data> data) {
		this.data = data;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
}
