package com.ecommerce.zedSports.Model.Repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.OrderViewEntity;
import com.ecommerce.zedSports.Entities.UserEntity;

@Repository
public class OrderRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	@SuppressWarnings("unchecked")
	public List<OrderViewEntity> getAllOrdersForUser(UserEntity userEntity) {
		StatelessSession session = null;
		List<OrderViewEntity> orderViewEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Query query = session.getNamedQuery(userEntity != null ? "callGetAllOrderDeatilsById" : "callGetAllOrderDeatils");
			if (userEntity != null)
				query.setParameter("userId", userEntity.getUserId());
			orderViewEntities = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderViewEntities;
	}
	
	
	public void updateOrderStatus(String orderCode,int statusCode){
		StatelessSession session = null;
		Transaction transaction =null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("update OrderEntity set orderTrackId = :orderTrackId WHERE orderCode =:orderCode");
			query.setParameter("orderTrackId", statusCode);
			query.setParameter("orderCode", orderCode);
			query.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
