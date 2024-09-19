package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import student.dao.StudentDAO;

public class LoginAction extends ActionSupport implements SessionAware {
	private String email;
	private String password;
	private String studentId;
	private Map<String, Object> session;
	
	public LoginAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginAction(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
	public String login() {
		StudentDAO studentDAO = new StudentDAO();
		String sql = "SELECT * FROM users;";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		try {
			while (resultSet.next()) {
				if (resultSet.getString("email").equals(email) && 
						resultSet.getString("password").equals(password)) {
					studentId = resultSet.getString("student_id");
					session.put("studentId", studentId);
					return (resultSet.getInt("user_type_id") == 1) ? "admin_success" : "student_success";
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		return INPUT;	 
	}
	
	public String logout() {
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String forgotPassword() {
		return SUCCESS;
	}
	public String changePassword() {
		return SUCCESS;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
}
