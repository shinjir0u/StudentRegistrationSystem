package student.model;

public class AcademicRecord {
	private String academic_year;
	private String roll_no;
	
	public AcademicRecord(String academic_year, String roll_no) {
		super();
		this.academic_year = academic_year;
		this.roll_no = roll_no;
	}
	public String getAcademic_year() {
		return academic_year;
	}
	public void setAcademic_year(String academic_year) {
		this.academic_year = academic_year;
	}
	public String getRoll_no() {
		return roll_no;
	}
	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}
}
