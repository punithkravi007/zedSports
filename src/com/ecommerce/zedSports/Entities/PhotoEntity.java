package com.ecommerce.zedSports.Entities;

import java.util.Arrays;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Cacheable
@Table(name = "product_image")
public class PhotoEntity {

	@Id
	@GenericGenerator(name = "photoId", strategy = "increment")
	@GeneratedValue(generator = "photoId")
	@Column(name = "product_image_id")
	private int photoId;
	@Column(name = "product_image_1",columnDefinition="LONGBLOB")
	private byte[] productImage1;
	@Column(name = "product_image_2",columnDefinition="LONGBLOB")
	private byte[] productImage2;
	@Column(name = "product_image_3",columnDefinition="LONGBLOB")
	private byte[] productImage3;
	@Column(name = "product_id")
	private int productId;
	
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


	public int getPhotoId() {
		return photoId;
	}


	public void setPhotoId(int photoId) {
		this.photoId = photoId;
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


	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
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
		return "PhotoEntity [photoId=" + photoId + ", productImage1=" + Arrays.toString(productImage1)
				+ ", productImage2=" + Arrays.toString(productImage2) + ", productImage3="
				+ Arrays.toString(productImage3) + ", productId=" + productId + ", productPhoto1=" + productPhoto1
				+ ", productPhoto2=" + productPhoto2 + ", productPhoto3=" + productPhoto3 + ", binaryPhoto1="
				+ binaryPhoto1 + ", binaryPhoto2=" + binaryPhoto2 + ", binaryPhoto3=" + binaryPhoto3 + "]";
	}

	
	
}
