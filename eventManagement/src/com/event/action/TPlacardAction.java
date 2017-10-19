package com.event.action;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;

import com.event.domain.TPlacard;
import com.event.domain.TUser;
import com.event.service.TPlacardService;
import com.event.util.PageBean;
import com.event.util.UploadUtil;
import com.opensymphony.xwork2.ActionContext;

public class TPlacardAction {

	private TPlacardService tPlacardService;
	
	private TPlacard tPlacard;
	
	private PageBean pageBean;
	
	private File files;
	
	private String contents;
	
	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public File getFiles() {
		return files;
	}

	public void setFiles(File files) {
		this.files = files;
	}

	public TPlacardService gettPlacardService() {
		return tPlacardService;
	}

	public void settPlacardService(TPlacardService tPlacardService) {
		this.tPlacardService = tPlacardService;
	}

	public TPlacard gettPlacard() {
		return tPlacard;
	}

	public void setTPlacard(TPlacard tPlacard) {
		this.tPlacard = tPlacard;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public String AllPlacard(){
		if(pageBean == null){
			pageBean = new PageBean();
			pageBean.setCurrentPage(0);
		}
		DetachedCriteria dc = DetachedCriteria.forClass(TPlacard.class);
		dc.addOrder(Order.desc("placardTime"));
		TUser t = (TUser) ActionContext.getContext().getSession().get("login");
		if(t.getUserPriviliage()>1){
			pageBean = tPlacardService.getPageBeanList(dc, pageBean.getCurrentPage());
			ActionContext.getContext().put("pageBean", pageBean);
		}else{
			List<TPlacard> list = tPlacardService.findByCondition(dc);
			ActionContext.getContext().put("tPList", list);
		}
		
		return "placard";
	}
	
	public String UpdatePlacard(){
		TPlacard tp = tPlacardService.getEntryById(tPlacard.getPlacardId());
		tp.setPlacardTime(new Timestamp(System.currentTimeMillis()));
		tPlacardService.saveEntry(tp);
		return AllPlacard();
	}
	
	public String DeletePlacard(){
		tPlacardService.deleteEntry(tPlacard.getPlacardId());
		return AllPlacard();
	}

	public String AddPlacard(){
		TUser t = (TUser) ActionContext.getContext().getSession().get("login");
		if(files!= null){
			UploadUtil up = new UploadUtil();
			String fileName = up.uploadOneByTable("Placard", files);
			tPlacard.setPlacardUrl(fileName);
		}
		tPlacard.setPlacardContents(contents);
		tPlacard.setUserName(t.getUserRealname());
		tPlacard.setPlacardTime(new Timestamp(System.currentTimeMillis()));
		tPlacardService.saveEntry(tPlacard);
		return "addPlacard";
	}
}
