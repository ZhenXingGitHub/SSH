package com.event.action;

import java.util.List;
import java.util.Set;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.event.domain.TUser;
import com.event.service.TUserService;
import com.opensymphony.xwork2.ActionContext;

public class TUserAction {
	
	private String test;

	private TUserService tUserService;

	private TUser user;

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public TUser getUser() {
		return user;
	}

	public void setUser(TUser user) {
		this.user = user;
	}

	public TUserService gettUserService() {
		return tUserService;
	}

	public void settUserService(TUserService tUserService) {
		this.tUserService = tUserService;
	}

	public String login() {
		System.out.println("username: " + user.getUserName());

		List<TUser> list = tUserService.login(user);
		if (list.size() > 0) {
			TUser t = list.get(0);
			ActionContext.getContext().getSession().put("login", t);
			return "login";
		} else {
			return "login_error";
		}

	}
	
	public String logOff(){
		ActionContext.getContext().getSession().remove("login");
		return "login_error";
	}

	//
	public String getAllServicer() {
		
		TUser t =(TUser) ActionContext.getContext().getSession().get("login");
		ActionContext.getContext().put("login", t);
		System.out.println("权限："+t.getUserPriviliage());
		if(t.getUserPriviliage()>1){
			List<TUser> cylist = tUserService.getAllCs(2);
			ActionContext.getContext().put("zzlist", cylist);
			return "zzlist";
		}else if(t.getUserPriviliage()==1){
			List<TUser> cylist = tUserService.getAllCs(1);
			ActionContext.getContext().put("kflist", cylist);
			return "kflist";
		}else{
			/*TUser kh = tUserService.getEntryById(t.getUserId());
			ActionContext.getContext().put("kehu", kh);*/
			return "kehu";
		}	
	}
	
	public String getTypeList(){
		
		if(user.getUserPriviliage()>1){
			List<TUser> cylist = tUserService.getAllCs(2);
			ActionContext.getContext().put("zzlist", cylist);
			return "zzlist";
		}else if(user.getUserPriviliage()==1){
			List<TUser> cylist = tUserService.getAllCs(1);
			ActionContext.getContext().put("kflist", cylist);
			return "kflist";
		}else{
			List<TUser> cylist = tUserService.getAllCs(0);
			ActionContext.getContext().put("yhlist", cylist);
			return "yhlist";
		}	
	}
	
	public String findById(){
		
		TUser tu = tUserService.getEntryById(user.getUserId());
		ActionContext.getContext().put("tuser", tu);
		return "findById";
	}
	
	public String addEnty(){
		
		
		tUserService.saveEntry(user);
		ActionContext.getContext().put("tuser", user);
		return "updateEnty";
	}
	
	public String updatePassword(){
		TUser t =(TUser) ActionContext.getContext().getSession().get("login");
		t.setUserPassword(user.getUserPassword());
		tUserService.updateEntry(t);
		return logOff();
	}
	
	public String updateEnty(){
		
		TUser tu = tUserService.getEntryById(user.getUserId());
		tu.setUserRealname(user.getUserRealname());
		tu.setUserPhone(user.getUserPhone());
		tu.setUserEmail(user.getUserEmail());
		if(user.getUserPriviliage()!=null){
			tu.setUserPriviliage(user.getUserPriviliage());
		}
		if(user.getUserZt()!=null){
			tu.setUserZt(user.getUserZt());
		}
		
		tUserService.updateEntry(tu);
		ActionContext.getContext().put("tuser", tu);
		return "updateEnty";
	}

	public String deleteEnty(){
		
		tUserService.deleteEntry(user.getUserId());
		return "deleteEnty";
	}

	
}
