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
@Table(name="categories")
public class CategoryEntity {

	@Id
	@GenericGenerator(name = "categoryId", strategy = "increment")
	@GeneratedValue(generator = "categoryId")
	@Column(name="category_id")
	private int categoryId;
	@Column(name="category_name")
	private String category;
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	@Override
	public String toString() {
		return "CategoryEntity [categoryId=" + categoryId + ", category=" + category + "]";
	}
}
