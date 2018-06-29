package com.appfone.akcp.Pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="akcpfeedback")
public class Akcpfeedback {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="feed_id")
	private int feed_id;
	
	@Column(name="feedbacker_name")
	private String feedbacker_name;
	
	@Column(name="feedbacker_email")
	private String feedbacker_email;
	@Column(name="feedbacker_subject")
	private String feedbacker_subject;
	@Column(name="feedbacker_phone")
	private String feedbacker_phone;
	@Column(name="feedbacker_msg")
	private String feedbacker_msg;
	public int getFeed_id() {
		return feed_id;
	}
	public void setFeed_id(int feed_id) {
		this.feed_id = feed_id;
	}
	public String getFeedbacker_name() {
		return feedbacker_name;
	}
	public void setFeedbacker_name(String feedbacker_name) {
		this.feedbacker_name = feedbacker_name;
	}
	public String getFeedbacker_email() {
		return feedbacker_email;
	}
	public void setFeedbacker_email(String feedbacker_email) {
		this.feedbacker_email = feedbacker_email;
	}
	public String getFeedbacker_subject() {
		return feedbacker_subject;
	}
	public void setFeedbacker_subject(String feedbacker_subject) {
		this.feedbacker_subject = feedbacker_subject;
	}
	public String getFeedbacker_phone() {
		return feedbacker_phone;
	}
	public void setFeedbacker_phone(String feedbacker_phone) {
		this.feedbacker_phone = feedbacker_phone;
	}
	public String getFeedbacker_msg() {
		return feedbacker_msg;
	}
	public void setFeedbacker_msg(String feedbacker_msg) {
		this.feedbacker_msg = feedbacker_msg;
	}
	
	

}
