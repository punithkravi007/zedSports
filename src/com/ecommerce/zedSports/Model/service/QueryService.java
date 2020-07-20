package com.ecommerce.zedSports.Model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.QueriesEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.Repository.QueryRepository;

@Service
public class QueryService {

	@Autowired
	private QueryRepository queryRepository;

	public void addUserQuery(QueriesEntity queriesEntity) {
		queryRepository.addUserQuery(queriesEntity);
	}

	public List<QueriesEntity> getUserSpecificQuerierService(UserEntity userEntity) {
		return queryRepository.getAllUserSpecificQueries(userEntity);
	}
	
	public List<QueriesEntity> getQueriesOnStatus(int isResponded){
		return queryRepository.getAllQueriesOnResponse(isResponded);
	}
	
	public void updateResponseToUserQueryService(QueriesEntity queriesEntity){
		queryRepository.updateResponseToUserQuery(queriesEntity);
	}

}
