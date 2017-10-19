package com.event.domain;
// Generated 2017-6-11 9:12:32 by Hibernate Tools 3.2.2.GA

import java.sql.Timestamp;
public class TRecord implements java.io.Serializable {

	private Integer recordId;
	private TEvent TEvent;
	private String recordForm;
	private String recordContent;
	private Timestamp recordTime;
	public Integer getRecordId() {
		return recordId;
	}
	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}
	public TEvent getTEvent() {
		return TEvent;
	}
	public void setTEvent(TEvent tEvent) {
		TEvent = tEvent;
	}
	public String getRecordForm() {
		return recordForm;
	}
	public void setRecordForm(String recordForm) {
		this.recordForm = recordForm;
	}
	public String getRecordContent() {
		return recordContent;
	}
	public void setRecordContent(String recordContent) {
		this.recordContent = recordContent;
	}
	public Timestamp getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(Timestamp recordTime) {
		this.recordTime = recordTime;
	}
	@Override
	public String toString() {
		return "TRecord [recordId=" + recordId + ", TEvent=" + TEvent + ", recordForm=" + recordForm
				+ ", recordContent=" + recordContent + ", recordTime=" + recordTime + "]";
	}
	
	
	
}
