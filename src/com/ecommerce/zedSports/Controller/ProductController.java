package com.ecommerce.zedSports.Controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecommerce.zedSports.Entities.ProductEntity;
import com.ecommerce.zedSports.Model.service.ProductManagmentService;

@Controller
@RequestMapping("/")
public class ProductController {

	@Autowired
	private ProductManagmentService productManagmentService;

	@RequestMapping(value = "products/category", method = RequestMethod.GET)
	public String viewProducts(@RequestParam("q") String category, @RequestParam("g") String gender, Model model) {
		List<ProductEntity> productEntities = productManagmentService.getAllProducts();
		productEntities = productEntities.stream()
				.filter(product -> product.getProductGender().toLowerCase().charAt(0) == gender.charAt(0)
						&& product.getProductCategory().equalsIgnoreCase(category) && product.getProductIsActive() == 1)
				.collect(Collectors.toList());
		model.addAttribute("PRODUCT_ENTITY", productEntities);
		model.addAttribute("SELECTED_GENDER", gender);
		model.addAttribute("SELECTED_CATEGORY", category);

		return "zed.user.product-grid";
	}
	
	@RequestMapping(value = "products", method = RequestMethod.GET)
	public String viewProductsOnGender(@RequestParam("q") String gender,Model model) {
		List<ProductEntity> productEntities = productManagmentService.getAllProducts();
		productEntities = productEntities.stream()
				.filter(product -> product.getProductGender().toLowerCase().charAt(0) == gender.charAt(0)
						 && product.getProductIsActive() == 1)
				.collect(Collectors.toList());
		model.addAttribute("PRODUCT_ENTITY", productEntities);
		model.addAttribute("SELECTED_GENDER", gender);

		return "zed.user.product-grid";
	}

	@RequestMapping(value = "product", method = RequestMethod.GET)
	public String viewProduct(@RequestParam("prodId") int productId, Model model) {
		List<ProductEntity> productEntities = productManagmentService.getAllProducts();
		ProductEntity productEntity = productEntities.stream().filter(product -> product.getProductId() == productId).collect(Collectors.toList()).get(0);
		model.addAttribute("PRODUCT",productEntity);
		return "zed.user.product";
	}

}
