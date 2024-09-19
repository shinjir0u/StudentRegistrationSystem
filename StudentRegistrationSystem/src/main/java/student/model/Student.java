package student.model;

import java.util.List;

public class Student extends Person {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5408290763700851013L;
	private String cardId;
	private String rollNo;
	private String major;
	private String currentYear;
	private String academicYear;
	private String photo;
	private Guardian guardian;
	private Matriculation matriculation;
	private List<AcademicRecord> academicRecords;
	
	
	public List<AcademicRecord> getAcademicRecords() {
		return academicRecords;
	}
	public void setAcademicRecords(List<AcademicRecord> academicRecords) {
		this.academicRecords = academicRecords;
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
