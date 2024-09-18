package data;

import java.util.LinkedHashMap;

public class RollNumberCode extends Data {

	public RollNumberCode() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		dataMap = new LinkedHashMap<>();
		dataMap.put("1", "I");
		dataMap.put("2", "II");
		dataMap.put("3", "III");
		dataMap.put("4", "IV");
		dataMap.put("5", "V");
		dataMap.put("6", "VI");
	}

}
