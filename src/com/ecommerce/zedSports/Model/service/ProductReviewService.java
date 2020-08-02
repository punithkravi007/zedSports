package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.ProductReviewEntity;
import com.ecommerce.zedSports.Model.Repository.ProductReviewRepository;

@Service
public class ProductReviewService {

	@Autowired
	private ProductReviewRepository reviewRepository;
	
	public void addUserReviewService(ProductReviewEntity reviewEntity){
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
		Date date = new Date();
		reviewEntity.setReviewCreationDate(dateFormat.format(date));
		reviewRepository.saveUserReview(reviewEntity);
	}
	
	public void deleteProductReviewService(int reviewId){
		reviewRepository.deleteProductReview(reviewId);
	}
	
}
