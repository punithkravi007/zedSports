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
@Table(name="tags")
public class TagEntity {

	@Id
	@GenericGenerator(name = "tagId", strategy = "increment")
	@GeneratedValue(generator = "tagId")
	@Column(name="tag_id")
	private int tagId;
	@Column(name="tag_name")
	private String tag;
	
	public int getTagId() {
		return tagId;
	}
	public void setTagId(int tagId) {
		this.tagId = tagId;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	
	@Override
	public String toString() {
		return "TagEntity [tagId=" + tagId + ", tag=" + tag + "]";
	}
	
	
	
	
	
}
