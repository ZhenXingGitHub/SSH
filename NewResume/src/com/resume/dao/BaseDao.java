package com.resume.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


public interface BaseDao<T> {
	
	/**
	 *  获得某个表中所有的属性
	 * @return 结果集
	 */
	public List<T> getAllEntry();
	
	/**
	 * 删除可持久化对象
	 * @param t  需要删除的对象
	 */
	public void delete(T t);
	
	/**
	 * 按条件查询
	 * @param values   条件的map集合, String: 为数据库列名  Object: 所要查询的值
	 * @return 查询出来的集合
	 */
	public List<T> getEntryByCondition(Map<String,Object> values);
	
	/**
	 * 更新对象
	 * @param t    需要更新的对象
	 */
	public void updateByObject(T t);
	
	/**
	 * 添加对象
	 * @param t   需要添加的可持久化对象 
	 */
	public void addByObject(T t);
	
	/**
	 * 通过主键获取单个对象
	 * @param id   序列化的主键&其他属性(唯一)
	 * @return 返回对象
	 */
	public T getSingleById(Serializable id);
	
}
