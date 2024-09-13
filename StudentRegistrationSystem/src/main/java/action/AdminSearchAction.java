package action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class AdminSearchAction extends ActionSupport{
	private List<String> majorList;
	private List<String> stuTypeList;
	private List<String> academicYearList;
	private String yourMajor;
	private String yourStuType;
	private String yourAcademicYear;
	
	public AdminSearchAction() {
	}
	public AdminSearchAction(List<String> majorList, List<String> stuTypeList, List<String> academicYearList,
			String yourMajor, String yourStuType, String yourAcademicYear) {
		super();
		this.majorList = majorList;
		this.stuTypeList = stuTypeList;
		this.academicYearList = academicYearList;
		this.yourMajor = yourMajor;
		this.yourStuType = yourStuType;
		this.yourAcademicYear = yourAcademicYear;
	}

	public String display() throws Exception {
		this.majorList=new ArrayList<String>();
		this.majorList.add("Architecture");
		this.majorList.add("Chemical Engineering");
		this.majorList.add("Civil Engineering");
		this.majorList.add("Communication Engineering");
		this.majorList.add("Computer Engineering and Information Technology");
		this.majorList.add("Electrical Power Engineering");
		this.majorList.add("Electronic Engineering");
		this.majorList.add("Mechanical Engineering");
		this.majorList.add("Mechatronic Engineering");
		this.majorList.add("Metallurgical Engineering");
		this.majorList.add("Mining Engineering");
		this.majorList.add("Petroleum Engineering");
		this.majorList.add("Textile Engineering");
		
		this.stuTypeList=new ArrayList<String>();
		this.stuTypeList.add("First year");
		this.stuTypeList.add("Second year");
		this.stuTypeList.add("Third year");
		this.stuTypeList.add("Fourth year");
		this.stuTypeList.add("Fifth year");
		this.stuTypeList.add("Final year");
		
		this.academicYearList=new ArrayList<String>();
		this.academicYearList.add("2023-2024");
		this.academicYearList.add("2024-2025");
		this.academicYearList.add("2025-2026");
		this.academicYearList.add("2027-2028");
		this.academicYearList.add("2028-2029");
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public List<String> getMajorList() {
		return majorList;
	}
	public void setMajorList(List<String> majorList) {
		this.majorList = majorList;
	}
	public List<String> getStuTypeList() {
		return stuTypeList;
	}
	public void setStuTypeList(List<String> stuTypeList) {
		this.stuTypeList = stuTypeList;
	}
	public List<String> getAcademicYearList() {
		return academicYearList;
	}
	public void setAcademicYearList(List<String> academicYearList) {
		this.academicYearList = academicYearList;
	}
	public String getYourMajor() {
		return yourMajor;
	}
	public void setYourMajor(String yourMajor) {
		this.yourMajor = yourMajor;
	}
	public String getYourStuType() {
		return yourStuType;
	}
	public void setYourStuType(String yourStuType) {
		this.yourStuType = yourStuType;
	}
	public String getYourAcademicYear() {
		return yourAcademicYear;
	}
	public void setYourAcademicYear(String yourAcademicYear) {
		this.yourAcademicYear = yourAcademicYear;
	}
	
}
