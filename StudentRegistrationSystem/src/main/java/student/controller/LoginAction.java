package student.controller;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String email;
	private String password;
	
	
	public LoginAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginAction(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		
		  if(this.email.contains("ytu.edu.mm")) 
			  return "student_success"; 
		  return "admin_success";
		 
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
	
}
