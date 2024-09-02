package student.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import com.opensymphony.xwork2.ActionSupport;
import student.model.Student;

public class StudentAction extends ActionSupport {
	private final String filename = "student.ser";
	private HashMap<Integer, Student> students;
	private Student student;

	public String addStudentToHashmap() {
		students = new HashMap<Integer, Student>();
		students.put(generateHashKey(), student);
		return SUCCESS;
	}
	
	private void loadFile() {
		try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(filename))) {
			students = (HashMap<Integer, Student>) objectInputStream.readObject();
		} catch (IOException | ClassNotFoundException e) {
			students = new HashMap<Integer, Student>();
		}
	}

	private void saveFile() {
		try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(filename))) {
			objectOutputStream.writeObject(students);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	private int generateHashKey() {
		int i = 1;
		while (i <= students.size()) {
			if (!students.containsKey(i))
				break;
			else 
				i++;
		}
		return i;
	}
	
	public HashMap<Integer, Student> getStudents() {
		return students;
	}

	public void setStudents(HashMap<Integer, Student> students) {
		this.students = students;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
}
