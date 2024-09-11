package student.dao;

import java.sql.Statement;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map.Entry;

import student.model.Student;

public class StudentDAO {
	private final String filename = "student.ser";
	private final String url = "jdbc:postgresql://localhost/university_database";
	private final String username = "shinji";
	private final String password = "pass";
	private Connection connection;
	
	private Statement connectDatabase() {
		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(url, username, password);
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
}
