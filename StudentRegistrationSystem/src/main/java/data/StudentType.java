package data;

import java.util.HashMap;

public class StudentType extends Data {

	public StudentType() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<>();
		
		dataMap.put(1, "freshman");
        dataMap.put(2, "returning");
        dataMap.put(3, "transfer");
        dataMap.put(4, "post-graduate");
        dataMap.put(5, "graduated");
	}

}
