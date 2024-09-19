package student.model;

import java.io.Serializable;

public class MatriculationSubject implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7053932698346383146L;
	private String id;
	private String name;
	private String mark;
	
	
	public MatriculationSubject() {
		super();
	}

	public MatriculationSubject(String id, String name, String mark) {
		super();
		this.id = id;
		this.name = name;
		this.mark = mark;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}
}
