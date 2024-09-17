package student.controller;

import java.util.Map;

public class Test {

	public Test() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String args[]) {
		String currentRollNo = "IV";
		Map<String, String> rollNumberYear = Map.of("I", "1st Year", "II", "2nd Year", "III", "3rd Year", "IV", 
				"4th Year", "V", "5th Year", "VI", "Final Year");
		String rollNoCode = currentRollNo.split("-")[0];
		System.out.println(rollNumberYear.get(rollNoCode));;
		
	}
}
