package student.model;

import java.util.List;
import data.MatriculationSubject;

public class Matriculation {
	private String place;
	private String rollNo;
	private int year;
	private List<MatriculationSubject> subjects;

	public Matriculation() {
		super();
	}

	public Matriculation(String place, String rollNo, int year) {
		super();
		this.place = place;
		this.rollNo = rollNo;
		this.year = year;
	}
	
	public List<MatriculationSubject> getSubjects() {
		return subjects;
	}
	public void setSubjects(List<MatriculationSubject> subjects) {
		this.subjects = subjects;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
}
