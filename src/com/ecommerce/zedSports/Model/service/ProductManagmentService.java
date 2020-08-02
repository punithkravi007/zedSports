package com.ecommerce.zedSports.Model.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.zedSports.Entities.CategoryEntity;
import com.ecommerce.zedSports.Entities.PhotoEntity;
import com.ecommerce.zedSports.Entities.ProductEntity;
import com.ecommerce.zedSports.Entities.ProductReviewEntity;
import com.ecommerce.zedSports.Entities.ProductTagEntity;
import com.ecommerce.zedSports.Entities.TagEntity;
import com.ecommerce.zedSports.Model.Repository.ProductManagmentRepository;
import com.ecommerce.zedSports.Model.Repository.ProductReviewRepository;
import com.ecommerce.zedSports.Util.Encrypter;

@Service
public class ProductManagmentService {

	@Autowired
	private ProductManagmentRepository productManagmentRepository;
	@Autowired
	private ProductReviewRepository reviewRepository;

	public List<TagEntity> getTags() {
		return productManagmentRepository.getProductTags(null);
	}

	public boolean addNewTagService(TagEntity tagEntity) {
		return productManagmentRepository.addNewTag(tagEntity);
	}

	public List<CategoryEntity> getCategories() {
		return productManagmentRepository.getProductCategories(null);
	}

	public boolean addNewCategoryService(CategoryEntity categoryEntity) {
		return productManagmentRepository.addNewCategory(categoryEntity);
	}

	public boolean validateForDuplicateProduct(ProductEntity productEntity) {
		String productCode = Encrypter.asciiEncrypter(productEntity.getProductName(), "PROD");
		productEntity.setProductCode(productCode);
		return productManagmentRepository.getProductEntity(productEntity).size() > 0 ? true : false;
	}

	public ProductEntity addNewProductBasicInfoService(ProductEntity productEntity) {
		productEntity.setProductCode(Encrypter.asciiEncrypter(productEntity.getProductName(), "PROD"));
		productManagmentRepository.addNewProductBasicInfo(productEntity);
		return productManagmentRepository.getProductEntity(productEntity) !=null ? productManagmentRepository.getProductEntity(productEntity).get(0) : null;
	}

	public void mapTagsToProduct(int productId, String[] tags) {
		for (int tag = 0; tag < tags.length; tag++) {
			ProductTagEntity productTagEntity = new ProductTagEntity();
			productTagEntity.setProductId(productId);
			productTagEntity.setTagId(Integer.parseInt(tags[tag]));
			productManagmentRepository.mapTagToProduct(productTagEntity);
		}
	}

	public void mapPhotoToProduct(PhotoEntity photoEntity) {
		productManagmentRepository.mapProductPhotos(photoEntity);
	}

	public List<ProductEntity> getAllProducts() {

		List<ProductEntity> productEntities = productManagmentRepository.getProductEntity(null);
		
		for (Iterator<ProductEntity> iterator = productEntities.iterator(); iterator.hasNext();) {
			ProductEntity productEntity = iterator.next();
			productEntity.setProductDescription(productEntity.getProductDescription().replaceAll("\\s+", " "));
			
			List<TagEntity> tagEntities = new LinkedList<TagEntity>();

			List<ProductTagEntity> productTagEntities = productManagmentRepository
					.getMappedProductTags(productEntity) != null
							? productManagmentRepository.getMappedProductTags(productEntity)
							: new LinkedList<ProductTagEntity>();

			for (Iterator<ProductTagEntity> tagIterator = productTagEntities.iterator(); tagIterator.hasNext();) {
				ProductTagEntity productTagEntity = tagIterator.next();
				TagEntity tagEntity = productManagmentRepository.getTagFromId(productTagEntity.getTagId());
				tagEntities.add(tagEntity);
			}
			
			PhotoEntity photoEntity = productManagmentRepository.getMappedProductPhotos(productEntity);
			
			if (photoEntity != null) {
				photoEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage1()));
				photoEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage2()));
				photoEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage3()));
				productEntity.setPhotoEntity(photoEntity);
			}
			productEntity.setTagEntities(tagEntities);
			
			List<ProductReviewEntity> reviewEntities = reviewRepository.getAllReviewForProduct(productEntity.getProductId());
			productEntity.setReviewEntities(reviewEntities);
		}

		return productEntities;
	}

	public ProductEntity getProductService(String productCode) {
		ProductEntity productEntity = new ProductEntity();
		List<TagEntity> tagEntities = new LinkedList<TagEntity>();

		productEntity.setProductCode(productCode);
		productEntity = productManagmentRepository.getProductEntity(productEntity).size() > 0
				&& productManagmentRepository.getProductEntity(productEntity) != null
						? productManagmentRepository.getProductEntity(productEntity).get(0) : new ProductEntity();
		List<ProductTagEntity> productTagEntities = productManagmentRepository
				.getMappedProductTags(productEntity) != null
						? productManagmentRepository.getMappedProductTags(productEntity)
						: new LinkedList<ProductTagEntity>();

		for (Iterator<ProductTagEntity> iterator = productTagEntities.iterator(); iterator.hasNext();) {
			ProductTagEntity productTagEntity = iterator.next();
			TagEntity tagEntity = productManagmentRepository.getTagFromId(productTagEntity.getTagId());
			tagEntities.add(tagEntity);
		}

		PhotoEntity photoEntity = productManagmentRepository.getMappedProductPhotos(productEntity);
		if (photoEntity != null && productEntity != null) {
			photoEntity.setBinaryPhoto1(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage1()));
			photoEntity.setBinaryPhoto2(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage2()));
			photoEntity.setBinaryPhoto3(Encrypter.convertByteToBase64Encoder(photoEntity.getProductImage3()));
			productEntity.setPhotoEntity(photoEntity);
		}
		if (productEntity != null) {
			productEntity.setTagEntities(tagEntities);
		}
		List<ProductReviewEntity> reviewEntities = reviewRepository.getAllReviewForProduct(productEntity.getProductId());
		productEntity.setReviewEntities(reviewEntities);

		return productEntity;
	}

	public void deleteMappedProductTag(int productId, String[] tags) {
		productManagmentRepository.deleteMappedProductTags(productId);
		mapTagsToProduct(productId, tags);
	}

	public void deleteMappedProductPhotos(PhotoEntity photoEntity) {
		productManagmentRepository.deleteMappedProductPhotos(photoEntity.getProductId());
		mapPhotoToProduct(photoEntity);
	}

	public void deleteProductPhotos(int productId) {
		productManagmentRepository.deletedProduct(productId);
	}

}
