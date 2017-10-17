package com.resume.dao;

import java.sql.SQLException;
import java.util.List;

import com.resume.model.Admin;

public interface AdminDao {

	boolean login(Admin admin) throws SQLException;//µÇÂ½
	
	List selectalladmin() throws SQLException;
	
	Admin selectadmin(String key1, String key2) throws SQLException; 
	
	boolean updateadmin(Admin admin) throws SQLException;
	
	boolean delectadmin(Admin admin) throws SQLException;
	
	boolean saveadmin(Admin admin) throws SQLException;
}
