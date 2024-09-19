package data;

import java.io.Serializable;
import java.util.LinkedHashMap;

public class MatriculationSubjectData extends Data implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3635897292045632615L;

	public MatriculationSubjectData() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void setData() {
		// TODO Auto-generated method stub
		 dataMap = new LinkedHashMap<>();
		 
		 String sql = "SELECT * FROM matriculation_subjects;";
	     dataMap = getDataMapFromDatabase(sql, 1, 2);
	}

}
