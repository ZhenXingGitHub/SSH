package com.event.domain;
// Generated 2017-6-11 9:12:32 by Hibernate Tools 3.2.2.GA

import java.util.Date;

/**
 * TEvent generated by hbm2java
 */
public class TEvent implements java.io.Serializable {

	private Integer eventId;
	private TUser TUserByLeadId;
	private TUser TUserByEventCommitId;
	private TUser TUserByKefuId;
	private String eventTitle;
	private String eventContent;
	private Date eventStarttime;
	private String eventUrl;
	private Integer eventStatus;// 0 处理中 1 已处理 2 反馈
	public Integer getEventId() {
		return eventId;
	}
	public void setEventId(Integer eventId) {
		this.eventId = eventId;
	}
	public TUser getTUserByLeadId() {
		return TUserByLeadId;
	}
	public void setTUserByLeadId(TUser tUserByLeadId) {
		TUserByLeadId = tUserByLeadId;
	}
	public TUser getTUserByEventCommitId() {
		return TUserByEventCommitId;
	}
	public void setTUserByEventCommitId(TUser tUserByEventCommitId) {
		TUserByEventCommitId = tUserByEventCommitId;
	}
	public TUser getTUserByKefuId() {
		return TUserByKefuId;
	}
	public void setTUserByKefuId(TUser tUserByKefuId) {
		TUserByKefuId = tUserByKefuId;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public String getEventContent() {
		return eventContent;
	}
	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}
	public Date getEventStarttime() {
		return eventStarttime;
	}
	public void setEventStarttime(Date eventStarttime) {
		this.eventStarttime = eventStarttime;
	}
	public String getEventUrl() {
		return eventUrl;
	}
	public void setEventUrl(String eventUrl) {
		this.eventUrl = eventUrl;
	}
	public Integer getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(Integer eventStatus) {
		this.eventStatus = eventStatus;
	}
	@Override
	public String toString() {
		return "TEvent [eventId=" + eventId + ", TUserByLeadId=" + TUserByLeadId + ", TUserByEventCommitId="
				+ TUserByEventCommitId + ", TUserByKefuId=" + TUserByKefuId + ", eventTitle=" + eventTitle
				+ ", eventContent=" + eventContent + ", eventStarttime=" + eventStarttime + ", eventUrl=" + eventUrl
				+ ", eventStatus=" + eventStatus + "]";
	}
	
	
	
	
	
	
	
}
