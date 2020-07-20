package com.ecommerce.zedSports.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="orders")
public class OrderEntity {

	@Id
	@GenericGenerator(name = "orderId", strategy = "increment")
	@GeneratedValue(generator = "orderId")
	@Column(name = "order_id")
	private int id;
	@Column(name = "order_code")
	private String orderCode;
	@Column(name = "product_id")
	private int productId;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "address_id")
	private int addressId;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "size")
	private String size;
	@Column(name = "original_amount")
	private String originalPrice;
	@Column(name = "offer_amount")
	private String offerPrice;
	@Column(name = "created_date")
	private String createdDate;
	@Column(name = "shippment_details")
	private int orderTrackId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
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
	public String getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(String originalPrice) {
		this.originalPrice = originalPrice;
	}
	public String getOfferPrice() {
		return offerPrice;
	}
	public void setOfferPrice(String offerPrice) {
		this.offerPrice = offerPrice;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public int getOrderTrackId() {
		return orderTrackId;
	}
	public void setOrderTrackId(int orderTrackId) {
		this.orderTrackId = orderTrackId;
	}
	
	@Override
	public String toString() {
		return "OrderEntity [id=" + id + ", orderCode=" + orderCode + ", productId=" + productId + ", userId=" + userId
				+ ", addressId=" + addressId + ", quantity=" + quantity + ", size=" + size + ", originalPrice="
				+ originalPrice + ", offerPrice=" + offerPrice + ", createdDate=" + createdDate + ", orderTrackId="
				+ orderTrackId + "]";
	}
	
	
	
}
