package com.event.domain;
// Generated 2017-6-11 9:12:32 by Hibernate Tools 3.2.2.GA

/**
 * TTalk generated by hbm2java
 */
public class TTalk implements java.io.Serializable {

	private Integer talkId;
	private TUser TUserByKefuId;
	private TUser TUserByKehuId;

	public TTalk() {
	}

	public TTalk(TUser TUserByKefuId, TUser TUserByKehuId) {
		this.TUserByKefuId = TUserByKefuId;
		this.TUserByKehuId = TUserByKehuId;
	}

	public Integer getTalkId() {
		return this.talkId;
	}

	public void setTalkId(Integer talkId) {
		this.talkId = talkId;
	}

	public TUser getTUserByKefuId() {
		return this.TUserByKefuId;
	}

	public void setTUserByKefuId(TUser TUserByKefuId) {
		this.TUserByKefuId = TUserByKefuId;
	}

	public TUser getTUserByKehuId() {
		return this.TUserByKehuId;
	}

	public void setTUserByKehuId(TUser TUserByKehuId) {
		this.TUserByKehuId = TUserByKehuId;
	}

}