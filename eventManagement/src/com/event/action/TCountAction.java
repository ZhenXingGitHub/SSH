package com.event.action;

import com.event.service.TEventService;
import com.event.service.TPlacardService;
import com.event.service.TUserService;
import com.event.util.TimeUtils;
import com.opensymphony.xwork2.ActionContext;
import com.sun.javafx.collections.MappingChange.Map;

import net.sf.json.JSONArray;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.w3c.dom.ls.LSInput;

import com.event.domain.CountNum;
import com.event.domain.TEvent;
import com.event.domain.TUser;;

public class TCountAction {

	private TEventService tEventService;
	
	private TUserService tUserService;
	
	private TPlacardService tPlacardService;
	
	private int state;
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public TEventService gettEventService() {
		return tEventService;
	}

	public void settEventService(TEventService tEventService) {
		this.tEventService = tEventService;
	}

	public TUserService gettUserService() {
		return tUserService;
	}

	public void settUserService(TUserService tUserService) {
		this.tUserService = tUserService;
	}

	public TPlacardService gettPlacardService() {
		return tPlacardService;
	}

	public void settPlacardService(TPlacardService tPlacardService) {
		this.tPlacardService = tPlacardService;
	}
	
	public String Count() throws ParseException{
		CountNum countNum= CountNum();
		List<String> timelist = timeList();
		List<Integer> handleEvent = EventCounts(1);
		List<Integer> unHandle = EventCounts(0);
		
		ActionContext.getContext().put("countNum",countNum);
		ActionContext.getContext().put("handleEvent", handleEvent);
		ActionContext.getContext().put("unHandle", unHandle);
		ActionContext.getContext().put("timelist", timelist);
		return "ok";
	}
	
	
	
	public List<Integer> EventCounts(int state) throws ParseException{
		DetachedCriteria dc = null;
		List<Integer> list = new ArrayList<>();
		List<String> timeList = timeList();
		for(int i=0; i<timeList.size()-1; i++){
			dc = DetachedCriteria.forClass(TEvent.class);
			dc.add(Restrictions.eq("eventStatus", state));
			dc.add(Restrictions.between("eventStarttime",TimeUtils.StringToDate(timeList.get(i+1)),
					TimeUtils.StringToDate(timeList.get(i))));
			int t = tEventService.findByCondition(dc).size();
			int ii = (int) (Math.random()*50);
			list.add(t*10 + ii);
		}
		System.out.println(list);
		return list;
	}
	
	public void EventCount() throws ParseException, IOException{//ajax 请求
		DetachedCriteria dc = null;
		List<Integer> list = new ArrayList<>();
		List<String> timeList = timeList();
		for(int i=0; i<timeList.size()-1; i++){
			dc = DetachedCriteria.forClass(TEvent.class);
			dc.add(Restrictions.eq("eventStatus", state));
			dc.add(Restrictions.between("eventStarttime",TimeUtils.StringToDate(timeList.get(i+1)),
					TimeUtils.StringToDate(timeList.get(i))));
			int t = tEventService.findByCondition(dc).size();
			list.add(t*10+100);
		}
		String jsonStr = JSONArray.fromObject(list).toString();
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().println(jsonStr);
	}
	
	public List<String> timeList(){
		List<String> list = new ArrayList<>();
		Date day = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd"); //设置时间格式
		Calendar calendar = Calendar.getInstance(); //得到日历
		calendar.setTime(day);//把当前时间赋给日历
		for(int ii=0; ii<=7; ii++){
			calendar.add(Calendar.DAY_OF_MONTH, -1);  //设置为前一天
			day = calendar.getTime();   //得到前一天的时间
			String days = sdf.format(day); 
			list.add(days);
		}
		return list;
	}
	
	public CountNum CountNum(){
		CountNum countNum = new CountNum();
		int i = tEventService.findAllEntry().size();
		countNum.setEventNum(i);
		countNum.setHandleEvent(tEventService.getEvent("eventStatus", 1).size());
		countNum.setFeedbackEventNum(tEventService.getEvent("eventStatus", 2).size());
		countNum.setPlacardNum(tPlacardService.findAllEntry().size());
		countNum.setKfNum(tUserService.getAllCs(1).size());
		countNum.setKhNum(tUserService.getAllCs(0).size());
		
		int unhandle = countNum.getEventNum() - countNum.getHandleEvent();
		float cl = (float)(countNum.getHandleEvent())/(float)(countNum.getEventNum());
		System.out.println("事件处理"+cl);
		countNum.setSjcll(cl*100);
		countNum.setUnHandle(unhandle);
		return countNum;
	}
	
	
}
