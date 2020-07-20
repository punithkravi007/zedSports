package com.ecommerce.zedSports.Entities;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Cacheable
@Table(name = "address")
public class AddressEntity {

	@Id
	@GenericGenerator(name = "addressId", strategy = "increment")
	@GeneratedValue(generator = "addressId")
	@Column(name = "address_id")
	private int id;
	@Column(name = "address_1")
	private String addressOne;
	@Column(name = "address_2")
	private String addressTwo;
	@Column(name = "city")
	private String city;
	@Column(name = "state")
	private String state;
	@Column(name = "country")
	private String country;
	@Column(name = "postal_code")
	private String pincode;
	@Column(name="user_id")
	private int userId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddressOne() {
		return addressOne;
	}

	public void setAddressOne(String addressOne) {
		this.addressOne = addressOne;
	}

	public String getAddressTwo() {
		return addressTwo;
	}

	public void setAddressTwo(String addressTwo) {
		this.addressTwo = addressTwo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "AddressEntity [id=" + id + ", addressOne=" + addressOne + ", addressTwo=" + addressTwo + ", city="
				+ city + ", state=" + state + ", country=" + country + ", pincode=" + pincode + ", userId=" + userId
				+ "]";
	}
}
