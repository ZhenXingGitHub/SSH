package com.event.service.base.impl;
import java.io.Serializable;
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import com.event.dao.base.CommonDao;
import com.event.service.base.CommonService;
import com.event.util.PageBean;


public class CommonServiceImpl<T> implements CommonService<T>{
	
	private CommonDao commonDao;
	private Integer start;
	

	public CommonDao getCommonDao() {
		return commonDao;
	}

	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

	@Override
	public List<T> findAllEntry() {
		return commonDao.findAllEntry();
	}

	@Override
	public void saveEntry(T t) {
		commonDao.saveEntry(t);
	}

	@Override
	public void updateEntry(T t) {
		System.out.println("gx");
		commonDao.updateEntry(t);
	}

	@Override
	public void deleteEntry(Serializable id) {
		commonDao.deleteEntry(id);
	}
	

	@Override
	public T getEntryById(Serializable id) {
		return (T) commonDao.getEntryById(id);
	}
	

	@Override
	public List<T> findByCondition(DetachedCriteria dc) {
		return commonDao.findByCondition(dc);
	}

	@Override
	public PageBean getPageBeanList(DetachedCriteria dc, Integer startPage) {
		PageBean pb = new PageBean();
		List<T> list = null;
		int num = 2;
		List<T> lists = commonDao.findByCondition(dc);
		int i = lists.size()-num*(startPage);
		System.out.println("-----------"+i);
		if(i<num){
			list = commonDao.getPageList(dc, num*startPage,i);
		}else{
			list = commonDao.getPageList(dc, num*startPage,num);
		}
		pb.setTotalPage(pb.countTotalPage(num, lists.size()));
		pb.setAllRow(lists.size());
		pb.setCurrentPage(startPage);
		pb.setList(list);
		return pb;
	}

}
