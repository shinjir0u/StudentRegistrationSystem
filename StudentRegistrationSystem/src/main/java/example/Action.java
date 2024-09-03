package example;

import java.sql.Statement;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

public class Action extends ActionSupport {
	private final String filename = "user.ser";
	private HashMap<Integer, User> users;
	private String action;
	private User user;

//	public String execute() {
//		loadUser();
//		if ("add".equals(action)) {
//			users.put(hashmapKey(), user);
//			saveUser();
//		}
//		return SUCCESS;
//	}
	
	public String execute() {
//		try {
//			users = new HashMap<Integer, User>();
//			Class.forName("org.postgresql.Driver");
//			Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost/test", "shinji", "pass");
//			Statement statement = connection.createStatement();
//			ResultSet resultSet = statement.executeQuery("SELECT * FROM users u, employees e WHERE u.supervisor=e.id;");
//			User user;
//			while (resultSet.next()) {
//				user = new User();
//				user.setId(resultSet.getInt(1));
//				user.setName(resultSet.getString(2));
//				user.setEmail(resultSet.getString(3));
//				user.setEmployee(new Employee(resultSet.getInt(5), resultSet.getString(6), resultSet.getString(7)));
//				users.put(user.getId(), user);
//			}
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
		loadUser();
		users.put(generateHashKey(), user);
		saveUser();
		return SUCCESS;
	}

	public void loadUser() {
		try (ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(filename))) {
			users = (HashMap<Integer, User>) objectInputStream.readObject();
		} catch(ClassNotFoundException | IOException e) {
			users = new HashMap<Integer, User>();
		}
	}
	
	public void saveUser() {
		try (ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(filename))) {
			objectOutputStream.writeObject(users);
		} catch(IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	private int generateHashKey() {
		int i = 1;
		while (users.containsKey(i))
			i++;
		return i;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private int hashmapKey() {
		return users.size()+1;
	}
	public HashMap<Integer, User> getUsers() {
		return users;
	}
	public void setUsers(HashMap<Integer, User> users) {
		this.users = users;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
}
