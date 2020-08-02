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
@Table(name = "product")
public class ProductEntity {

	@Id
	@GenericGenerator(name = "productId", strategy = "increment")
	@GeneratedValue(generator = "productId")
	@Column(name = "product_id")
	private int productId;
	@Column(name = "product_code",columnDefinition="longtext")
	private String productCode;
	@Column(name = "product_name",columnDefinition="longtext")
	private String productName;
	@Column(name = "product_quantity")
	private int productQuantity;
	@Column(name = "product_original_price")
	private String productOriginalPrice;
	@Column(name = "product_offer_price")
	private String productOfferPrice;
	@Column(name = "product_description",columnDefinition="longtext")
	private String productDescription;
	@Column(name = "product_gender")
	private String productGender;
	@Column(name = "product_created_date")
	private String productCreationDate;
	@Column(name="product_is_active")
	private int productIsActive;
	@Column(name="product_category")
	private String productCategory;
	@Transient
	private String offerPercentage;

	@Transient
	private PhotoEntity photoEntity;
	@Transient
	private List<TagEntity> tagEntities;
	@Transient
	private List<ProductReviewEntity> reviewEntities;

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

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
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

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductGender() {
		return productGender;
	}

	public void setProductGender(String productGender) {
		this.productGender = productGender;
	}

	public String getProductCreationDate() {
		return productCreationDate;
	}

	public void setProductCreationDate(String productCreationDate) {
		this.productCreationDate = productCreationDate;
	}

	public PhotoEntity getPhotoEntity() {
		return photoEntity;
	}

	public void setPhotoEntity(PhotoEntity photoEntity) {
		this.photoEntity = photoEntity;
	}
	
	public List<TagEntity> getTagEntities() {
		return tagEntities;
	}

	public void setTagEntities(List<TagEntity> tagEntities) {
		this.tagEntities = tagEntities;
	}

	public int getProductIsActive() {
		return productIsActive;
	}

	public void setProductIsActive(int productIsActive) {
		this.productIsActive = productIsActive;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getOfferPercentage() {
		return offerPercentage;
	}

	public void setOfferPercentage(String offerPercentage) {
		this.offerPercentage = offerPercentage;
	}

	public List<ProductReviewEntity> getReviewEntities() {
		return reviewEntities;
	}

	public void setReviewEntities(List<ProductReviewEntity> reviewEntities) {
		this.reviewEntities = reviewEntities;
	}

	@Override
	public String toString() {
		return "ProductEntity [productId=" + productId + ", productCode=" + productCode + ", productName=" + productName
				+ ", productQuantity=" + productQuantity + ", productOriginalPrice=" + productOriginalPrice
				+ ", productOfferPrice=" + productOfferPrice + ", productDescription=" + productDescription
				+ ", productGender=" + productGender + ", productCreationDate=" + productCreationDate
				+ ", productIsActive=" + productIsActive + ", productCategory=" + productCategory + ", photoEntity="
				+ photoEntity + ", tagEntities=" + tagEntities + "]";
	}

}
