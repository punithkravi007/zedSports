package com.ecommerce.zedSports.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@NamedNativeQueries({
		@NamedNativeQuery(name = "callGetAllOrderDeatilsById", query = "CALL GetOrderDeatilsForUser(:userId)", resultClass = OrderViewEntity.class), 
		@NamedNativeQuery(name = "callGetAllOrderDeatils", query = "CALL GetOrderDeatils()", resultClass = OrderViewEntity.class)
})
@Entity
@Table(name = "order_details")
public class OrderViewEntity {

	@Id
	@GenericGenerator(name = "orderViewId", strategy = "increment")
	@GeneratedValue(generator = "orderViewId")
	@Column(name = "order_id")
	private int id;
	@Column(name = "order_code")
	private String orderId;
	@Column(name = "product_id")
	private String productId;
	@Column(name = "product_name", columnDefinition = "longtext")
	private String productName;
	@Column(name = "product_category")
	private String category;
	@Column(name = "delivery_address")
	private String deliveryAddress;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "size")
	private String size;
	@Column(name = "original_amount")
	private String originalAmount;
	@Column(name = "offer_amount")
	private String offerAmount;
	@Column(name = "billed_amount")
	private String billedAmount;
	@Column(name = "created_date")
	private String createdDate;
	@Column(name = "shippment_details")
	private int shippingStatus;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "user_first_name")
	private String firstName;
	@Column(name = "user_last_name")
	private String lastName;
	@Column(name = "user_email")
	private String email;
	@Column(name = "user_phone")
	private String phone;
	@Column(name = "user_gender")
	private String gender;
	@Column(name = "user_date_of_birth")
	private String dob;
	@Column(name = "user_date_of_joined")
	private String doj;
	@Column(name = "user_is_active")
	private int isUserActive;
	
	@Column(name = "product_image_1", columnDefinition = "LONGBLOB")
	private byte[] productPhoto1;
	@Column(name = "product_image_2", columnDefinition = "LONGBLOB")
	private byte[] productPhoto2;
	@Column(name = "product_image_3", columnDefinition = "LONGBLOB")
	private byte[] productPhoto3;
	
	@Transient
	private String binaryPhoto1;
	@Transient
	private String binaryPhoto2;
	@Transient
	private String binaryPhoto3;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getOriginalAmount() {
		return originalAmount;
	}
	public void setOriginalAmount(String originalAmount) {
		this.originalAmount = originalAmount;
	}
	public String getOfferAmount() {
		return offerAmount;
	}
	public void setOfferAmount(String offerAmount) {
		this.offerAmount = offerAmount;
	}
	public String getBilledAmount() {
		return billedAmount;
	}
	public void setBilledAmount(String billedAmount) {
		this.billedAmount = billedAmount;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public int getShippingStatus() {
		return shippingStatus;
	}
	public void setShippingStatus(int shippingStatus) {
		this.shippingStatus = shippingStatus;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public int getIsUserActive() {
		return isUserActive;
	}
	public void setIsUserActive(int isUserActive) {
		this.isUserActive = isUserActive;
	}
	public byte[] getProductPhoto1() {
		return productPhoto1;
	}
	public void setProductPhoto1(byte[] productPhoto1) {
		this.productPhoto1 = productPhoto1;
	}
	public byte[] getProductPhoto2() {
		return productPhoto2;
	}
	public void setProductPhoto2(byte[] productPhoto2) {
		this.productPhoto2 = productPhoto2;
	}
	public byte[] getProductPhoto3() {
		return productPhoto3;
	}
	public void setProductPhoto3(byte[] productPhoto3) {
		this.productPhoto3 = productPhoto3;
	}
	public String getBinaryPhoto1() {
		return binaryPhoto1;
	}
	public void setBinaryPhoto1(String binaryPhoto1) {
		this.binaryPhoto1 = binaryPhoto1;
	}
	public String getBinaryPhoto2() {
		return binaryPhoto2;
	}
	public void setBinaryPhoto2(String binaryPhoto2) {
		this.binaryPhoto2 = binaryPhoto2;
	}
	public String getBinaryPhoto3() {
		return binaryPhoto3;
	}
	public void setBinaryPhoto3(String binaryPhoto3) {
		this.binaryPhoto3 = binaryPhoto3;
	}
	@Override
	public String toString() {
		return "OrderViewEntity [id=" + id + ", orderId=" + orderId + ", productId=" + productId + ", productName="
				+ productName + ", category=" + category + ", deliveryAddress=" + deliveryAddress + ", quantity="
				+ quantity + ", size=" + size + ", originalAmount=" + originalAmount + ", offerAmount=" + offerAmount
				+ ", billedAmount=" + billedAmount + ", createdDate=" + createdDate + ", shippingStatus="
				+ shippingStatus + ", userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", phone=" + phone + ", gender=" + gender + ", dob=" + dob + ", doj=" + doj
				+ ", isUserActive=" + isUserActive + "]";
	}
}
