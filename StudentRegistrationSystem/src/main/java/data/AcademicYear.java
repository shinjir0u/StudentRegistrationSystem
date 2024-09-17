package data;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class AcademicYear extends Data {

	public AcademicYear() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();

        // Add entries to the HashMap
        String sql = "SELECT * FROM academic_years;";
        dataMap = getDataMapFromDatabase(sql, 1, 2);
        
	}
}
