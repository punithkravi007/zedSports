package com.ecommerce.zedSports.Entities;

import java.util.List;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Cacheable
@Table(name = "user")
public class UserEntity {

	@Id
	@GenericGenerator(name = "userId", strategy = "increment")
	@GeneratedValue(generator = "userId")
	@Column(name = "user_id")
	private int userId;
	@Column(name = "user_first_name")
	private String userFirstName;
	@Column(name = "user_last_name")
	private String userLastName;
	@Column(name = "user_email")
	private String userEmail;
	@Column(name = "user_password")
	private String userPasword;
	@Column(name = "user_phone")
	private String userMobileNumber;
	@Column(name = "user_gender")
	private String userGender;
	@Column(name = "user_date_of_birth")
	private String userDateOfBirth;
	@Column(name = "user_date_of_joined")
	private String userDateOfJoined;
	@Column(name = "user_is_active")
	private int isUserActive;
	@Column(name = "is_user_online")
	private int isUserOnline;
	@Column(name = "user_role")
	private String userRole;
	@Transient
	private List<AddressEntity> addressEntity;
	@Transient
	private List<QueriesEntity> queriesEntities;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPasword() {
		return userPasword;
	}

	public void setUserPasword(String userPasword) {
		this.userPasword = userPasword;
	}

	public String getUserMobileNumber() {
		return userMobileNumber;
	}

	public void setUserMobileNumber(String userMobileNumber) {
		this.userMobileNumber = userMobileNumber;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserDateOfBirth() {
		return userDateOfBirth;
	}

	public void setUserDateOfBirth(String userDateOfBirth) {
		this.userDateOfBirth = userDateOfBirth;
	}

	public String getUserDateOfJoined() {
		return userDateOfJoined;
	}

	public void setUserDateOfJoined(String userDateOfJoined) {
		this.userDateOfJoined = userDateOfJoined;
	}

	public int getIsUserActive() {
		return isUserActive;
	}

	public void setIsUserActive(int isUserActive) {
		this.isUserActive = isUserActive;
	}

	public int getIsUserOnline() {
		return isUserOnline;
	}

	public void setIsUserOnline(int isUserOnline) {
		this.isUserOnline = isUserOnline;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public List<AddressEntity> getAddressEntity() {
		return addressEntity;
	}

	public void setAddressEntity(List<AddressEntity> addressEntity) {
		this.addressEntity = addressEntity;
	}

	public List<QueriesEntity> getQueriesEntities() {
		return queriesEntities;
	}

	public void setQueriesEntities(List<QueriesEntity> queriesEntities) {
		this.queriesEntities = queriesEntities;
	}

	@Override
	public String toString() {
		return "UserEntity [userId=" + userId + ", userFirstName=" + userFirstName + ", userLastName=" + userLastName
				+ ", userEmail=" + userEmail + ", userPasword=" + userPasword + ", userMobileNumber=" + userMobileNumber
				+ ", userGender=" + userGender + ", userDateOfBirth=" + userDateOfBirth + ", userDateOfJoined="
				+ userDateOfJoined + ", isUserActive=" + isUserActive + ", isUserOnline=" + isUserOnline + ", userRole="
				+ userRole + ", addressEntity=" + addressEntity + "]";
	}
}
