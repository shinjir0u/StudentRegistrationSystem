package data;

import java.util.HashMap;

public class Major extends Data {

	public Major() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		
		dataMap.put(1, "Civil Engineering");
        dataMap.put(2, "Mechanical Engineering");
        dataMap.put(3, "Electrical Power Engineering");
        dataMap.put(4, "Electronic Engineering");
        dataMap.put(5, "Computer Engineering & Information Technology");
        dataMap.put(6, "Mechatronic Engineering");
        dataMap.put(7, "Chemical Engineering");
        dataMap.put(8, "Textile Engineering");
        dataMap.put(9, "Mining Engineering");
        dataMap.put(10, "Petroleum Engineering");
        dataMap.put(11, "Metallurgical Engineering & Materials Science");
        dataMap.put(12, "Architecture");
        dataMap.put(13, "Telecommunication Engineering");
        dataMap.put(14, "Food Engineering");
	}

}
