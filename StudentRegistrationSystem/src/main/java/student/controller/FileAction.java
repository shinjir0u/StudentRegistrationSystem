package student.controller;

import java.io.File;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;

import data.MyFile;

@SuppressWarnings("serial")
public class FileAction extends ActionSupport {
	private MyFile upload;
	private String path;
	public MyFile getUpload() {
		return upload;
	}
	public void setUpload(MyFile upload) {
		this.upload = upload;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public String execute() throws Exception {
		try {
			File file = new File(upload.getImageFileName());
			File uploadedFile = upload.getImage();
			FileUtils.copyFile(uploadedFile, file);
			path = file.getAbsolutePath();
		} catch(Exception e) {
			e.printStackTrace();
			addActionError("Exception occured while creating file");
			return INPUT;
		}
		return SUCCESS;
	}

}
