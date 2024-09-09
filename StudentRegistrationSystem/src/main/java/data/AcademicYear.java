package data;

import java.util.HashMap;

public class AcademicYear extends Data {

	public AcademicYear() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<>();

        // Add entries to the HashMap
        dataMap.put(1, "2012-2013");
        dataMap.put(2, "2013-2014");
        dataMap.put(3, "2014-2015");
        dataMap.put(4, "2015-2016");
        dataMap.put(5, "2016-2017");
        dataMap.put(6, "2017-2018");
        dataMap.put(7, "2018-2019");
        dataMap.put(8, "2019-2020");
        dataMap.put(9, "2020-2021");
        dataMap.put(10, "2021-2022");
        dataMap.put(11, "2022-2023");
        dataMap.put(12, "2023-2024");
        dataMap.put(13, "2024-2025");
        dataMap.put(14, "2025-2026");
	}

}
