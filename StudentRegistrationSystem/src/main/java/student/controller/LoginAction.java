package student.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import student.dao.StudentDAO;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5424682584955180140L;
	private String email;
	private String password;
	private String newPassword;
	private String retypeNewPassword;
	private String studentId;
	private String studentCardId;
	private Map<String, Object> session;
	String action;
	
	public LoginAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginAction(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
	public String execute() {
		return SUCCESS;
	}
	
	public String login() {
		int count = 0;
		StudentDAO studentDAO = new StudentDAO();
		String sql = "SELECT * FROM users;";
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
		try {
			while (resultSet.next()) {
				if(resultSet.getString("email").equals(email)) {
					count = 1;
					if(resultSet.getString("password").equals(password)) {
						studentId = resultSet.getString("student_id");
						session.put("studentId", studentId);
						return (resultSet.getInt("user_type_id") == 1) ? "admin_success" : "student_success";
					}
				}		
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		if (count==1) 
			addFieldError("password", "Invalid password");
		else
			addFieldError("email", "Invalid email and password");
		return INPUT;
	}
	
	public String changePassword() {
		if ("Back".equals(action))
			return "back";
		if ("Confirm".equals(action)) {
			StudentDAO studentDAO = new StudentDAO();
			String sql = "SELECT u.email, student_card_id FROM users u JOIN students USING(student_id);";
			ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
			try {
				while (resultSet.next()) {
					if (resultSet.getString("email").equals(email) && resultSet.getString("student_card_id").equals(studentCardId))
						return SUCCESS;					
				}		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				throw new RuntimeException(e);
			}
		}
		addFieldError("email", "Invalid email and student card id");
		return INPUT;
	}
	
	public String changePasswordFinalize() {
		if ("Back".equals(action))
			return "back";
		if ("Confirm".equals(action)) {
			if (newPassword.equals(retypeNewPassword) && !newPassword.isBlank()) {
				StudentDAO studentDAO = new StudentDAO();
				String sql = "UPDATE users u SET password='" + newPassword +"' FROM students s WHERE s.student_id=u.student_id AND s.student_card_id='"+ studentCardId +"';";
				studentDAO.addStudentToDatabase(sql);
				return SUCCESS;
			}
		}
		
		addFieldError("newPassword", "Passwords do not match!");
		return INPUT;
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
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getStudentCardId() {
		return studentCardId;
	}
	public void setStudentCardId(String studentCardId) {
		this.studentCardId = studentCardId;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getRetypeNewPassword() {
		return retypeNewPassword;
	}
	public void setRetypeNewPassword(String retypeNewPassword) {
		this.retypeNewPassword = retypeNewPassword;
	}
}
