package com.ecommerce.zedSports.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "product_review")

public class ProductReviewEntity {

	@Id
	@GenericGenerator(name = "reviewId", strategy = "increment")
	@GeneratedValue(generator = "reviewId")
	@Column(name = "review_id")
	private int reviewId;
	@Column(name="user_full_name")
	private String fullName;
	@Column(name = "review",columnDefinition="longtext")
	private String review;
	@Column(name="rating")
	private int rating;
	@Column(name = "review_creation_date")
	private String reviewCreationDate;
	@Column(name = "product_id")
	private int productId;

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getReviewCreationDate() {
		return reviewCreationDate;
	}

	public void setReviewCreationDate(String reviewCreationDate) {
		this.reviewCreationDate = reviewCreationDate;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "ProductReviewEntity [reviewId=" + reviewId + ", fullName=" + fullName + ", review=" + review
				+ ", rating=" + rating + ", reviewCreationDate=" + reviewCreationDate + ", productId=" + productId
				+ "]";
	}

}
