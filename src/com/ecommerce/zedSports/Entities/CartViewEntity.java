package com.ecommerce.zedSports.Entities;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "cart_details")
@NamedNativeQueries({ 
	  @NamedNativeQuery(
	    name = "callGetAllCartDeatilsById", 
	    query = "CALL GetCartDetails(:userId)", 
	    resultClass = CartViewEntity.class) 
	})
public class CartViewEntity {

	@Id
	@GenericGenerator(name = "cartViewId", strategy = "increment")
	@GeneratedValue(generator = "cartViewId")
	@Column(name = "product_id")
	private int productId;
	@Column(name = "product_code",columnDefinition="longtext")
	private String productCode;
	@Column(name = "product_name",columnDefinition="longtext")
	private String productName;
	@Column(name = "product_description",columnDefinition="longtext")
	private String productDescription;
	@Column(name = "product_quantity")
	private int productQuantity;
	@Column(name = "product_gender")
	private String productGender;
	@Column(name = "product_category")
	private String productCategory;
	@Column(name = "product_original_price")
	private String productOriginalPrice;
	@Column(name = "product_offer_price")
	private String productOfferPrice;
	@Column(name = "product_created_date")
	private String productCreatedDate;
	@Column(name = "product_is_active")
	private int isProductActive;
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
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductGender() {
		return productGender;
	}
	public void setProductGender(String productGender) {
		this.productGender = productGender;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductOriginalPrice() {
		return productOriginalPrice;
	}
	public void setProductOriginalPrice(String productOriginalPrice) {
		this.productOriginalPrice = productOriginalPrice;
	}
	public String getProductOfferPrice() {
		return productOfferPrice;
	}
	public void setProductOfferPrice(String productOfferPrice) {
		this.productOfferPrice = productOfferPrice;
	}
	public String getProductCreatedDate() {
		return productCreatedDate;
	}
	public void setProductCreatedDate(String productCreatedDate) {
		this.productCreatedDate = productCreatedDate;
	}
	public int getIsProductActive() {
		return isProductActive;
	}
	public void setIsProductActive(int isProductActive) {
		this.isProductActive = isProductActive;
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
		return "CartViewEntity [productId=" + productId + ", productCode=" + productCode + ", productName="
				+ productName + ", productDescription=" + productDescription + ", productQuantity=" + productQuantity
				+ ", productGender=" + productGender + ", productCategory=" + productCategory
				+ ", productOriginalPrice=" + productOriginalPrice + ", productOfferPrice=" + productOfferPrice
				+ ", productCreatedDate=" + productCreatedDate + ", isProductActive=" + isProductActive
				+ ", productPhoto1=" + Arrays.toString(productPhoto1) + ", productPhoto2="
				+ Arrays.toString(productPhoto2) + ", productPhoto3=" + Arrays.toString(productPhoto3)
				+ ", binaryPhoto1=" + binaryPhoto1 + ", binaryPhoto2=" + binaryPhoto2 + ", binaryPhoto3=" + binaryPhoto3
				+ "]";
	}
}
