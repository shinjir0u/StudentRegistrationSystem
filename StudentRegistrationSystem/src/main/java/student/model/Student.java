package student.model;

import java.util.HashMap;

public class Student extends Person {
	private String cardId;
	private String rollNo;
	private String major;
	private String currentYear;
	private String academicYear;
	private String photo;
	private Guardian guardian;
	private Matriculation matriculation;
	private HashMap<String, String> academicRecord;
	
	public HashMap<String, String> getAcademicRecord() {
		return academicRecord;
	}
	public void setAcademicRecord(HashMap<String, String> academicRecord) {
		this.academicRecord = academicRecord;
	}
	public Matriculation getMatriculation() {
		return matriculation;
	}
	public void setMatriculation(Matriculation matriculation) {
		this.matriculation = matriculation;
	}
	public Guardian getGuardian() {
		return guardian;
	}
	public void setGuardian(Guardian guardian) {
		this.guardian = guardian;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getCurrentYear() {
		return currentYear;
	}
	public void setCurrentYear(String currentYear) {
		this.currentYear = currentYear;
	}
	public String getAcademicYear() {
		return academicYear;
	}
	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
}
