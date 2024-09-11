package data;

import java.util.HashMap;

public class NrcNationality extends Data {

	public NrcNationality() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<Integer, String>();
		
		dataMap.put(1, "(N)");
		dataMap.put(2, "(E)");
		dataMap.put(3, "(P)");
	}

}
