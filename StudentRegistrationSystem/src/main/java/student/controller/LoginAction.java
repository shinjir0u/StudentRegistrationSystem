package student.controller;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		System.out.println("hello login aciton");
		return SUCCESS;
	}
	
}
