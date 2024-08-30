package example;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class Action extends ActionSupport implements ServletRequestAware {
	private UserInfo user;
	private final String filename = "user.ser";
	private HashMap<Integer, UserInfo> users;
	private HttpServletRequest request;

	public String execute() {
		loadUser();
		if ("add".equals(request.getParameter("add"))) {
			users.put(hashmapKey(), user);
			saveUser();
		}
		return SUCCESS;
	}

	public void loadUser() {
		try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(filename))) {
			users = (HashMap<Integer, UserInfo>) objectInputStream.readObject();
		} catch(ClassNotFoundException | IOException e) {
			users = new HashMap<Integer, UserInfo>();
		}
	}
	
	public void saveUser() {
		try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(filename))) {
			objectOutputStream.writeObject(users);
		} catch(IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	public String getFilename() {
		return filename;
	}
	
	private int hashmapKey() {
		return users.size()+1;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public HashMap<Integer, UserInfo> getUsers() {
		return users;
	}
	public void setUsers(HashMap<Integer, UserInfo> users) {
		this.users = users;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
}
