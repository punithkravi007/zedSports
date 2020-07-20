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

import com.ecommerce.zedSports.Entities.CartEntity;
import com.ecommerce.zedSports.Entities.CartViewEntity;

@Repository
public class CartRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void addProductToCart(CartEntity cartEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			CartEntity entity = getcartProductFromProductId(cartEntity.getUserId(), cartEntity.getProductId());
			if (entity == null) {
				session.insert(cartEntity);
			}
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}

	public CartEntity getcartProductFromProductId(int userId, int productId) {
		StatelessSession session = null;
		CartEntity cartEntity = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria cartCriteria = session.createCriteria(CartEntity.class).setMaxResults(1);
			Criterion userIdCriterion = Restrictions.eq("userId", userId);
			Criterion productIdCriterion = Restrictions.eq("productId", productId);
			cartCriteria.add(userIdCriterion).add(productIdCriterion);
			cartEntity = (CartEntity) cartCriteria.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartEntity;
	}

	@SuppressWarnings("unchecked")
	public List<CartViewEntity> getCartProducts(int userId) {
		StatelessSession session = null;
		List<CartViewEntity> cartViewEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Query query = session.getNamedQuery("callGetAllCartDeatilsById");
			query.setParameter("userId", userId);
			cartViewEntities = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartViewEntities;
	}

	public void removeProductFromCart(int productId, int userId) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query deleteProductFromCart = session
					.createQuery("delete from CartEntity where productId=:productId and userId=:userId");
			deleteProductFromCart.setParameter("productId", productId);
			deleteProductFromCart.setParameter("userId", userId);
			deleteProductFromCart.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
