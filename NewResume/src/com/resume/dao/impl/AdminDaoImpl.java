package com.resume.dao.impl;

import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.resume.dao.AdminDao;
import com.resume.model.Admin;
import com.resume.util.HibernateUtils;

public class AdminDaoImpl implements AdminDao{

	@Override
	public boolean login(Admin admin) {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();
		
		String hql = "from Admin where a_username like :name and a_password=:pass";
		Query query=session.createQuery(hql);
		query.setString("name", admin.getA_username());
		query.setString("pass", admin.getA_password());
		List<Admin> list=(List<Admin>)query.list();
		Iterator it=list.iterator();
		
		if(it.hasNext()){
			return true;
		}
		else
			return false;
	}
	
	@Override
	@Test
	public List selectalladmin() throws SQLException {
		// TODO Auto-generated method stub
		
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();

		String hql = "from Admin";
		Query query=session.createQuery(hql);
		List<Admin> list=(List<Admin>)query.list();
		
		HibernateUtils.closeSession();
		Iterator it=list.iterator();
		
		while(it.hasNext()){
		 Admin admin = (Admin) it.next();
		 System.out.println(admin);
		}
		return list;
	}

	@Override
	public Admin selectadmin(String key1, String key2) throws SQLException {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();
		String hql = "from Admin where "+key1+" like :"+key1;
		Query query=session.createQuery(hql);
		query.setString(key1, key2);
		Admin admin = (Admin) query.uniqueResult();
		System.out.println(admin);
		HibernateUtils.closeSession();
		return admin;
	}

	@Override
	public boolean updateadmin(Admin admin) throws SQLException {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();
		Admin ad = (Admin)session.get(Admin.class,admin.getA_id());
		System.out.println("更新ID。。。。"+admin.getA_id());
		ad.setA_email(admin.getA_email());
		ad.setA_name(admin.getA_name());
		ad.setA_tel(admin.getA_tel());
		ad.setA_username(admin.getA_username());
		ad.setA_url(admin.getA_url());
		System.out.println("确认保存路径。。。。"+ad.getA_url());
		//ad.setA_password(admin.getA_password());
		session.update(ad);
		/*String hql = "update Admin set a_username=?, a_name=?, a_tel=?, a_email=? where a_id=?";
		Query query = session.createQuery(hql);
		query.setString(0, admin.getA_username());
		query.setString(1, admin.getA_name());
		System.out.println("asdasdasd111"+admin.getA_name());
		query.setString(2, admin.getA_tel());
		query.setString(3, admin.getA_email());
		query.setInteger(4, admin.getA_id());
		int i = query.executeUpdate();*/
		trans.commit();
		/*System.out.println("获取I：---"+i);
		if(i>0){
			return true;
		}
		else{
			return false;

		}*/
		return true;
	}

	@Override
	public boolean delectadmin(Admin admin) throws SQLException {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();
		Admin ad = (Admin)session.get(Admin.class, admin.getA_id());
		session.delete(ad);
		trans.commit();
		return true;
	}

	@Override
	public boolean saveadmin(Admin admin) throws SQLException {
		// TODO Auto-generated method stub
		Session session = HibernateUtils.getSession();
		Transaction trans = session.beginTransaction();
		session.save(admin);
		trans.commit();
		return true;
	}


}
