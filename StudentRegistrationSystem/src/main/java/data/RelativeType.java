package data;

import java.util.LinkedHashMap;

public class RelativeType extends Data {

	public RelativeType() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		String sql = "SELECT * FROM relative_types;";
        dataMap = getDataMapFromDatabase(sql, 1, 2);
	}

}
