package data;

import java.util.LinkedHashMap;

public class NrcState extends Data {

	public NrcState() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();

		String sql = "SELECT * FROM nrc_state;";
		dataMap = getDataMapFromDatabase(sql, 1, 2);
	}

}
