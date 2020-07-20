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
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "wishlist_details")
@NamedNativeQueries({ 
	  @NamedNativeQuery(
	    name = "callGetAllWishlistDeatilsById", 
	    query = "CALL GetWishlistDeatils(:userId)", 
	    resultClass = WishlistViewEntity.class) 
	})
public class WishlistViewEntity {

	@Id
	@GenericGenerator(name = "wishListViewId", strategy = "increment")
	@GeneratedValue(generator = "wishListViewId")
	@Column(name = "product_id")
	private int productId;
	@Column(name = "product_code",columnDefinition="longtext")
	private String productCode;
	@Column(name = "product_name",columnDefinition="longtext")
	private String productName;
	@Column(name = "product_description",columnDefinition="longtext")
	private String productDescription;
	@Column(name = "product_quantity")
	private int quantity;
	@Column(name = "product_gender")
	private String productGender;
	@Column(name = "product_category")
	private String productCategory;
	@Column(name = "product_original_price")
	private String productOriginalPrice;
	@Column(name = "product_offer_price")
	private String productOfferPrice;
	@Column(name = "product_created_date")
	private String productCreationDate;
	@Column(name = "product_is_active")
	private int productIsActive;
	@Column(name = "product_image_1", columnDefinition = "LONGBLOB")
	private byte[] productImage1;
	@Column(name = "product_image_2", columnDefinition = "LONGBLOB")
	private byte[] productImage2;
	@Column(name = "product_image_3", columnDefinition = "LONGBLOB")
	private byte[] productImage3;

	@Transient
	private MultipartFile productPhoto1;
	@Transient
	private MultipartFile productPhoto2;
	@Transient
	private MultipartFile productPhoto3;
	
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	public String getProductCreationDate() {
		return productCreationDate;
	}
	public void setProductCreationDate(String productCreationDate) {
		this.productCreationDate = productCreationDate;
	}
	public int getProductIsActive() {
		return productIsActive;
	}
	public void setProductIsActive(int productIsActive) {
		this.productIsActive = productIsActive;
	}
	public byte[] getProductImage1() {
		return productImage1;
	}
	public void setProductImage1(byte[] productImage1) {
		this.productImage1 = productImage1;
	}
	public byte[] getProductImage2() {
		return productImage2;
	}
	public void setProductImage2(byte[] productImage2) {
		this.productImage2 = productImage2;
	}
	public byte[] getProductImage3() {
		return productImage3;
	}
	public void setProductImage3(byte[] productImage3) {
		this.productImage3 = productImage3;
	}
	public MultipartFile getProductPhoto1() {
		return productPhoto1;
	}
	public void setProductPhoto1(MultipartFile productPhoto1) {
		this.productPhoto1 = productPhoto1;
	}
	public MultipartFile getProductPhoto2() {
		return productPhoto2;
	}
	public void setProductPhoto2(MultipartFile productPhoto2) {
		this.productPhoto2 = productPhoto2;
	}
	public MultipartFile getProductPhoto3() {
		return productPhoto3;
	}
	public void setProductPhoto3(MultipartFile productPhoto3) {
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
		return "WishlistViewEntity [productId=" + productId + ", productCode=" + productCode + ", productName="
				+ productName + ", productDescription=" + productDescription + ", quantity=" + quantity
				+ ", productGender=" + productGender + ", productCategory=" + productCategory
				+ ", productOriginalPrice=" + productOriginalPrice + ", productOfferPrice=" + productOfferPrice
				+ ", productCreationDate=" + productCreationDate + ", productIsActive=" + productIsActive
				+ ", productImage1=" + Arrays.toString(productImage1) + ", productImage2="
				+ Arrays.toString(productImage2) + ", productImage3=" + Arrays.toString(productImage3)
				+ ", productPhoto1=" + productPhoto1 + ", productPhoto2=" + productPhoto2 + ", productPhoto3="
				+ productPhoto3 + ", binaryPhoto1=" + binaryPhoto1 + ", binaryPhoto2=" + binaryPhoto2
				+ ", binaryPhoto3=" + binaryPhoto3 + "]";
	}
}
