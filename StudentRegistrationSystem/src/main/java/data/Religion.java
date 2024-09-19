package data;

import java.util.LinkedHashMap;

public class Religion extends Data {

	public Religion() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM religions;";
        dataMap = getDataMapFromDatabase(sql, 1, 2);
	}
 
}
