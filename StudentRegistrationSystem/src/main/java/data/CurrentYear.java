package data;

import java.util.HashMap;

public class CurrentYear extends Data {

	public CurrentYear() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		dataMap.put(1, "1st Year");
		dataMap.put(2, "2nd Year");
		dataMap.put(3, "3rd Year");
		dataMap.put(4, "4th Year");
		dataMap.put(5, "5th Year");
		dataMap.put(6, "Final Year");
	}

}
