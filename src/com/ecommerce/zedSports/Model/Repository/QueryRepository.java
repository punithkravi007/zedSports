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

import com.ecommerce.zedSports.Entities.QueriesEntity;
import com.ecommerce.zedSports.Entities.UserEntity;

@Repository
public class QueryRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void addUserQuery(QueriesEntity queriesEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			session.insert(queriesEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}

	@SuppressWarnings("unchecked")
	public List<QueriesEntity> getAllUserSpecificQueries(UserEntity userEntity) {
		StatelessSession session = null;
		List<QueriesEntity> queriesEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria criteria = session.createCriteria(QueriesEntity.class);
			criteria.add(Restrictions.eq("mobileNumber", userEntity.getUserMobileNumber()));
			queriesEntities = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return queriesEntities;
	}

	@SuppressWarnings("unchecked")
	public List<QueriesEntity> getAllQueriesOnResponse(int isResponsed) {
		StatelessSession session = null;
		List<QueriesEntity> queriesEntities = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria criteria = session.createCriteria(QueriesEntity.class);
			criteria.add(Restrictions.eq("isResponded", isResponsed));
			queriesEntities = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return queriesEntities;
	}

	public void updateResponseToUserQuery(QueriesEntity queriesEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("UPDATE QueriesEntity SET response =:response, isResponded =:isResponded,respondedTime=:respondedTime WHERE queryId =:queryId");
			query.setParameter("response", queriesEntity.getResponse());
			query.setParameter("isResponded", queriesEntity.getIsResponded());
			query.setParameter("queryId", queriesEntity.getQueryId());
			query.setParameter("respondedTime", queriesEntity.getRespondedTime());
			query.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
	}

}
