package com.ecommerce.zedSports.Model.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.AddressEntity;
import com.ecommerce.zedSports.Entities.QueriesEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.Repository.QueryRepository;
import com.ecommerce.zedSports.Model.Repository.userSessionManagmentRepository;

@Service
public class userSessionManagmentService {

	@Autowired
	private userSessionManagmentRepository sessionManagmentRepository;
	@Autowired
	private QueryRepository queryRepository;

	public void registerUser(UserEntity userEntity) {
		userEntity.setUserRole("U");
		userEntity.setIsUserActive(1);
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date date = new Date();
		String todate = dateFormat.format(date);
		
		if(userEntity.getUserDateOfJoined() == null) userEntity.setUserDateOfJoined(todate);
		
		sessionManagmentRepository.registerUser(userEntity);
	}

	public boolean isUserRegistered(String userMobileNumber) {
		return sessionManagmentRepository.getUniqueUser(userMobileNumber, "REGISTER", null) != null ? true : false;
	}

	public UserEntity getUserForLogin(UserEntity userEntity) {
		userEntity = sessionManagmentRepository.getUniqueUser(userEntity.getUserMobileNumber(), "LOGIN",userEntity.getUserPasword());
		List<AddressEntity> addressEntity = sessionManagmentRepository.getUserAddress(userEntity.getUserId());
		List<QueriesEntity> queriesEntities = queryRepository.getAllUserSpecificQueries(userEntity);
		userEntity.setAddressEntity(addressEntity);
		userEntity.setQueriesEntities(queriesEntities);
		return userEntity;
	}
	
	public void addUserAddress(AddressEntity addressEntity){
		sessionManagmentRepository.addUserAddress(addressEntity);
	}

}
