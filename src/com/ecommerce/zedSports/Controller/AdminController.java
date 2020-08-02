package com.ecommerce.zedSports.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.zedSports.Entities.CategoryEntity;
import com.ecommerce.zedSports.Entities.PhotoEntity;
import com.ecommerce.zedSports.Entities.ProductEntity;
import com.ecommerce.zedSports.Entities.TagEntity;
import com.ecommerce.zedSports.Model.service.ProductManagmentService;

@Controller
@RequestMapping(value = "/")
public class AdminController {

	@Autowired
	private UserSessionController sessionController;

	@Autowired
	private ProductManagmentService productManagmentService;

	@RequestMapping(value = "addTag")
	public String addTagHandler(HttpSession httpSession) {
		boolean isUserActive = sessionController.isUserSessionActive(httpSession);
		return isUserActive ? "zed.admin.add.tag" : "redirect:/";
	}

	@RequestMapping(value = "addCategory")
	public String addCategoryHandler(HttpSession httpSession) {
		boolean isUserActive = sessionController.isUserSessionActive(httpSession);
		return isUserActive ? "zed.admin.add.category" : "redirect:/";
	}

	@RequestMapping(value = "addProduct")
	public String addProductHandler(HttpSession httpSession) {
		boolean isUserActive = sessionController.isUserSessionActive(httpSession);
		return isUserActive ? "zed.admin.add.product" : "redirect:/";
	}

	@RequestMapping(value = "products/getTags", method = RequestMethod.POST)
	public @ResponseBody List<TagEntity> getTagsHandler(@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		List<TagEntity> tagEntities = isUUIDValid ? productManagmentService.getTags() : null;
		return tagEntities;
	}

	@RequestMapping(value = "products/addNewTag", method = RequestMethod.POST)
	public @ResponseBody boolean addNewTag(@ModelAttribute("tag") TagEntity tagEntity, @RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		boolean status = false;
		if (isUserActive && isUUIDValid) {
			status = productManagmentService.addNewTagService(tagEntity);
		}
		return status;
	}

	@RequestMapping(value = "products/getCategories", method = RequestMethod.POST)
	public @ResponseBody List<CategoryEntity> getCategoriesHandler(@RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		List<CategoryEntity> categoryEntities = isUUIDValid ? productManagmentService.getCategories() : null;
		System.out.println(categoryEntities);
		return categoryEntities;
	}

	@RequestMapping(value = "products/addNewCategory", method = RequestMethod.POST)
	public @ResponseBody boolean addNewCategory(@ModelAttribute("category") CategoryEntity categoryEntity,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		boolean status = false;
		if (isUserActive && isUUIDValid) {
			status = productManagmentService.addNewCategoryService(categoryEntity);
		}
		return status;
	}

	@RequestMapping(value = "products/validateDuplicateProduct", method = RequestMethod.POST)
	public @ResponseBody boolean validateDuplicateProductHandler(@ModelAttribute ProductEntity productEntity,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		return isUserActive && isUUIDValid ? productManagmentService.validateForDuplicateProduct(productEntity) : false;
	}

