package data;

import java.util.HashMap;
import java.util.Iterator;

public class NrcStateNumber extends Data {

	public NrcStateNumber() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		
		for (int i = 1; i <= 14; i++) 
			dataMap.put(i, i+"/");
	}

}
