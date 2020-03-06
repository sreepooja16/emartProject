package com.project.emart.service;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.emart.dao.ItemDao;
import com.project.emart.entity.CategoryEntity;
import com.project.emart.entity.ItemEntity;
import com.project.emart.entity.SellerSignupEntity;
import com.project.emart.entity.SubCategoryEntity;
import com.project.emart.pojo.CategoryPojo;
import com.project.emart.pojo.ItemPojo;
import com.project.emart.pojo.SellerSignupPojo;
import com.project.emart.pojo.SubCategoryPojo;
import java.util.Iterator;

@Service
public class ItemServiceImpl implements ItemService {
	
	static Logger LOG = Logger.getLogger(ItemServiceImpl.class.getClass());
	@Autowired
	ItemDao itemDao;

	// Retrieving Item Details//
	
	@Override
		
		public ItemPojo getItem(int itemId) {
		
		BasicConfigurator.configure();
		LOG.info("entered getItem()");
			
			  ItemPojo itemPojo = null; 
			  Optional result = itemDao.findById(itemId);
			  if(result.isPresent()) {
			  
			  ItemEntity itemEntity = (ItemEntity) result.get(); SubCategoryEntity
			  subCategoryEntity = itemEntity.getSubcategory(); CategoryEntity
			  categoryEntity = subCategoryEntity.getCategory();
			  
			  SellerSignupEntity sellersignupEntity=itemEntity.getSellerId();
			  
			  //copying Entities into Pojo//
			 
			  CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(),
					  					categoryEntity.getName(),
					  					categoryEntity.getBrief()); 
			  
			  SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
					  							subCategoryEntity.getName(),
					  							categoryPojo,
					  							subCategoryEntity.getBrief(),
					  							subCategoryEntity.getGstPercent());
			  
			  SellerSignupPojo sellerPojo=new SellerSignupPojo(sellersignupEntity.getId(),
					  						sellersignupEntity.getUsername(),
					  						sellersignupEntity.getPassword(),
					  						sellersignupEntity.getCompany(),
					  						sellersignupEntity.getBrief(),
					  						sellersignupEntity.getGst(),
					  						sellersignupEntity.getAddress(),
					  						sellersignupEntity.getEmail(),
					  						sellersignupEntity.getWebsite(),
					  						sellersignupEntity.getContact());
			  
			  itemPojo = new ItemPojo(itemEntity.getId(), 
					  	itemEntity.getName(), 
					  	sellerPojo,
					  	subCategoryPojo, 
					  	itemEntity.getPrice(),
					  	itemEntity.getDescription(),
					  	itemEntity.getStock(), 
					  	itemEntity.getRemarks(), 
					  	itemEntity.getImage()
			  
			  ); }
			  
			  BasicConfigurator.configure();
			  LOG.info("exited getItem()");
			  return itemPojo;
			  
			 
				
	}
	
	@Override
	public List<ItemPojo> getAllitems()
	
	{
		BasicConfigurator.configure();
		LOG.info("entered getAllitems()");
	
		List<ItemPojo> allItemPojo = new ArrayList();
		Iterable<ItemEntity> allItemEntity = itemDao.findAll();
		Iterator itr = allItemEntity.iterator();
		
		while(itr.hasNext())
		{
			ItemEntity itemEntity = (ItemEntity) itr.next();
			SubCategoryEntity subCategoryEntity = itemEntity.getSubcategory();
			CategoryEntity categoryEntity = subCategoryEntity.getCategory();
			 SellerSignupEntity sellersignupEntity=itemEntity.getSellerId();
			
			CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(),
											categoryEntity.getName(),
											categoryEntity.getBrief());
			
			SellerSignupPojo sellerPojo=new SellerSignupPojo(sellersignupEntity.getId(),
										sellersignupEntity.getUsername(),
										sellersignupEntity.getPassword(),
										sellersignupEntity.getCompany(),
										sellersignupEntity.getBrief(),
										sellersignupEntity.getGst(),
										sellersignupEntity.getAddress(),
										sellersignupEntity.getEmail(),
										sellersignupEntity.getWebsite(),
										sellersignupEntity.getContact());
			
			
			
			SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
												subCategoryEntity.getName(),
												categoryPojo,
												subCategoryEntity.getBrief(),
												subCategoryEntity.getGstPercent());
			
			
			ItemPojo itemPojo = new ItemPojo(itemEntity.getId(), 
								itemEntity.getName(), 
								sellerPojo,
								subCategoryPojo, 
								itemEntity.getPrice(),
								itemEntity.getDescription(),
								itemEntity.getStock(), 
								itemEntity.getRemarks(), 
								itemEntity.getImage()
					  
					  );
			
					  
			allItemPojo.add(itemPojo);
			
		}
		
		BasicConfigurator.configure();
		LOG.info("exited getAllitems()");
		return allItemPojo;
			
		}
	

	public List<ItemPojo> getAllItems() {
		// TODO Auto-generated method stub
		return null;
	}

			
		}
		


