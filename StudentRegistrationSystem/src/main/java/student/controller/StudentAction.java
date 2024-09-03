package student.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import student.model.DateOfBirth;
import student.model.Guardian;
import student.model.Nrc;
import student.model.Student;

public class StudentAction extends ActionSupport implements ServletRequestAware {
	private final String filename = "student.ser";
	private HashMap<Integer, Student> students;
	private HttpServletRequest request;

	public String addStudentToHashmap() {
		loadFile();
		Guardian guardian = setGuardianValues();
 		students.put(generateHashKey(), setStudentValues(guardian));
		saveFile();
		return SUCCESS;
	}
	
	private Student setStudentValues(Guardian guardian) {
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
		student.setGuardian(guardian);
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
	
	private void loadFile() {
		try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(filename))) {
			students = (HashMap<Integer, Student>) objectInputStream.readObject();
		} catch (IOException | ClassNotFoundException e) {
			students = new HashMap<Integer, Student>();
		}
	}

	private void saveFile() {
		try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(filename))) {
			objectOutputStream.writeObject(students);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	private int generateHashKey() {
		int i = 1;
		while (students.containsKey(i))
			i++;
		return i;
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
