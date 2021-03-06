package com.connectcloset.cc.item.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connectcloset.cc.blog.model.exception.BlogException;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.item.model.dao.ItemDAO;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

import com.connectcloset.cc.item.model.vo.ItemQna;
import com.connectcloset.cc.item.model.vo.ItemQnaAns;

import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;


@Service
public class ItemServiceImpl implements ItemService{
	
	static final Logger logger = LoggerFactory.getLogger(ItemServiceImpl.class);
	
	@Autowired
	ItemDAO itemDAO;
	
	//====================희진 새로 나온 상품 =========================
	@Override
	public List<ItemAndImageVO> newItemList(Item item) {
		return itemDAO.newItemList(item);
	}

	//===================희진  새로 나온 상품 끝========================

	
	//===================하은 끝=======================
	
	@Override
	public List<Item> selectItemNumber(int itemNo) {
		return itemDAO.selectItemNumber(itemNo);
	}

	//인덱스 상품 이미지
	/*@Override
	public List<ItemAndImageVO> selectItemImageList(int itemNO) {
		return itemDAO.selectItemImageList(itemNO);
	}*/

	@Override
	public List<ItemAndImageVO> selectImageList(int itemNo) {
		return itemDAO.selectImageList(itemNo);
	}
	
	
	@Override
	public List<ItemAndImageVO> shopCategories(Item item) {
		return itemDAO.shopCategories(item);
	}

	//===================하은 끝=======================


	
	//===================윤지 상품 리스트 시작=======================
		@Override
		public List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage) {
			return itemDAO.selectItemAndImageList(cPage, numPerPage);
		}
		
		@Override
		public int selectItemCount() {
			return itemDAO.selectItemCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectItemAndImageBrandList(int cPage, int numPerPage, String brandNo) {
			return itemDAO.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
		}
		
		@Override
		public int selectBrandItemCount(String brandNo) {
			return itemDAO.selectBrandItemCount(brandNo);
		}
		
		@Override
		public List<ItemAndImageVO2> selectOuterList(int cPage, int numPerPage) {
			return itemDAO.selectOuterList(cPage, numPerPage);
		}
		
		@Override
		public int selectOuterCount() {
			return itemDAO.selectOuterCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectTopList(int cPage, int numPerPage) {
			return itemDAO.selectTopList(cPage, numPerPage);
		}

		@Override
		public int selectTopCount() {
			return itemDAO.selectTopCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectBottomList(int cPage, int numPerPage) {
			return itemDAO.selectBottomList(cPage, numPerPage);
		}

		@Override
		public int selectBottomCount() {
			return itemDAO.selectBottomCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectDressList(int cPage, int numPerPage) {
			return itemDAO.selectDressList(cPage, numPerPage);
		}

		@Override
		public int selectDressCount() {
			return itemDAO.selectDressCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectBagList(int cPage, int numPerPage) {
			return itemDAO.selectBagList(cPage, numPerPage);
		}

		@Override
		public int selectBagCount() {
			return itemDAO.selectBagCount();
		}
		
		@Override
		public List<ItemAndImageVO2> selectShoesList(int cPage, int numPerPage) {
			return itemDAO.selectShoesList(cPage, numPerPage);
		}

		@Override
		public int selectShoesCount() {
			return itemDAO.selectShoesCount();
		}

		@Override
		public List<ItemAndImageVO2> selectItemAndImageTypeList(int cPage, int numPerPage, String itemTypeNo) {
			return itemDAO.selectItemAndImageTypeList(cPage, numPerPage, itemTypeNo);
		}
		
		@Override
		public int selectTypeItemCount(String itemTypeNo) {
			return itemDAO.selectTypeItemCount(itemTypeNo);
		}

		@Override
		public List<ItemAndImageVO2> selectAccList(int cPage, int numPerPage) {
			return itemDAO.selectAccList(cPage, numPerPage);
		}

		@Override
		public int selectAccCount() {
			return itemDAO.selectAccCount();
		}
		//===================윤지 상품 리스트 끝========================
	
		//===================찬호 시작========================
		@Override
		public ItemImage recentItem(String itemNo) {
			return itemDAO.recetnItem(itemNo);
		}
		
		@Override
		public List<ItemAndImageVO> searchAllItem(int cPage, int numPerPage, String searchKeyword) {
			return itemDAO.searchAllItem(cPage,numPerPage, searchKeyword);
		}
		
		@Override
		public int searchAllItemCount(String searchKeyword) {
			return itemDAO.searchAllItemCount(searchKeyword);
		}
		
		@Override
		public int addSearchKeyword(Map<String, String> map) {
			return itemDAO.addSearchKeyword(map);
		}

		//===================찬호 끝========================
	
	//===================주영 상품 상세보기 시작========================
	


	
	@Override
	public List<ItemImage> selectitemImagetList(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.selectitemImagetList(itmeNo);
	}
	
	@Override
	public ItemAndImageVO2 selectOneitemImage(int itmeNo) {
		// TODO Auto-generated method stub
		return itemDAO.selectOneitemImage(itmeNo);
	}
	@Override
	public List<Review> selectReviewList(int itmeNo) {
		// TODO Auto-generated method stub
		return  itemDAO.selectReviewList(itmeNo);
	}
	//===================주영  상품 상세보기  끝========================



	//===================하라  상품 상세보기 - QnA  시작========================
	
	@Override
	public int insertQna(ItemQna itemQna) {
		int result = 0 ;
		System.out.println("1111111111111111111");
		result = itemDAO.insertQna(itemQna);
		
                                                                                                           
		return result;
			}

	@Override
	public List<ItemQna> itemQnaList(int itmeNo) {
		return itemDAO.itemQnaList(itmeNo);
	}

	@Override
	public List<ItemQnaAns> ItemQnaAnsList() {
		return itemDAO.itemQnaAnsList();
	}



	


		
}		
	
	//===================하라  상품 상세보기 - QnA  끝========================




