package com.ecommerce.zedSports.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "queries")
@NamedNativeQueries({ 
	  @NamedNativeQuery(name = "getAllUserSpecificQueries",query = "FROM QueriesEntity WHERE mobileNumber=:mobileNumber",resultClass = QueriesEntity.class),
	  @NamedNativeQuery(name = "getAllNotRespondedQueries",query = "FROM QueriesEntity WHERE isResponded=:isResponded",resultClass = QueriesEntity.class)
	})
public class QueriesEntity {
	
	@Id
	@GenericGenerator(name = "queryId", strategy = "increment")
	@GeneratedValue(generator = "queryId")
	@Column(name = "query_id")
	private int queryId;
	@Column(name = "username")
	private String userName;
	@Column(name = "email")
	private String email;
	@Column(name = "mobile")
	private String mobileNumber;
	@Column(name = "subject")
	private String subject;
	@Column(name = "message",columnDefinition="longtext")
	private String message;
	@Column(name = "response",columnDefinition="longtext")
	private String response;
	@Column(name = "is_responded")
	private int isResponded;
	@Column(name = "query_created_date")
	private String queryCreatedDate;
	@Column(name = "query_responded_date")
	private String respondedTime;
	
	public int getQueryId() {
		return queryId;
	}
	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public int getIsResponded() {
		return isResponded;
	}
	public void setIsResponded(int isResponded) {
		this.isResponded = isResponded;
	}
	
	public String getQueryCreatedDate() {
		return queryCreatedDate;
	}
	public void setQueryCreatedDate(String queryCreatedDate) {
		this.queryCreatedDate = queryCreatedDate;
	}
	public String getRespondedTime() {
		return respondedTime;
	}
	public void setRespondedTime(String respondedTime) {
		this.respondedTime = respondedTime;
	}
	
	@Override
	public String toString() {
		return "QueriesEntity [queryId=" + queryId + ", userName=" + userName + ", email=" + email + ", mobileNumber="
				+ mobileNumber + ", subject=" + subject + ", message=" + message + ", response=" + response
				+ ", isResponded=" + isResponded + ", queryCreatedDate=" + queryCreatedDate + ", respondedTime="
				+ respondedTime + "]";
	}
}
