package student.model;

import java.io.Serializable;

public class Nrc implements Serializable {
	private String stateNumber;
	private String township;
	private String nationality;
	private int number;
	
	public Nrc(String stateNumber, String township, String nationality, int number) {
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
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
}
