package com.ecommerce.zedSports.Model.service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
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
		Date date = new Date();  
        Timestamp ts=new Timestamp(date.getTime());  
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        queriesEntity.setQueryCreatedDate(formatter.format(ts));
		queryRepository.addUserQuery(queriesEntity);
	}

	public List<QueriesEntity> getUserSpecificQuerierService(UserEntity userEntity) {
		return queryRepository.getAllUserSpecificQueries(userEntity);
	}
	
	public List<QueriesEntity> getQueriesOnStatus(int isResponded){
		return queryRepository.getAllQueriesOnResponse(isResponded);
	}
	
	public void updateResponseToUserQueryService(QueriesEntity queriesEntity){
		Date date = new Date();  
        Timestamp ts=new Timestamp(date.getTime());  
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        queriesEntity.setRespondedTime(formatter.format(ts));
		queryRepository.updateResponseToUserQuery(queriesEntity);
	}

}
