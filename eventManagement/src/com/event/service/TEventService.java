package com.event.service;

import java.util.List;

import com.event.domain.TEvent;
import com.event.service.base.CommonService;

public interface TEventService extends CommonService<TEvent>{

	public List<TEvent> getEvent(String tt, int n);
	
	
}
