package com.ecommerce.zedSports.Model.Repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.OrderEntity;

@Repository
public class CheckoutRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void placeOrder(OrderEntity orderEntity) {
		Session session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(orderEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

}
