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
@Table(name = "product_tag")
public class ProductTagEntity {

	@Id
	@GenericGenerator(name = "productTagId", strategy = "increment")
	@GeneratedValue(generator = "productTagId")
	@Column(name = "product_tag_id")
	private int id;
	@Column(name = "product_id")
	private int productId;
	@Column(name = "tagId")
	private int tagId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getTagId() {
		return tagId;
	}
	public void setTagId(int tagId) {
		this.tagId = tagId;
	}
	
	@Override
	public String toString() {
		return "ProductTagEntity [id=" + id + ", productId=" + productId + ", tagId=" + tagId + "]";
	}
	
}
