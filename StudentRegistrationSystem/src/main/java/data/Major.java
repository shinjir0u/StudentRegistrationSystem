package data;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class Major extends Data {

	public Major() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM majors;";
        dataMap = getDataMapFromDatabase(sql, 1, 2);
	}

}
