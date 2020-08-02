package com.ecommerce.zedSports.Model.Repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.ProductReviewEntity;

@Repository
public class ProductReviewRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void saveUserReview(ProductReviewEntity reviewEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			session.insert(reviewEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<ProductReviewEntity> getAllReviewForProduct(int productId) {
		StatelessSession session = null;
		List<ProductReviewEntity> reviewEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria reviewCriteria = session.createCriteria(ProductReviewEntity.class);
			reviewCriteria.add(Restrictions.eq("productId", productId));
			reviewEntities = reviewCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewEntities;
	}

	public void deleteProductReview(int reviewId) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("DELETE FROM ProductReviewEntity WHERE reviewId=:reviewId");
			query.setParameter("reviewId", reviewId);
			query.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}

}
