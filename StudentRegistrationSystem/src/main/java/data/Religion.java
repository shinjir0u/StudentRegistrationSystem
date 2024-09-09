package data;

import java.util.HashMap;

public class Religion extends Data {

	public Religion() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		
		dataMap.put(1, "Buddhism");
		dataMap.put(2, "Christianity");
		dataMap.put(3, "Islam");
		dataMap.put(4, "Hinduism");
		dataMap.put(5, "Others");
	}
 
}
