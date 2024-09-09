package data;

import java.util.HashMap;

public class State extends Data {

	public State() {
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
        dataMap.put(5, "Sagaing");
        dataMap.put(6, "Tanintharyi");
        dataMap.put(7, "Bago");
        dataMap.put(8, "Magway");
        dataMap.put(9, "Mandalay");
        dataMap.put(10, "Mon");
        dataMap.put(11, "Rakhine");
        dataMap.put(12, "Yangon");
        dataMap.put(13, "Shan");
        dataMap.put(14, "Ayeyarwaddy");
        dataMap.put(15, "Naypyidaw");
	}

}
