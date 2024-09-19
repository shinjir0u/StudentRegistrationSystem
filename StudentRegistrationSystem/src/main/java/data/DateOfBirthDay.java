package data;

import java.util.LinkedHashMap;

public class DateOfBirthDay extends Data {

	public DateOfBirthDay() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		
		for (int i = 1; i <= 9; i++)
			dataMap.put(String.valueOf(i), "0" + String.valueOf(i));
		
		for (int i = 10; i <= 31; i++) 
            dataMap.put(String.valueOf(i), String.valueOf(i));
	}
}
