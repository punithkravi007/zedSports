package com.ecommerce.zedSports.Model.Repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecommerce.zedSports.Entities.CategoryEntity;
import com.ecommerce.zedSports.Entities.PhotoEntity;
import com.ecommerce.zedSports.Entities.ProductEntity;
import com.ecommerce.zedSports.Entities.ProductTagEntity;
import com.ecommerce.zedSports.Entities.TagEntity;

@Repository
public class ProductManagmentRepository {

	@Autowired
	private SessionFactory _sessionFactory;

	@SuppressWarnings("unchecked")
	public List<TagEntity> getProductTags(TagEntity tagEntity) {
		StatelessSession session = null;
		List<TagEntity> tags = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria tagCriteria = session.createCriteria(TagEntity.class);
			if (tagEntity != null) {
				Criterion tagCriterion = Restrictions.eq("tag", tagEntity.getTag());
				tagCriteria.add(tagCriterion);
			}
			tags = tagCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return tags;
	}

	@SuppressWarnings("unchecked")
	public List<CategoryEntity> getProductCategories(CategoryEntity categoryEntity) {
		StatelessSession session = null;
		List<CategoryEntity> categories = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria categoryCriteria = session.createCriteria(CategoryEntity.class);
			if (categoryEntity != null) {
				Criterion categoryCriterion = Restrictions.eq("category", categoryEntity.getCategory());
				categoryCriteria.add(categoryCriterion);
			}
			categories = categoryCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return categories;
	}

	public TagEntity getTagFromId(int tagId) {
		StatelessSession session = null;
		TagEntity tag = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria tagCriteria = session.createCriteria(TagEntity.class);
			Criterion tagCriterion = Restrictions.eq("tagId", tagId);
			tagCriteria.add(tagCriterion);
			tag = (TagEntity) tagCriteria.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return tag;
	}

	@SuppressWarnings("unchecked")
	public List<ProductTagEntity> getMappedProductTags(ProductEntity productEntity) {
		StatelessSession session = null;
		List<ProductTagEntity> tags = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria tagCriteria = session.createCriteria(ProductTagEntity.class);
			Criterion tagCriterion = Restrictions.eq("productId", productEntity.getProductId());
			tagCriteria.add(tagCriterion);
			tags = tagCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return tags;
	}

	public boolean addNewTag(TagEntity tagEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		boolean returnStatus = false;
		try {
			List<TagEntity> tags = getProductTags(tagEntity);
			if (tags.size() == 0) {
				session = _sessionFactory.openStatelessSession();
				transaction = session.beginTransaction();
				session.insert(tagEntity);
				transaction.commit();
				returnStatus = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return returnStatus;
	}

	public boolean addNewCategory(CategoryEntity categoryEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		boolean returnStatus = false;
		try {
			List<CategoryEntity> categories = getProductCategories(categoryEntity);
			if (categories.size() == 0) {
				session = _sessionFactory.openStatelessSession();
				transaction = session.beginTransaction();
				session.insert(categoryEntity);
				transaction.commit();
				returnStatus = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return returnStatus;
	}

	@SuppressWarnings("unchecked")
	public List<ProductEntity> getProductEntity(ProductEntity productEntity) {
		StatelessSession session = null;
		List<ProductEntity> products = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria productCriteria = session.createCriteria(ProductEntity.class);
			if (productEntity != null) {
				Criterion productCriterion = Restrictions.eq("productCode", productEntity.getProductCode());
				productCriteria.add(productCriterion);
			}
			products = productCriteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return products;
	}

	public ProductEntity getProductEntityOnId(ProductEntity productEntity) {
		StatelessSession session = null;
		ProductEntity product = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria productCriteria = session.createCriteria(ProductEntity.class).setMaxResults(1);
			Criterion productCriterion = Restrictions.eq("productId", productEntity.getProductId());
			productCriteria.add(productCriterion);
			product = (ProductEntity) productCriteria.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return product;
	}

	public String addNewProductBasicInfo(ProductEntity productEntity) {
		Session session = null;
		Transaction transaction = null;
		String returnStatus = "false";
		try {
			session = _sessionFactory.openSession();
			transaction = session.beginTransaction();
			session.saveOrUpdate(productEntity);
			transaction.commit();
			returnStatus = productEntity.getProductName();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return returnStatus;
	}

	public void mapTagToProduct(ProductTagEntity productTagEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			session.insert(productTagEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public void mapProductPhotos(PhotoEntity photoEntity) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			session.insert(photoEntity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public PhotoEntity getMappedProductPhotos(ProductEntity productEntity) {
		StatelessSession session = null;
		PhotoEntity photoEntity = null;
		try {
			session = _sessionFactory.openStatelessSession();
			Criteria photoCriteria = session.createCriteria(PhotoEntity.class);
			Criterion photoCriterion = Restrictions.eq("productId", productEntity.getProductId());
			photoCriteria.add(photoCriterion);
			photoEntity = (PhotoEntity) photoCriteria.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return photoEntity;
	}

	public void deleteMappedProductTags(int productId) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query deleteProductCTagMapping = session
					.createQuery("delete from ProductTagEntity where productId=:productId");
			deleteProductCTagMapping.setParameter("productId", productId);
			deleteProductCTagMapping.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public void deleteMappedProductPhotos(int productId) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query deleteProductPhotoMapping = session.createQuery("delete from PhotoEntity where productId=:productId");
			deleteProductPhotoMapping.setParameter("productId", productId);
			deleteProductPhotoMapping.executeUpdate();
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public void deletedProduct(int productId) {
		StatelessSession session = null;
		Transaction transaction = null;
		try {
			session = _sessionFactory.openStatelessSession();
			transaction = session.beginTransaction();
			Query deleteProduct = session
					.createQuery("UPDATE ProductEntity set productIsActive = :isActive WHERE productId = :productId");
			deleteProduct.setParameter("isActive", 0);
			deleteProduct.setParameter("productId", productId);
			deleteProduct.executeUpdate();
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
