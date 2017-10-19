package com.event.service.base;
import java.io.Serializable;
import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import com.event.util.PageBean;

public interface CommonService<T> {

	/**
	 * 鏌ヨ琛ㄤ腑鎵�鏈夌殑鏁版嵁
	 * @return
	 */
	public List<T> findAllEntry();

	/**
	 * 淇濆瓨鏁版嵁
	 * 
	 * @param t
	 */
	public void saveEntry(T t);

	/**
	 * 锟斤拷锟铰讹拷锟斤拷
	 * 
	 * @param t
	 */
	public void updateEntry(T t);

	/**
	 * 鏇存柊鏁版嵁
	 * 
	 * @param id
	 */
	public void deleteEntry(Serializable id);

	/**
	 * 鏍规嵁id寰楀埌鎸佷箙鍖栫殑瀵硅薄
	 * 
	 * @param id
	 * @return
	 */
	public T getEntryById(Serializable id);

	
	public List<T> findByCondition(DetachedCriteria dc);
	
	public PageBean getPageBeanList(DetachedCriteria dc, Integer startPage);

}
