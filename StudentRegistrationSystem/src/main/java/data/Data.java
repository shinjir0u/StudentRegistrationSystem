package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map.Entry;

import student.dao.StudentDAO;

public abstract class Data {
	String id;
	String value;
	HashMap<String, String> dataMap;
	StudentDAO studentDAO = new StudentDAO();
	
	public Data() {
		setData();
	}

	public abstract void setData();
	
	public String getIdByValue(String value) {
		for (Entry<String, String> data : dataMap.entrySet()) {
			if (data.getValue().equals(value))
				return data.getKey();
		}
		return "0";
	}
	
	public HashMap<String, String> getDataMapFromDatabase(String sql, int idColumn, int valueColumn) {
		ResultSet resultSet = studentDAO.retriveDataFromDatabase(sql);
        try {
			while (resultSet.next()) {
				dataMap.put(resultSet.getString(idColumn), resultSet.getString(valueColumn));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return dataMap;
	}
	
	public String getValueById(String id) {
		return dataMap.get(id);
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public HashMap<String, String> getDataMap() {
		return dataMap;
	}

	public void setDataMap(HashMap<String, String> dataMap) {
		this.dataMap = dataMap;
	}
}
