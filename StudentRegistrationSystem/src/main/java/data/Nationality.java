package data;

import java.util.LinkedHashMap;

public class Nationality extends Data {

	public Nationality() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM nationalities;";
		dataMap = getDataMapFromDatabase(sql, 1, 2);
	}
	
	

}
