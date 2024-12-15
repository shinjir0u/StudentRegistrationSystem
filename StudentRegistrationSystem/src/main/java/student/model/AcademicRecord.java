package student.model;

import java.io.Serializable;

public class AcademicRecord implements Serializable {
	private String academicYear;
	private String rollNo;
	
	public AcademicRecord(String academic_year, String roll_no) {
		super();
		this.academicYear = academic_year;
		this.rollNo = roll_no;
	}
	public String getAcademicYear() {
		return academicYear;
	}
	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
}
