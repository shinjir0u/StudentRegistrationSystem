package student.dao;

import java.sql.Statement;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import data.AcademicYear;
import data.CurrentYear;
import data.Data;
import data.DateOfBirthDay;
import data.DateOfBirthMonth;
import data.DateOfBirthYear;
import data.Gender;
import data.Major;
import data.MatriculationSubjectData;
import data.Nationality;
import data.NrcNationality;
import data.NrcState;
import data.NrcStateNumber;
import data.RelativeType;
import data.Religion;
import data.RollNumberCode;
import data.State;
import data.StudentType;
import data.Township;
import student.model.Student;

public class StudentDAO {

	private final String filename = System.getProperty("user.dir") + "/student.ser";

//	private final String url = "jdbc:postgresql://dpg-cril31jv2p9s738json0-a.singapore-postgres.render.com/"
//			+ "university_database_glgp?user="
//			+ "shinji&password=bSzNteNUBc973PDCIPMWyJJI4pkDJB3F";
	private final String url = "jdbc:postgresql://localhost/university_database";
	private final String username = "shinji";
	private final String password = "pass";

	private Connection connection;
	private Statement connectDatabase() {
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(url, username, password);
//			connection = DriverManager.getConnection(url);
			return connection.createStatement();
		} catch(ClassNotFoundException | SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void addStudentToDatabase(String sql) {
		try {
			connectDatabase().executeUpdate(sql);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} 
	}
	
	public ResultSet retriveDataFromDatabase(String sql) {
		try {
			return connectDatabase().executeQuery(sql);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} 
	}
	public void closeDatabaseAction() {
		try {
			connection.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	@SuppressWarnings("unchecked")
	public HashMap<Integer, Student> loadFile() {
		try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(filename))) {
			return (HashMap<Integer, Student>) objectInputStream.readObject();
		} catch (IOException | ClassNotFoundException e) {
			return new HashMap<Integer, Student>();
		}
	}

	public void saveFile(HashMap<Integer, Student> students) {
		try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(filename))) {
			objectOutputStream.writeObject(students);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	public int generateHashKey(HashMap<Integer, Student> students) {
		return (students.size()==0) ? 1 : students.size()+1;
	}
	
	public HashMap<Integer, Data> setDataValues() {
		HashMap<Integer, Data> data = new HashMap<>();
		data.put(1, new AcademicYear());
		data.put(2, new Gender());
		data.put(3, new Major());
		data.put(4, new MatriculationSubjectData());
		data.put(5, new Nationality());
		data.put(6, new NrcState());
		data.put(7, new NrcStateNumber());
		data.put(8, new RelativeType());
		data.put(9, new Religion());
		data.put(10, new State());
		data.put(11, new StudentType());
		data.put(12, new Township());
		data.put(13, new NrcNationality());
		data.put(14, new DateOfBirthDay());
		data.put(15, new DateOfBirthMonth());
		data.put(16, new DateOfBirthYear());
		data.put(17, new CurrentYear());
		data.put(18, new RollNumberCode());
		return data;
	}

}
