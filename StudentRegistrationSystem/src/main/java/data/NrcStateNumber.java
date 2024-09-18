package data;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;

public class NrcStateNumber extends Data {

	public NrcStateNumber() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		for (int i = 0; i < 14; i++) 
			dataMap.put(String.valueOf(i+1), (i+1)+"/");
	}

}
