package data;

import java.util.HashMap;

public class Nationality extends Data {

	public Nationality() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		
		dataMap.put(1, "Kachin");
        dataMap.put(2, "Kayah");
        dataMap.put(3, "Kayin");
        dataMap.put(4, "Chin");
        dataMap.put(5, "Bamar");
        dataMap.put(6, "Mon");
        dataMap.put(7, "Rakhine");
        dataMap.put(8, "Shan");
        dataMap.put(9, "Others");
	}
	
	

}
