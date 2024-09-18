package student.model;

import java.io.Serializable;
import java.util.List;
import data.MatriculationSubjectData;

public class Matriculation implements Serializable {
	private String place;
	private String rollNo;
	private String year;
	private List<MatriculationSubject> subjects;

	public Matriculation() {
		super();
	}

	public Matriculation(String place, String rollNo, String year) {
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
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
}
