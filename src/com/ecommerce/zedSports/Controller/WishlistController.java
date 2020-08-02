package com.ecommerce.zedSports.Controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.zedSports.Entities.WishlistViewEntity;
import com.ecommerce.zedSports.Model.service.WishlistService;

@Controller
@RequestMapping(value = "/wishlist/")
public class WishlistController {

	@Autowired
	private UserSessionController sessionController;
	@Autowired
	private WishlistService wishlistService;

	@RequestMapping(value = "")
	public String viewUserWishlist(HttpSession session, Model model) {
		String redirectPage = "redirect:/";
		boolean isUserActive = sessionController.isUserSessionActive(session);
		if (isUserActive) {
			redirectPage = "zed.user.wishlist";
		}
		return redirectPage;
	}

	@RequestMapping(value = "getAllWishlistedProducts", method = RequestMethod.POST)
	public @ResponseBody List<WishlistViewEntity> getAllWishlistedProduct(@RequestParam("userId") int userId,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUSerActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		List<WishlistViewEntity> wishlistViewEntities = null;
		if (isUSerActive && isUUIDValid)
			wishlistViewEntities = wishlistService.getAllWishListedProductEntities(userId);
		return wishlistViewEntities;
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public @ResponseBody String addProductToWishList(@RequestParam("productId") String productId,
			@RequestParam("userId") String userId, @RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUSerActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUSerActive && isUUIDValid) {
			wishlistService.addProductToWishlist(Integer.parseInt(userId), Integer.parseInt(productId));
			response = "true";
		}
		return response;
	}

	@RequestMapping(value = "removeProduct", method = RequestMethod.POST)
	public @ResponseBody String removeWishlistedProduct(@RequestParam("productId") int productId,
			@RequestParam("userId") String userId, @RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUSerActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		String response = "false";
		if (isUSerActive && isUUIDValid) {
			wishlistService.removeWishlistedProduct(productId, Integer.parseInt(userId));
			response = "true";
		}
		return response;
	}
	
	
	public static void main(String[] args) {
		Date date = new Date();  
        Timestamp ts=new Timestamp(date.getTime());  
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");  
        System.out.println(formatter.format(ts));       
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
