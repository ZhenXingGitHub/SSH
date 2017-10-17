package com.resume.service;

import java.sql.SQLException;
import java.util.List;

import com.resume.dao.AdminDao;
import com.resume.dao.impl.AdminDaoImpl;
import com.resume.model.Admin;

public class AdminService {
	
	private AdminDao ad = new AdminDaoImpl();
	public boolean login(Admin admin) throws SQLException{
		
		boolean b = ad.login(admin);
		if(b){
			return true;
		}
		else{
			return false;
		}
	}
	
	public List selectalladmin() throws SQLException{
		
		List<Admin> list = ad.selectalladmin();
		return list;
		
	}
	
	public Admin selectadmin(String key1, String key2) throws SQLException{
		
		Admin admin = ad.selectadmin(key1, key2);
		
		return admin;
	}
	
	public boolean updateadmin(Admin admin) throws SQLException{
		
		return ad.updateadmin(admin);
		
	}
	
	public boolean delectadmin(Admin admin) throws SQLException{
		
		return ad.delectadmin(admin);
		
	}
	
	public boolean saveadmin(Admin admin) throws SQLException{
		
		return ad.saveadmin(admin);
		
	}
}
