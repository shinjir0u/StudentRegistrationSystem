package data;

import java.util.LinkedHashMap;

public class State extends Data {

	public State() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM states;";
	    dataMap = getDataMapFromDatabase(sql, 1, 2);	
	}
}
