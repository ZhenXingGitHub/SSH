package com.event.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.event.domain.TEvent;
import com.event.domain.TUser;
import com.event.service.TEventService;
import com.event.service.TUserService;
import com.event.util.TimeUtils;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class TEventAction {

	private TEventService tEventService;
	
	private TEvent tEvent;
	
	private TUserService tuserService;

	private int kfID;
	
	private int total;// 1 ��ѯ����ʷ�¼� 2��ѯ��δ�����¼�
	
	private Date ksTime;
	
	private Date jsTime;
	
	private int state=1;
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getKsTime() {
		return ksTime;
	}

	public void setKsTime(Date ksTime) {
		this.ksTime = ksTime;
	}

	public Date getJsTime() {
		return jsTime;
	}

	public void setJsTime(Date jsTime) {
		this.jsTime = jsTime;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void settEvent(TEvent tEvent) {
		this.tEvent = tEvent;
	}

	public int getKfID() {
		return kfID;
	}

	public void setKfID(int kfID) {
		this.kfID = kfID;
	}

	public TEventService gettEventService() {
		return tEventService;
	}

	public void settEventService(TEventService tEventService) {
		this.tEventService = tEventService;
	}

	public TEvent gettEvent() {
		return tEvent;
	}

	public void setTEvent(TEvent tEvent) {
		this.tEvent = tEvent;
	}


	public TUserService getTuserService() {
		return tuserService;
	}

	public void setTuserService(TUserService tuserService) {
		this.tuserService = tuserService;
	}

	public String Event(){
		TUser tUser = (TUser)ActionContext.getContext().getSession().get("login");
		DetachedCriteria dc = DetachedCriteria.forClass(TUser.class);
		dc.add(Restrictions.eq("userPriviliage",1));
		List<TUser> kfList = tuserService.findByCondition(dc);
		ActionContext.getContext().put("kfList", kfList);
		List<TEvent> list = null;
		if(tUser.getUserPriviliage()>= 2){
			list = tEventService.findAllEntry();
			ActionContext.getContext().put("eventList", list);
		}else if(tUser.getUserPriviliage()== 1){
			list = tEventService.getEvent("TUserByKefuId.userId",tUser.getUserId());
			ActionContext.getContext().put("eventList", list);
		}else if(tUser.getUserPriviliage()== 0){
			list = tEventService.getEvent("TUserByEventCommitId.userId",tUser.getUserId());
			ActionContext.getContext().put("kheventList", list);
			return "kheventList";
		}
		return "eventList";
	}
	
	public String TotalEvent(){//���¼� 1 ������ʷ�¼� 2 ����δ�����¼�
		List<TEvent> list = tEventService.findAllEntry();
		DetachedCriteria dc = DetachedCriteria.forClass(TUser.class);
		dc.add(Restrictions.eq("userPriviliage",1));
		List<TUser> kfList = tuserService.findByCondition(dc);
		ActionContext.getContext().put("kfList", kfList);
		if(total==1){
			ActionContext.getContext().put("AllHistoryEvent", list);
		}
		if(total==2){
			ActionContext.getContext().put("AllNotHandleEvent", list);
		}
		return "eventList";
	}
	
	public String SelectEvent() throws ParseException{
		DetachedCriteria dc = DetachedCriteria.forClass(TEvent.class);
		dc.add(Restrictions.eq("eventStatus", state));
		if(tEvent.getEventTitle()!= null && !tEvent.getEventTitle().equals("")){
			dc.add(Restrictions.like("eventTitle", "%" + tEvent.getEventTitle() + "%"));
		}
		dc.addOrder(Order.desc("eventStarttime"));
		if(ksTime!=null || jsTime!=null){
			System.out.println("js"+jsTime);
			if(TimeUtils.DateToString(ksTime).length()>0 && TimeUtils.DateToString(jsTime).length()>0){
				dc.add(Restrictions.between("eventStarttime", ksTime,
						jsTime));
			}else if(TimeUtils.DateToString(jsTime).length()>0 && ksTime==null){
				dc.add(Restrictions.between("eventStarttime", TimeUtils.StringToDate("2017-10-04"),
						jsTime));
			}else{
				dc.add(Restrictions.between("eventStarttime", ksTime,
						new Date()));
			}
		}
		List<TEvent> list = tEventService.findByCondition(dc);
		ActionContext.getContext().put("adminEvent", list);
		ActionContext.getContext().put("state", state);
		return "adminEvent";
	}
	
	public String FeedbackEvent(){
		TEvent te = tEventService.getEntryById(tEvent.getEventId());
		te.setEventStatus(2);
		tEventService.updateEntry(te);
		return "updateEvent";
	}
	
	public String AddEvent(){
		TUser t = (TUser)ActionContext.getContext().getSession().get("login");
		if(t.getUserPriviliage()>1){
			tEvent.setTUserByLeadId(t);
		}else{
			tEvent.setTUserByEventCommitId(t);
		}
		Date now = new Date();
		tEvent.setEventStarttime(now);
		tEvent.setEventStatus(0);
		tEventService.saveEntry(tEvent);
		return "updateEvent";
	}
	
	public String DeleteEvent(){//ɾ���¼�
		tEventService.deleteEntry(tEvent.getEventId());
		if(total==1 || total == 2){
			return TotalEvent();
		}else if(total == 3){
			return MyHandleEvent();
		}
		else{
			return "updateEvent";
		}
	}
	
	public String HandleEvent(){//�¼�����
		TUser t = (TUser)ActionContext.getContext().getSession().get("login");
		TEvent te = tEventService.getEntryById(tEvent.getEventId());
		te.setEventStatus(1);
		te.setEventStarttime(new Date());
		if(t.getUserPriviliage()>1){
			te.setTUserByLeadId(t);
		}else{
			te.setTUserByKefuId(t);
		}
		tEventService.updateEntry(te);
		if(total==1 || total == 2){
			return TotalEvent();
		}else if(total == 3){
			if(state == 1){
				return MyHandleEvent();
			}else{
				return AllFeedbackEvent();
			}
		}else{
			return "updateEvent";
		}
	}
	
	public String AllFeedbackEvent(){
		
		List<TEvent> list = tEventService.getEvent("eventStatus", 2);
		ActionContext.getContext().put("adminEvent", list);
		ActionContext.getContext().put("state", 2);
		return "adminEvent";
	}
	
	public String MyHandleEvent(){
		TUser t = (TUser)ActionContext.getContext().getSession().get("login");
		List<TEvent> listEvent = null;
		if(t.getUserPriviliage()>= 2){
			listEvent = tEventService.getEvent("TUserByLeadId.userId",t.getUserId());
		}
		if(t.getUserPriviliage()== 1){
			listEvent = tEventService.getEvent("TUserByKefuId.userId",t.getUserId());
		}
		System.out.println(listEvent.size());
		ActionContext.getContext().put("adminEvent", listEvent);
		ActionContext.getContext().put("state", 1);
		return "adminEvent";
	}
	
	public String UpdateEvent(){//�¼�����
		TUser user = tuserService.getEntryById(kfID);
		System.out.println("total��֪��"+tEvent.getEventId());
		TEvent event = tEventService.getEntryById(tEvent.getEventId());
		event.setTUserByKefuId(user);
		if(total==1){
			event.setEventStatus(0);
			tEventService.updateEntry(event);
			return TotalEvent();
		}else{
			tEventService.updateEntry(event);
			return "updateEvent";
		}
	}
	
}
