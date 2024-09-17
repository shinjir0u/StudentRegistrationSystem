package student.model;

import java.io.Serializable;

public class Nrc implements Serializable {
	private String stateNumber;
	private String township;
	private String nationality;
	private String number;
	
	public Nrc(String stateNumber, String township, String nationality, String number) {
		super();
		this.stateNumber = stateNumber;
		this.township = township;
		this.nationality = nationality;
		this.number = number;
	}
	
	public String getStateNumber() {
		return stateNumber;
	}
	public void setStateNumber(String stateNumber) {
		this.stateNumber = stateNumber;
	}
	public String getTownship() {
		return township;
	}
	public void setTownship(String township) {
		this.township = township;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
}
