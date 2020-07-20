package com.ecommerce.zedSports.Model.Repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.WishlistEntity;
import com.ecommerce.zedSports.Entities.WishlistViewEntity;

@Repository
public class WishlistRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void addProductToWishlist(WishlistEntity wishlistEntity) {
		StatelessSession session=null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			WishlistEntity entity = getProductWishlistFromProductId(wishlistEntity.getUserId(),wishlistEntity.getProductId());
			if(entity == null){
				session.insert(wishlistEntity);
			}
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}
	
	
	public WishlistEntity getProductWishlistFromProductId(int userId, int productId){
		StatelessSession session=null;
		WishlistEntity wishlistEntity = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria wishListCriteria = session.createCriteria(WishlistEntity.class).setMaxResults(1);
			Criterion userIdCriterion = Restrictions.eq("userId", userId);
			Criterion productIdCriterion = Restrictions.eq("productId", productId);
			wishListCriteria.add(userIdCriterion).add(productIdCriterion);
			wishlistEntity = (WishlistEntity) wishListCriteria.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return wishlistEntity;
	}
	
	@SuppressWarnings("unchecked")
	public List<WishlistViewEntity> getWishlistedProducts(int userId){
		StatelessSession session=null;
		List<WishlistViewEntity> wishlistViewEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Query query = session.getNamedQuery("callGetAllWishlistDeatilsById");
			query.setParameter("userId", userId);
			wishlistViewEntities = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return wishlistViewEntities;
	}
	
	
	public void removeProductFromWishlist(int productId,int userId){
		StatelessSession session=null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query deleteProductWishlist = session
					.createQuery("delete from WishlistEntity where productId=:productId and userId=:userId");
			deleteProductWishlist.setParameter("productId", productId);
			deleteProductWishlist.setParameter("userId", userId);
			deleteProductWishlist.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
