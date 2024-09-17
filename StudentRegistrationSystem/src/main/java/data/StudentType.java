package data;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class StudentType extends Data {

	public StudentType() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM student_types;";
        dataMap = getDataMapFromDatabase(sql, 1, 2);
	}

}
