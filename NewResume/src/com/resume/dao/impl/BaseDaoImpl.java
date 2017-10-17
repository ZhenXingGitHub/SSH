package com.resume.dao.impl;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.metadata.ClassMetadata;

import com.resume.dao.BaseDao;
import com.resume.util.HibernateUtils;

public class BaseDaoImpl<T> implements BaseDao<T> {
	private Class clazz;
	
	private ClassMetadata classMetadata;
	public BaseDaoImpl() {
		ParameterizedType type = (ParameterizedType)this.getClass().getGenericSuperclass();	
		this.clazz = (Class)type.getActualTypeArguments()[0];  //获取到子类对应的具体类的class
		this.classMetadata = HibernateUtils.getSessionFactory().getClassMetadata(clazz); //获得数据库元信息
	}
	
	
	public List<T> getAllEntry() {
		Session session = HibernateUtils.getSession();
		Transaction ts=session.beginTransaction();
		List<T> list=session.createQuery("from "+clazz.getName()).list();
		
		ts.commit();
		session.close();
		return list;
	}

	public void delete(T t) {
		Session session = HibernateUtils.getSession();
		Transaction ts=session.beginTransaction();
		session.delete(t);
		ts.commit();
		session.close();
	}

	public List<T> getEntryByCondition(Map<String,Object> values) {
		StringBuffer bf=new StringBuffer();
		bf.append("from "+this.clazz.getName());
		bf.append(" where 1=1 ");
		for(Entry<String, Object> en:values.entrySet()){
			bf.append(" and "+en.getKey()+"=:"+en.getKey());
		}
		Session session = HibernateUtils.getSession();
		Query qy=session.createQuery(bf.toString());
		for(Entry<String, Object> en:values.entrySet()){
			qy.setParameter(en.getKey(), en.getValue());
		}
		return qy.list();
	}

	public void updateByObject(T t) {
		System.out.println("update1!");
		Session session = HibernateUtils.getSession();
		Transaction tr=session.beginTransaction();
		session.update(t);
		tr.commit();
		session.close();
	}

	public void addByObject(T t) {
		Session session = HibernateUtils.getSession();
		Transaction tr=session.beginTransaction();
		session.save(t);
		tr.commit();
		session.close();
		
	}


	@Override
	public T getSingleById(Serializable id) {
		Session session = HibernateUtils.getSession();
		return (T)session.get(clazz.getName(), id);
	}

}
