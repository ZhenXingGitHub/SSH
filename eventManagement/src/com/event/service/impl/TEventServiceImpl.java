package com.event.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.event.domain.TEvent;
import com.event.domain.TUser;
import com.event.service.TEventService;
import com.event.service.base.impl.CommonServiceImpl;

public class TEventServiceImpl extends CommonServiceImpl<TEvent> implements TEventService{

	public List<TEvent> getEvent(String t, int n){
		DetachedCriteria dc = DetachedCriteria.forClass(TEvent.class);
		dc.add(Restrictions.eq(t,n));
		List<TEvent> list=getCommonDao().findByCondition(dc);
		return list;
	}

	
}
