package com.ecommerce.zedSports.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Encrption {

	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
		System.out.println(dateFormat.format(date));
		
	}
}
