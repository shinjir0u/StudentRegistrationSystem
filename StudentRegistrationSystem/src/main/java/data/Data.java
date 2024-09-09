package data;

import java.util.HashMap;
import java.util.Map.Entry;

public abstract class Data {
	int id;
	String value;
	HashMap<Integer, String> dataMap;
	
	
	public Data() {
		setData();
	}

	public abstract void setData();
	
	public int getIdByValue(String value) {
		for (Entry<Integer, String> data : dataMap.entrySet()) {
			if (data.getValue().equals(value))
				return data.getKey();
		}
		return 0;
	}
	
	public String getValueById(int id) {
		return dataMap.get(id);
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public HashMap<Integer, String> getDataMap() {
		return dataMap;
	}

	public void setDataMap(HashMap<Integer, String> dataMap) {
		this.dataMap = dataMap;
	}
}
