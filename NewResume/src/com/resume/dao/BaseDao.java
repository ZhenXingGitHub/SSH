package com.resume.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


public interface BaseDao<T> {
	
	/**
	 *  ���ĳ���������е�����
	 * @return �����
	 */
	public List<T> getAllEntry();
	
	/**
	 * ɾ���ɳ־û�����
	 * @param t  ��Ҫɾ���Ķ���
	 */
	public void delete(T t);
	
	/**
	 * ��������ѯ
	 * @param values   ������map����, String: Ϊ���ݿ�����  Object: ��Ҫ��ѯ��ֵ
	 * @return ��ѯ�����ļ���
	 */
	public List<T> getEntryByCondition(Map<String,Object> values);
	
	/**
	 * ���¶���
	 * @param t    ��Ҫ���µĶ���
	 */
	public void updateByObject(T t);
	
	/**
	 * ��Ӷ���
	 * @param t   ��Ҫ��ӵĿɳ־û����� 
	 */
	public void addByObject(T t);
	
	/**
	 * ͨ��������ȡ��������
	 * @param id   ���л�������&��������(Ψһ)
	 * @return ���ض���
	 */
	public T getSingleById(Serializable id);
	
}
