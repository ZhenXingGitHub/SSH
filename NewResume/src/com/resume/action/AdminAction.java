package com.resume.action;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.catalina.connector.Request;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.Bean;
import org.junit.Test;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.resume.model.Admin;
import com.resume.model.Files;
import com.resume.service.AdminService;
import com.sun.glass.ui.Application;

public class AdminAction extends ActionSupport{
	
	String[] filestype ={"jpg","bmp"}; 
	private AdminService as = new AdminService();
	private ActionContext actionContext=ActionContext.getContext();
	private Admin admin;
	private Files file;
	
	public Files getFile() {
		return file;
	}

	public void setFile(Files file) {
		this.file = file;
	}

	public Admin getAdmin() {
		
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	@Test
	public String login(){
		
		System.out.println(admin);
		try {
			boolean b = as.login(admin);
			if(b){
				System.out.println("登陆");
				List<Admin> adminalllist = as.selectalladmin();
				Admin loginadmin = (Admin)as.selectadmin("a_username", admin.getA_username());
				Admin admin1 = (Admin)as.selectadmin("a_proview", "经%");
				Admin admin2 = (Admin)as.selectadmin("a_proview", "管理组长");
				Map<String, Object> session=actionContext.getSession();
				session.put("adminalllist",adminalllist);
				session.put("loginadmin",loginadmin);
				session.put("admin1",admin1);
				session.put("admin2",admin2);
				return SUCCESS;
			}else{
				return ERROR;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return SUCCESS;
	}
	
	public String save(){
		System.out.println("添加---"+admin.getA_password());
		try {
			
			as.saveadmin(admin);
			Admin s = as.selectadmin("a_username", admin.getA_username());
			if(s == null){
				System.out.println("save。。。。。。添加");
				Admin adminedit = (Admin)as.selectadmin("a_username", admin.getA_username());
				Map<String, Object> session=actionContext.getSession();
				session.put("adminedit",adminedit);
				return "save";
			}else{
				System.out.println("用户名存在");
				return ERROR;
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "save";
	}

	public String list(){
		
		try {
			System.out.println("manage。。。。。。查询");
			List<Admin> adminalllist = as.selectalladmin();
			Map<String, Object> session=actionContext.getSession();
			session.put("adminalllist",adminalllist);
			return "manage";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "manage";
	}
	
	public String gets(){
		
		try {
			System.out.println("adminame。。。。。。查询");
			Admin adminedit = (Admin)as.selectadmin("a_name", admin.getA_name());
			Map<String, Object> session=actionContext.getSession();
			session.put("adminedit",adminedit);
			return "gets";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "gets";
	}
	
	public String edit(){
		
		try {
			System.out.println("edit。。。。。。查询");
			Admin adminedit = (Admin)as.selectadmin("a_username", admin.getA_username());
			Map<String, Object> session=actionContext.getSession();
			session.put("adminedit",adminedit);
			return "edit";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "edit";
	}
	
	public String update(){
		
	
		try {
			System.out.println("update。。。。。。查询");
			System.out.println("ads"+admin.getA_id());
				System.out.println("文件名："+file.getFileFileName());
				System.out.println("文件类型："+file.getFileContentType());
				String realpath = ServletActionContext.getServletContext().getRealPath("/images/");
				String s = file.getFileContentType().substring(file.getFileContentType().lastIndexOf("/")+1);
				System.out.println("lxxx"+realpath);
				for(String ss:filestype){
					System.out.println(ss);
					if(ss.equals(s)){
						System.out.println("文件类型正确");
					}
					
				}
				String filePath=realpath+file.getFileFileName();
				File saveFile=new File(filePath);
				FileUtils.copyFile(file.getFile(), saveFile);
				
				admin.setA_url(filePath);
				System.out.println("文件保存路径   "+admin.getA_url());
				boolean  b  = as.updateadmin(admin);
			if(b){
				Admin adminedit = (Admin)as.selectadmin("a_username", admin.getA_username());
				Map<String, Object> session=actionContext.getSession();
				session.put("adminedit",adminedit);
				return "update";
			}
			else{
				return ERROR;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "update";
	}
	
	private Request getServletContext() {
		// TODO Auto-generated method stub
		return null;
	}

	public String delect(){
		
		try {
			System.err.println("delect..."+admin.getA_id());
			boolean b = as.delectadmin(admin);
			if(b){
				List<Admin> adminalllist = as.selectalladmin();
				Map<String, Object> session=actionContext.getSession();
				session.put("adminalllist",adminalllist);
				return "delect";
			}else{
				return ERROR;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "delect";
	}
}
