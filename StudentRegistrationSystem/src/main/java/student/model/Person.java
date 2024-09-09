package student.model;

import java.io.Serializable;

public class Person implements Serializable {
	private int id;
	private String name;
	private int phoneNumber;
	private String email;
	private String gender;
	private String township;
	private String state;
	private String address;
	private String religion;
	private String nationality;
	private Nrc nrc;
	private DateOfBirth dateOfBirth;
	private String type;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTownship() {
		return township;
	}
	public void setTownship(String township) {
		this.township = township;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public DateOfBirth getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(DateOfBirth dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public Nrc getNrc() {
		return nrc;
	}
	public void setNrc(Nrc nrc) {
		this.nrc = nrc;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
