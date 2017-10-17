package com.resume.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class UploadUtil {
	
	
	
	/**
	 * 上传文件到表名的文件夹下,文件名用对象id来命名
	 * @param tableName 表名
	 * @param filename 文件名(id.png/img)
	 * @param File 文件对象
	 * @return 返回文件路径
	 */
	public String uploadOneByTable(String tableName,String filename,File file){
		ServletContext sc=ServletActionContext.getServletContext();
		String url1=sc.getRealPath("/images/"+tableName);
		File filePath=new File(url1);
		if(!filePath.exists()){
			filePath.mkdirs();
		}
		String url2=url1+"/"+String.valueOf(filename);
		File file22=new File(filePath, filename);
		try {
			FileUtils.copyFile(file, file22);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return url2;
	}
	
	
	public String uploadOnTemp(String filename,File file){
		ServletContext sc=ServletActionContext.getServletContext();
		String url1=sc.getRealPath("/images/temp");
		File filePath=new File(url1);
		if(!filePath.exists()){
			filePath.mkdirs();
		}
		String url2=url1+"/"+String.valueOf(filename);
		File file22=new File(filePath, filename);
		try {
			FileUtils.copyFile(file, file22);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return url2;
	}
	
	

}
