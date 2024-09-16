package data;

import java.io.Serializable;
import java.util.HashMap;

public class MatriculationSubject extends Data implements Serializable {
	
	private int mark;
	
	public MatriculationSubject() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MatriculationSubject(int id, String name, int mark) {
		setId(id);
		setValue(name);
		setMark(mark);
	}
	@Override
	public void setData() {
		// TODO Auto-generated method stub
		 dataMap = new HashMap<>();
		 
	     dataMap.put(1, "Myanmar");
	     dataMap.put(2, "Maths");
	     dataMap.put(3, "English");
	     dataMap.put(4, "Physics");
	     dataMap.put(5, "Chemistry");
	     dataMap.put(6, "Biology");
	     dataMap.put(7, "Economics");
	     dataMap.put(8, "History");
	     dataMap.put(9, "Geography");
	}

	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}
}
