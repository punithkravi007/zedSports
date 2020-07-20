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
@Table(name = "cart")
public class CartEntity {

	@Id
	@GenericGenerator(name = "cartId", strategy = "increment")
	@GeneratedValue(generator = "cartId")
	@Column(name = "cart_id")
	private int cartId;
	@Column(name = "product_id")
	private int productId;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "time_created")
	private String createdTime;;
	@Column(name = "quantity")
	private int quantity;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
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
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Override
	public String toString() {
		return "CartEntity [cartId=" + cartId + ", productId=" + productId + ", userId=" + userId + ", createdTime="
				+ createdTime + ", quantity=" + quantity + "]";
	}
	
}
