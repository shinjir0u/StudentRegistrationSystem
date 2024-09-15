package student.controller;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
import data.*;
import student.dao.StudentDAO;
import student.model.*;

public class StudentAddAction extends ActionSupport implements ServletRequestAware {
	private HashMap<Integer, Student> students;
	private HttpServletRequest request;
	private StudentDAO studentDAO = new StudentDAO();
	private HashMap<Integer, HashMap<Integer, String>> data = new HashMap<Integer, HashMap<Integer,String>>();

	public String execute() {
		setDataValues();
		return SUCCESS;
	}
	
	public String addStudentToHashMap() {
		students = studentDAO.loadFile();
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
		Matriculation matriculation = setMatriculationValuesFromRequest();
		List<MatriculationSubject> subjects = matriculation.getSubjects();
		String subject = "";
		for (MatriculationSubject matriculationSubject : subjects) {
			subject = subject + "((SELECT matriculation_id FROM new_matriculation),"
					+ matriculationSubject.getId() + ", " + matriculationSubject.getMark() + "),";
		}
		subject = subject.substring(0, (subject.length()-1)) + "),";
		
		
		String sql = "WITH new_nrc AS ("
				+ "  INSERT INTO nrc (state, nationality, number)  "
				+ "  VALUES ( " 
				+ "" + studentNrc.getTownship() + ", " 
				+ "" + studentNrc.getNationality() + ", " 
				+ studentNrc.getNumber() 
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
				+ student.getPhoneNumber() + ", "
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
				+ "'" + guardianNrc.getTownship() + "', "
				+ "'" + guardianNrc.getNationality() + "', "
				+ guardianNrc.getNumber()
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
				+ guardian.getPhoneNumber() + ", "
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
				Integer.parseInt(request.getParameter("studentNrcNumber")))
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
		//student.setGuardian(setGuardianValuesFromRequest());
		//student.setMatriculation(setMatriculationValuesFromRequest());
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
				Integer.parseInt(request.getParameter("guardianNrcNumber"))
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
		List<MatriculationSubject> subjects = new ArrayList<MatriculationSubject>();
		int subject6 = Integer.parseInt(request.getParameter("subject6"));
		MatriculationSubject matriculationSubject = new MatriculationSubject();
		
		matriculation.setPlace(request.getParameter("matriculationPlace"));
		matriculation.setRollNo(request.getParameter("matriculationRollNo"));
		matriculation.setYear(Integer.parseInt(request.getParameter("matriculationYear")));
		subjects.add(new MatriculationSubject(1, "Myanmar", Integer.parseInt(request.getParameter("matriculationSubject1"))));
		subjects.add(new MatriculationSubject(2, "English", Integer.parseInt(request.getParameter("matriculationSubject2"))));
		subjects.add(new MatriculationSubject(3, "Mathematics", Integer.parseInt(request.getParameter("matriculationSubject3"))));
		subjects.add(new MatriculationSubject(4, "Chemistry", Integer.parseInt(request.getParameter("matriculationSubject4"))));
		subjects.add(new MatriculationSubject(5, "Physics", Integer.parseInt(request.getParameter("matriculationSubject5"))));
		subjects.add(new MatriculationSubject(subject6, matriculationSubject.getValueById(subject6), Integer.parseInt(request.getParameter("matriculationSubject6"))));
		matriculation.setSubjects(subjects);
		return matriculation;
	}
	
	private void setDataValues() {
		data.put(1, new AcademicYear().getDataMap());
		data.put(2, new Gender().getDataMap());
		data.put(3, new Major().getDataMap());
		data.put(4, new MatriculationSubject().getDataMap());
		data.put(5, new Nationality().getDataMap());
		data.put(6, new NrcState().getDataMap());
		data.put(7, new NrcStateNumber().getDataMap());
		data.put(8, new RelativeType().getDataMap());
		data.put(9, new Religion().getDataMap());
		data.put(10, new State().getDataMap());
		data.put(11, new StudentType().getDataMap());
		data.put(12, new Township().getDataMap());
		data.put(13, new NrcNationality().getDataMap());
		data.put(14, new DateOfBirthDay().getDataMap());
		data.put(15, new DateOfBirthMonth().getDataMap());
		data.put(16, new DateOfBirthYear().getDataMap());
		
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

	public HashMap<Integer, HashMap<Integer, String>> getData() {
		return data;
	}

	public void setData(HashMap<Integer, HashMap<Integer, String>> data) {
		this.data = data;
	}
}
