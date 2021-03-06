package com.event.domain;

import java.sql.Timestamp;

// Generated 2017-6-11 9:12:32 by Hibernate Tools 3.2.2.GA


/**
 * TPlacard generated by hbm2java
 */
public class TPlacard implements java.io.Serializable {

	private Integer placardId;
	private String placardTitle;
	private String placardContents;
	private String placardUrl;
	private String userName;
	private Timestamp placardTime;
	
	public Timestamp getPlacardTime() {
		return placardTime;
	}

	public void setPlacardTime(Timestamp placardTime) {
		this.placardTime = placardTime;
	}

	public TPlacard() {
	}

	public TPlacard(String placardTitle, String placardContent, String placardUrl, String userName) {
		this.placardTitle = placardTitle;
		this.placardContents = placardContent;
		this.placardUrl = placardUrl;
		this.userName = userName;
	}

	public Integer getPlacardId() {
		return this.placardId;
	}

	public void setPlacardId(Integer placardId) {
		this.placardId = placardId;
	}

	public String getPlacardTitle() {
		return this.placardTitle;
	}

	public void setPlacardTitle(String placardTitle) {
		this.placardTitle = placardTitle;
	}

	public String getPlacardContents() {
		return placardContents;
	}

	public void setPlacardContents(String placardContents) {
		this.placardContents = placardContents;
	}

	public String getPlacardUrl() {
		return this.placardUrl;
	}

	public void setPlacardUrl(String placardUrl) {
		this.placardUrl = placardUrl;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "TPlacard [placardId=" + placardId + ", placardTitle=" + placardTitle + ", placardContent="
				+ placardContents + ", placardUrl=" + placardUrl + ", userName=" + userName + ", placardTime="
				+ placardTime + "]";
	}
	


}
