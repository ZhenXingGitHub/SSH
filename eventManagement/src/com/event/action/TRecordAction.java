package com.event.action;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import com.event.domain.TEvent;
import com.event.domain.TRecord;
import com.event.domain.TUser;
import com.event.service.TEventService;
import com.event.service.TRecordService;
import com.opensymphony.xwork2.ActionContext;

public class TRecordAction {
	
	private TRecordService tRecordService;
	
	private TRecord tRecord;
	
	private TEventService tEventService;
	
	private int id;
	
	private String talks;
	
	public String getTalks() {
		return talks;
	}

	public void setTalks(String talks) {
		this.talks = talks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public TRecordService gettRecordService() {
		return tRecordService;
	}

	public void settRecordService(TRecordService tRecordService) {
		this.tRecordService = tRecordService;
	}

	public TRecord gettRecord() {
		return tRecord;
	}

	public void settRecord(TRecord tRecord) {
		this.tRecord = tRecord;
	}
	
	public TEventService gettEventService() {
		return tEventService;
	}

	public void settEventService(TEventService tEventService) {
		this.tEventService = tEventService;
	}

	public String FindTalk(){
		TEvent t = tEventService.getEntryById(id);
		DetachedCriteria dc = DetachedCriteria.forClass(TRecord.class);
		dc.add(Restrictions.eq("TEvent.eventId",id));
		dc.addOrder(Order.asc("recordTime"));
		List<TRecord> tRecords = tRecordService.findByCondition(dc);
		ActionContext.getContext().put("event", t);
		ActionContext.getContext().put("tRecords", tRecords);
		return "chat";
	}
	
	public void addTalks(){
		TUser tUser = (TUser) ActionContext.getContext().getSession().get("login");
		TEvent tEvent = tEventService.getEntryById(id);
		TRecord t = new TRecord();
		t.setRecordForm(tUser.getUserRealname());
		t.setTEvent(tEvent);
		t.setRecordContent(talks);
		t.setRecordTime(new Timestamp(System.currentTimeMillis()));
		tRecordService.saveEntry(t);
	}
	
	public void EventMG(){
		System.out.println(talks);
		TEvent t = tEventService.getEntryById(id);
		if(talks.equals("handle")){
			t.setEventStatus(1);
			tEventService.updateEntry(t);
		}else if(talks.equals("feedback")){
			t.setEventStatus(2);
			tEventService.updateEntry(t);
		}else{
			System.out.println("Ã»ÓÐÖµ");
		}
		ActionContext.getContext().put("event", t);
	}
	
}
