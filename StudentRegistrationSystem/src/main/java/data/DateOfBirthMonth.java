package data;

import java.util.HashMap;

public class DateOfBirthMonth extends Data {

	public DateOfBirthMonth() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new HashMap<>();
		
		for (int i = 1; i <= 12; i++) {
            dataMap.put(i, String.valueOf(i));
        }
	}

}
