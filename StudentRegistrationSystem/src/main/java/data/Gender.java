package data;

import java.util.LinkedHashMap;

public class Gender extends Data {

	public Gender() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		dataMap.put("1", "Male");
		dataMap.put("2", "Female");
	}
	
	
	
}
