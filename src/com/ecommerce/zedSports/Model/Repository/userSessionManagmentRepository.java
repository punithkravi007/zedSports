package com.ecommerce.zedSports.Model.Repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.AddressEntity;
import com.ecommerce.zedSports.Entities.UserEntity;

@Repository
public class userSessionManagmentRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	public void registerUser(UserEntity userEntity) {
		Session session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(userEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public UserEntity getUniqueUser(String userMobileNumber, String useCase, String password) {
		Session session = null;
		UserEntity userEntity = null;
		try {
			session = _sessionFactory.openSession();
			Criteria userCriteria = session.createCriteria(UserEntity.class).setMaxResults(1);
			Criterion mobileNumberCriterion = Restrictions.eq("userMobileNumber", userMobileNumber);
			if(useCase.equalsIgnoreCase("LOGIN")){
				Criterion passwordCriterion = Restrictions.eq("userPasword", password);
				userCriteria.add(passwordCriterion);
			}
			userCriteria.add(mobileNumberCriterion);
			userEntity = (UserEntity) userCriteria.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return userEntity;
	}
	
	@SuppressWarnings("unchecked")
	public List<AddressEntity> getUserAddress(int userId) {
		Session session = null;
		List<AddressEntity> addressEntity = null;
		try {
			session = _sessionFactory.openSession();
			Criteria addressCriteria = session.createCriteria(AddressEntity.class);
			Criterion userIdCriterion = Restrictions.eq("userId", userId);
			addressCriteria.add(userIdCriterion);
			addressEntity = addressCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return addressEntity;
	}
	
	public void addUserAddress(AddressEntity addressEntity){
		Session session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(addressEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}
	
}
