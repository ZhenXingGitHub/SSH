package com.event.service;

import java.util.List;

import com.event.domain.TUser;
import com.event.service.base.CommonService;

public interface TUserService extends CommonService<TUser>{
	
	/**
	 * 登陆
	 * @param tUser
	 * @return
	 */
	public List<TUser> login(TUser tUser);
	
	/**
	 * 得到全部的客服
	 * @return
	 */
	public List<TUser> getAllCs(int n);

}
