package com.ecommerce.zedSports.Entities;

import java.util.List;

public class InvoiceEntity {

	private List<OrderViewEntity> entities;

	private int bagTotal;
	private int offerTotal;
	private int orderTotal;
	private int Total;
	private String deliveryAddress;
	private String creationDate;
	private int shippingStatus;
	
	private String firstName;
	private String lastName;
	private String mobileNumber;
	
	private String orderId;

	public List<OrderViewEntity> getEntities() {
		return entities;
	}

	public void setEntities(List<OrderViewEntity> entities) {
		this.entities = entities;
	}

	public int getBagTotal() {
		return bagTotal;
	}

	public void setBagTotal(int bagTotal) {
		this.bagTotal = bagTotal;
	}

	public int getOfferTotal() {
		return offerTotal;
	}

	public void setOfferTotal(int offerTotal) {
		this.offerTotal = offerTotal;
	}

	public int getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(int orderTotal) {
		this.orderTotal = orderTotal;
	}

	public int getTotal() {
		return Total;
	}

	public void setTotal(int total) {
		Total = total;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public int getShippingStatus() {
		return shippingStatus;
	}

	public void setShippingStatus(int shippingStatus) {
		this.shippingStatus = shippingStatus;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	@Override
	public String toString() {
		return "InvoiceEntity [entities=" + entities + ", bagTotal=" + bagTotal + ", offerTotal=" + offerTotal
				+ ", orderTotal=" + orderTotal + ", Total=" + Total + ", deliveryAddress=" + deliveryAddress
				+ ", creationDate=" + creationDate + ", shippingStatus=" + shippingStatus + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", mobileNumber=" + mobileNumber + "]";
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	
}
