package data;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class Township extends Data {

	public Township() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		String sql = "SELECT * FROM townships;";
        dataMap = getDataMapFromDatabase(sql, 1, 3);
	}

}
