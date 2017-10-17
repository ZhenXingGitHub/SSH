package com.resume.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class UploadUtil {
	
	
	
	/**
	 * �ϴ��ļ����������ļ�����,�ļ����ö���id������
	 * @param tableName ����
	 * @param filename �ļ���(id.png/img)
	 * @param File �ļ�����
	 * @return �����ļ�·��
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
