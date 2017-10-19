package com.event.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.web.context.request.RequestContextHolder;

public class UploadUtil {
	
	String[] filestype ={"jpg","bmp"}; 
	
	public String FileType(File file,String table){
		HttpServletResponse resp = (HttpServletResponse) RequestContextHolder.getRequestAttributes();
		PrintWriter out = null;
		try {
			out = resp.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String str = String.valueOf(file.getName());
		String type = str.substring(str.indexOf(".")+1);
		for (String s : filestype) {
			if(s.equals(type)){
				String fileName=table+new Random().nextInt(1000)+"."+type;
				return fileName;
			}else{
				out.print("<script type='text/javascript'>alert('图片类型错误')</script>");
				return null;
			}
		}
		return null;
	}
	
	public String uploadOneByTable(String tableName,File file){
		String url1=ServletActionContext.getServletContext().getRealPath("/upload/"+tableName);
		File filePath=new File(url1);
		System.out.println("文件路径"+filePath);
		if(!filePath.exists()){
			filePath.mkdirs();
		}
		String time=String.valueOf(System.currentTimeMillis());
		String name=time.substring(time.length()-5,time.length())+new Random().nextInt(1000)+".jpg";
		File file22=new File(filePath, name);
		try {
			FileUtils.copyFile(file, file22);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return name;
		
	}
	
	public String uploadOnTemp(String filename,File file){
		ServletContext sc=ServletActionContext.getServletContext();
		String url1=sc.getRealPath("/images/");
		File filePath=new File(url1);
		if(!filePath.exists()){
			filePath.mkdirs();
		}
		String url2=url1+"/"+String.valueOf(filename);
		File file22=new File(filePath, filename);
		try {
			FileUtils.copyFile(file, file22);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return url2;
	}
	
	public String Upload(File file, String table) throws IOException{
		
		FileType(file, table);
		
		File uploadFile=new File(ServletActionContext.getServletContext().getRealPath("uploadFile"));  
        //判断文件是否上传，如果上传的话将会创建该目录  
        if(!uploadFile.exists()){  
            uploadFile.mkdir(); //创建该目录  
        }  
        //第一种文件上传的方法  
        //声明文件输入流，为输入流指定文件路径  
        
        String fileName = FileType(file, table);
        FileInputStream input=new FileInputStream(file);  
        //获取输出流，获取文件的文件地址及名称  
        FileOutputStream out=new FileOutputStream(uploadFile + "\\" +fileName);  
        try{  
            byte[] b=new byte[1024];//每次写入的大小  
            int i=0;  
            while((i=input.read(b))>0){  
                out.write(b,0,i);  
            }  
        }catch(Exception e){  
            e.printStackTrace();  
        }finally{  
            input.close();  
            out.close();  
        }  
        return uploadFile+"\\"+fileName;
    }
}



