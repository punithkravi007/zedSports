package com.ecommerce.zedSports.Model.service;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.InvoiceEntity;
import com.ecommerce.zedSports.Entities.OrderViewEntity;
import com.ecommerce.zedSports.Entities.UserEntity;
import com.ecommerce.zedSports.Model.Repository.OrderRepository;
import com.ecommerce.zedSports.Util.Encrypter;

@Service
public class OrderService {

	@Autowired
	private OrderRepository orderRepository;
	
	public List<OrderViewEntity> getAllOrdersForUser(UserEntity userEntity){
		return orderRepository.getAllOrdersForUser(userEntity);
	}
	
	
	public Map<String, InvoiceEntity> getAllOrders(){
		List<OrderViewEntity> orderViewEntities = orderRepository.getAllOrdersForUser(null);
		
		for (Iterator<OrderViewEntity> iterator = orderViewEntities.iterator(); iterator.hasNext();) {
			OrderViewEntity orderViewEntity = iterator.next();
			orderViewEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto1()));
			orderViewEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto2()));
			orderViewEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(orderViewEntity.getProductPhoto3()));
		}
		
		Map<String, InvoiceEntity> map = new LinkedHashMap<String, InvoiceEntity>();
		for (Iterator<OrderViewEntity> iterator = orderViewEntities.iterator(); iterator.hasNext();) {
			OrderViewEntity orderViewEntity = iterator.next();
			List<OrderViewEntity> entities=null;
			if(map.containsKey(orderViewEntity.getOrderId())){
				InvoiceEntity invoiceEntity = map.get(orderViewEntity.getOrderId());
				if(invoiceEntity.getEntities()!= null || invoiceEntity.getEntities().size()==0){
					entities = invoiceEntity.getEntities();
					entities.add(orderViewEntity);
					invoiceEntity.setEntities(entities);
				}else{
					entities = new LinkedList<OrderViewEntity>();
					entities.add(orderViewEntity);
					invoiceEntity.setEntities(entities);
				}
				int bagTotal = invoiceEntity.getBagTotal();
				bagTotal = bagTotal+Integer.parseInt(orderViewEntity.getOriginalAmount().trim());
				invoiceEntity.setBagTotal(bagTotal);
				
				int offerTotal = invoiceEntity.getOfferTotal();
				offerTotal = offerTotal+Integer.parseInt(orderViewEntity.getOfferAmount().trim());
				invoiceEntity.setOfferTotal(offerTotal);
				
				int orderTotal = invoiceEntity.getOrderTotal();
				orderTotal = orderTotal + Integer.parseInt(orderViewEntity.getBilledAmount().trim());
				invoiceEntity.setOrderTotal(orderTotal);
				invoiceEntity.setTotal(orderTotal);
				
				invoiceEntity.setDeliveryAddress(orderViewEntity.getDeliveryAddress());
				invoiceEntity.setCreationDate(orderViewEntity.getCreatedDate());
				invoiceEntity.setShippingStatus(orderViewEntity.getShippingStatus());
				
				invoiceEntity.setFirstName(orderViewEntity.getFirstName());
				invoiceEntity.setLastName(orderViewEntity.getLastName());
				invoiceEntity.setMobileNumber(orderViewEntity.getPhone());
				
				map.put(orderViewEntity.getOrderId(), invoiceEntity);
			}else{
				InvoiceEntity invoiceEntity = new InvoiceEntity();
				entities = new LinkedList<OrderViewEntity>();
				entities.add(orderViewEntity);
				invoiceEntity.setEntities(entities);
				
				int bagTotal = invoiceEntity.getBagTotal();
				bagTotal = bagTotal+Integer.parseInt(orderViewEntity.getOriginalAmount().trim());
				invoiceEntity.setBagTotal(bagTotal);
				
				int offerTotal = invoiceEntity.getOfferTotal();
				offerTotal = offerTotal+Integer.parseInt(orderViewEntity.getOfferAmount().trim());
				invoiceEntity.setOfferTotal(offerTotal);
				
				int orderTotal = invoiceEntity.getOrderTotal();
				orderTotal = orderTotal + Integer.parseInt(orderViewEntity.getBilledAmount().trim());
				invoiceEntity.setOrderTotal(orderTotal);
				
				int total = invoiceEntity.getTotal();
				total = total+invoiceEntity.getOfferTotal();
				invoiceEntity.setTotal(total);
				
				invoiceEntity.setDeliveryAddress(orderViewEntity.getDeliveryAddress());
				invoiceEntity.setCreationDate(orderViewEntity.getCreatedDate());
				invoiceEntity.setShippingStatus(orderViewEntity.getShippingStatus());
				
				invoiceEntity.setFirstName(orderViewEntity.getFirstName());
				invoiceEntity.setLastName(orderViewEntity.getLastName());
				invoiceEntity.setMobileNumber(orderViewEntity.getPhone());
				
				map.put(orderViewEntity.getOrderId(), invoiceEntity);
			}
		}
		
		return map;
	}
	
	public void updateOrderStatus(String orderCode,String status){
		
		int shippingStatus  = 0;
		if(status.equalsIgnoreCase("APPROVE")) shippingStatus = 1;
		if(status.equalsIgnoreCase("SHIP")) shippingStatus = 2;
		if(status.equalsIgnoreCase("DELIVERED")) shippingStatus = 3;
		
		orderRepository.updateOrderStatus(orderCode, shippingStatus);
	}
	
}
