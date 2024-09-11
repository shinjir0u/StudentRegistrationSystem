package data;

import java.time.Year;
import java.util.Date;
import java.util.HashMap;

public class DateOfBirthYear extends Data {

	public DateOfBirthYear() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<>();
		int currentYear = Year.now().getValue();
		int acceptedYear = currentYear - 16;
        for (int year = 1960; year <= acceptedYear ; year++) {
            dataMap.put(year, String.valueOf(year));
        }  
	}
}