	@RequestMapping(value = "products/addNewProductBasicInfo", method = RequestMethod.POST)
	public @ResponseBody ProductEntity addNewProductBasicInfoHandler(@ModelAttribute ProductEntity productEntity,
			@RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		
		System.out.println(productEntity.getProductName());
		
		ProductEntity status = null;
		if (isUserActive && isUUIDValid) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
			Date date = new Date();
			productEntity.setProductCreationDate(dateFormat.format(date));
			status = productManagmentService.addNewProductBasicInfoService(productEntity);
		}
		return status;
	}

	@RequestMapping(value = "products/mapTag", method = RequestMethod.POST)
	public @ResponseBody boolean mapCategoryTagToProductHandler(@RequestParam("tags") String[] tags,
			@RequestParam("productId") int productId, @RequestParam("uqi") String uqi, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		boolean isUUIDValid = ((String) session.getAttribute("UNIQUE_ID")) != null
				&& ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi) ? true : false;
		boolean response = false;
		if (isUserActive && isUUIDValid) {
			productManagmentService.mapTagsToProduct(productId, tags);
			response = true;
		}
		return response;
	}

	@RequestMapping(value = "products/mapProductPhoto", method = RequestMethod.POST)
	public @ResponseBody String mapPhotoEntity(@ModelAttribute PhotoEntity photoEntity,
			HttpSession session) {
		String response = "false";
		boolean isUserActive = sessionController.isUserSessionActive(session);
		try {
			if (isUserActive) {
				photoEntity.setProductImage1(photoEntity.getProductPhoto1().getBytes());
				photoEntity.setProductImage2(photoEntity.getProductPhoto2().getBytes());
				photoEntity.setProductImage3(photoEntity.getProductPhoto3().getBytes());
				productManagmentService.mapPhotoToProduct(photoEntity);
				response = "true";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return response;
	}

	@RequestMapping(value = "products/viewAllProducts", method = RequestMethod.GET)
	public String viewAllProductsHandler(HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		return isUserActive ? "zed.admin.view.product" : "redirect:/";
	}

	@RequestMapping(value = "products/getAllProducts", method = RequestMethod.POST)
	public @ResponseBody List<ProductEntity> getAllProductHandler(@RequestParam("uqi") String uqi,
			HttpSession session) {
		boolean isUniqueIdValid = session.getAttribute("UNIQUE_ID") != null ? true : false;
		List<ProductEntity> productEntities = null;
		if (isUniqueIdValid && ((String) session.getAttribute("UNIQUE_ID")).equalsIgnoreCase(uqi)) {
			productEntities = productManagmentService.getAllProducts();
		}
		return productEntities;
	}

	@RequestMapping(value = "products/viewProduct", method = RequestMethod.GET)
	public String viewProductHadler(@RequestParam("productId") int productId, Model model, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		String returnScreen = "redirect:/";
		if (isUserActive) {
			List<ProductEntity> productEntities = productManagmentService.getAllProducts();
			ProductEntity productEntity = productEntities.stream()
					.filter(product -> product.getProductId() == productId).collect(Collectors.toList()).get(0);
			model.addAttribute("PRODUCT_ENTITY", productEntity);
			returnScreen = "zed.admin.view.induvidualProduct";
		}
		return returnScreen;
	}

	@RequestMapping(value = "products/editProduct", method = RequestMethod.GET)
	public String editProductHadler(@RequestParam("productCode") String productCode, Model model, HttpSession session) {
		boolean isUserActive = sessionController.isUserSessionActive(session);
		String returnScreen = "redirect:/";
		if (isUserActive) {
			ProductEntity productEntity = productManagmentService.getProductService(productCode);
			model.addAttribute("PRODUCT_ENTITY", productEntity);
			returnScreen = "zed.admin.edit.induvidualProduct";
		}
		return returnScreen;
	}

	@RequestMapping(value = "products/updateNewProductBasicInfo", method = RequestMethod.POST)
	public @ResponseBody ProductEntity updateProductBasicInfoHandler(@ModelAttribute ProductEntity productEntity) {
		ProductEntity status = productManagmentService.addNewProductBasicInfoService(productEntity);
		return status;
	}

	@RequestMapping(value = "products/updateMapTag", method = RequestMethod.POST)
	public @ResponseBody boolean updateMappedTagToProductHandler(@RequestParam("tags") String[] tags,
			@RequestParam("productId") int productId) {
		productManagmentService.deleteMappedProductTag(productId, tags);
		return true;
	}

	@RequestMapping(value = "products/updateMappedPhoto", method = RequestMethod.POST)
	public String updateMappedPhotoToProductHandler(@ModelAttribute PhotoEntity photoEntity,
			RedirectAttributes redirectAttributes) {
		try {
			photoEntity.setProductImage1(photoEntity.getProductPhoto1().getBytes());
			photoEntity.setProductImage2(photoEntity.getProductPhoto2().getBytes());
			photoEntity.setProductImage3(photoEntity.getProductPhoto3().getBytes());
			productManagmentService.deleteMappedProductPhotos(photoEntity);
			redirectAttributes.addFlashAttribute("PRODUCT_ADD_SUCCESS", "Well Done! You Have Updated a Product.");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/addProduct";
	}

	@RequestMapping(value = "products/deleteProduct", method = RequestMethod.POST)
	public @ResponseBody String deletedProductHandler(@RequestParam("productId") String productId) {
		productManagmentService.deleteProductPhotos(Integer.parseInt(productId));
		return "true";
	}

}
