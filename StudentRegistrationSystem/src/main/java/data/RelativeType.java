package data;

import java.util.HashMap;

public class RelativeType extends Data {

	public RelativeType() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<>();
		
        dataMap.put(1, "Father");
        dataMap.put(2, "Mother");
        dataMap.put(3, "Grandfather");
        dataMap.put(4, "Grandmother");
        dataMap.put(5, "Uncle");
        dataMap.put(6, "Aunty");
        dataMap.put(7, "Brother");
        dataMap.put(8, "Sister");
        dataMap.put(9, "Cousin");
        dataMap.put(10, "Others");
	}

}
