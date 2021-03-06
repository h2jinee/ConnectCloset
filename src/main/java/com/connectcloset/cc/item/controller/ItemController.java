package com.connectcloset.cc.item.controller;


import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.Cookie;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.admin.model.service.AdminService;
import com.connectcloset.cc.blog.model.exception.BlogException;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

import com.connectcloset.cc.item.model.vo.ItemQna;
import com.connectcloset.cc.item.model.vo.ItemQnaAns;

import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;
import com.connectcloset.cc.video.service.VideoService;
import com.connectcloset.cc.video.vo.Video;


@Controller
public class ItemController {
	
	private final static Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	ItemService itemService;
	

	@Autowired
	VideoService videoService;
	
	@Autowired
	AdminService adminService;
	//==================하은 인덱스 이미지 시작 =====================
	
	//곧 주석처리
	@RequestMapping("/cc/itemImageList.do")
	public ModelAndView itemImages (ModelAndView mav, int itemNo) {
	List<ItemAndImageVO> list = itemService.selectImageList(itemNo);
	logger.debug("list={}",list);
	mav.addObject("list",list);
	mav.setViewName("cc/itemImageList");
	return mav;
	}

	
	
	//index shopCategroies json
	@GetMapping("/shopCategories.do")
	@ResponseBody
	public List<ItemAndImageVO> shopCategories(Item item){
		List<ItemAndImageVO> list = itemService.shopCategories(item);
		logger.debug("categories={}", list);
		return list;
	}
	
	//==================하은 인덱스 이미지 =====================

	//===================희진  새로나온 상품시작======================
	
	//타입별 상품 나열
	//+이미지추가 
	//새로 나온 상품
	@GetMapping("/newItem.do")
	@ResponseBody
	public List<ItemAndImageVO> newItem(Item item) {
		List<ItemAndImageVO> list = itemService.newItemList(item);
		return list;
	}
	
	//마지막 블로그 글
	//@GetMapping("/latestBlog.do")
	//@ResponseBody
	//public List<Blog> latestBlog(Blog blog) {
	//	List<Blog> blog = blogService.latestBlogList(blog);
		
	//	return blog;
	//}
	
	//===================희진 새로나온 상품  끝======================
	

	//===================주영 상세보기  시작 ======================
	@RequestMapping("/shop/shop-fullwide-sidebar.do")
	public void shoppage() {
		
	}
	
	@RequestMapping("/shop/single-product.do")
	public ModelAndView singleproduct(ModelAndView mav ,@RequestParam("itemNo") int itmeNo){
		
		ItemAndImageVO2 item
		=itemService.selectOneitemImage(itmeNo);
		
		List<ItemImage> itemImage
		= itemService.selectitemImagetList(itmeNo);
		

		List<ItemQna> itemQnaList = itemService.itemQnaList(itmeNo);
		logger.debug("@@@@@@itemQnaList={}", itemQnaList);

		List<ItemQnaAns> itemQnaAnsList = itemService.ItemQnaAnsList();
		logger.debug("iQtemnaAnsList={}",itemQnaAnsList);
		
		mav.addObject("itemQnaList",itemQnaList);
		mav.addObject("itemQnaAnsList",itemQnaAnsList);

		List<Review> reviewList
		=itemService.selectReviewList(itmeNo);
		
		List<Video> videoList = videoService.selectVideoList();


		mav.addObject("reviewList",reviewList);
		mav.addObject("itemImage",itemImage);
		mav.addObject("item",item);
		mav.addObject("videoList",videoList);

		logger.debug("@@@@@@reviewList={}", reviewList);
		logger.debug("item@@@@@@={}", item);
		mav.setViewName("/shop/single-product");
		
		return mav;
		}
	
	//===================주영 상세보기 끝======================
	

	//===================하라 상세보기 - Qna 시작 ======================
	
	
	@RequestMapping("/qna/qnaFormEnd.do")
		public ModelAndView qnaFormEnd(ModelAndView mav, ItemQna itemQna,HttpServletRequest request) {
		
			int result = itemService.insertQna(itemQna);
		
			int itemNo = Integer.parseInt(request.getParameter("itemNo"));
			
		
			
			mav.addObject("msg", result>0? "게시물등록성공" : "실패!!");
			mav.addObject("loc", "/shop/single-product.do?itemNo="+itemNo);
			mav.setViewName("common/msg");
			
	 
			
			
			//예외를 스프링컨테이너에게 다시 던져서 예외페이지로 연결되도록 한다.
			/*throw e;*/
	
		
		return mav;
	}		
	//===================하라 상세보기 - Qna 끝 ======================

	//===================찬호 최근상품 시작=====================
	@RequestMapping("/recentItem.do")
	@ResponseBody
	public List<ItemImage> recentItem(String itemNoList) {
		List<ItemImage> list = new ArrayList<>();
		
		logger.debug(itemNoList);
		String[] itemNoArr = itemNoList.split(",");
		
		for(int i=0;i<itemNoArr.length;i++) {
			ItemImage itemImage = itemService.recentItem(itemNoArr[i]);
			list.add(itemImage);
		}
		
		logger.debug("list={}",list);
		
		return list;
	}
	
	@RequestMapping("/item/searchAllItem.do")
	public ModelAndView searchAllItem(ModelAndView mav, @RequestParam(defaultValue="0") int memberNo, @RequestParam String searchKeyword, @RequestParam(defaultValue="1") int cPage, @RequestParam(defaultValue="a") String brandNo, @RequestParam(defaultValue="a") String itemTypeNo) {
		logger.debug("searchKeyword={}",searchKeyword);
		final int numPerPage = 9;
		
		List<ItemAndImageVO> list = itemService.searchAllItem(cPage, numPerPage,searchKeyword);
		int totalContents = itemService.searchAllItemCount(searchKeyword);
		
		Map<String,String> map = new HashMap<>();
		map.put("searchKeyword", searchKeyword);
		map.put("memberNo", Integer.toString(memberNo));
		
		int result = itemService.addSearchKeyword(map);
		logger.debug("result@searchKeyword={}",result);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.addObject("brandNo", brandNo);
		mav.addObject("itemTypeNo", itemTypeNo);
		
		mav.setViewName("shop/shopItemList");
		
		return mav;
	}
	
	
	//===================찬호 최근상품 끝======================

	
	//===================윤지 상품 리스트 시작=====================
	
	@RequestMapping("/shop/shopItemList.do")
	public ModelAndView itemList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage, @RequestParam(defaultValue="a") String brandNo, @RequestParam(defaultValue="a") String itemTypeNo) {

		final int numPerPage = 9;
		
		List<ItemAndImageVO2> list = new ArrayList<>();
		int totalContents = 0;
		
		if(brandNo.equals("a") && itemTypeNo.equals("a")) {
			list = itemService.selectItemAndImageList(cPage, numPerPage);
			totalContents = itemService.selectItemCount();
		}
		else if(brandNo.equals("a") && !itemTypeNo.equals("a")){
			list = itemService.selectItemAndImageTypeList(cPage, numPerPage, itemTypeNo);
			totalContents = itemService.selectTypeItemCount(itemTypeNo);
		}
		else if(!brandNo.equals("a") && !itemTypeNo.equals("a")){
			list = itemService.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
			totalContents = itemService.selectBrandItemCount(brandNo);
		}
		else {
			list = itemService.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
			totalContents = itemService.selectBrandItemCount(brandNo);
		}
		
		if(itemTypeNo.equals("itype-001") || itemTypeNo.equals("itype-010") || itemTypeNo.equals("itype-011") || itemTypeNo.equals("itype-012") || itemTypeNo.equals("itype-013")){
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-001", "아우터");
			categoryMap.put("itype-010", "코트");
			categoryMap.put("itype-011", "조끼");
			categoryMap.put("itype-012", "자켓");
			categoryMap.put("itype-013", "가디건");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 1);
		}
		else if(itemTypeNo.equals("itype-002") || itemTypeNo.equals("itype-003") || itemTypeNo.equals("itype-007") || itemTypeNo.equals("itype-008")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-002", "셔츠");
			categoryMap.put("itype-003", "맨투맨 / 후드");
			categoryMap.put("itype-007", "니트");
			categoryMap.put("itype-008", "티셔츠");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 2);
		}
		else if(itemTypeNo.equals("itype-004") || itemTypeNo.equals("itype-005")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-004", "팬츠");
			categoryMap.put("itype-005", "진");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 3);
		}
		else if(itemTypeNo.equals("itype-006")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-006", "드레스 / 스커트");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 4);
		}
		else if(itemTypeNo.equals("itype-0014")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-014", "가방");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 5);
		}
		else if(itemTypeNo.equals("itype-009")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-009", "신발");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 6);
		}
		else if(itemTypeNo.equals("itype-015") || itemTypeNo.equals("itype-016") || itemTypeNo.equals("itype-017") || itemTypeNo.equals("itype-018")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-015", "지갑");
			categoryMap.put("itype-016", "액세서리");
			categoryMap.put("itype-017", "모자");
			categoryMap.put("itype-018", "선글라스");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 7);
		}
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.addObject("brandNo", brandNo);
		mav.addObject("itemTypeNo", itemTypeNo);
		
		mav.setViewName("shop/shopItemList");
		
		return mav;
	}
	

		@RequestMapping("/shop/outerList.do")
		public ModelAndView itemOuterList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectOuterList(cPage, numPerPage);
			
			int totalContents = itemService.selectOuterCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-001", "아우터");
			categoryMap.put("itype-010", "코트");
			categoryMap.put("itype-011", "조끼");
			categoryMap.put("itype-012", "자켓");
			categoryMap.put("itype-013", "가디건");

			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort",1);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "outer");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/topList.do")
		public ModelAndView itemTopList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectTopList(cPage, numPerPage);
			
			int totalContents = itemService.selectTopCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-002", "셔츠");
			categoryMap.put("itype-003", "맨투맨/후드");
			categoryMap.put("itype-007", "니트");
			categoryMap.put("itype-008", "티셔츠");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 2);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "top");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bottomList.do")
		public ModelAndView itemBottomList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBottomList(cPage, numPerPage);
			
			int totalContents = itemService.selectBottomCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-004", "팬츠");
			categoryMap.put("itype-005", "진");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 3);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "bottom");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/dressList.do")
		public ModelAndView itemDressList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectDressList(cPage, numPerPage);
			
			int totalContents = itemService.selectDressCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-006", "드레스/스커트");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 4);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "dress");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bagList.do")
		public ModelAndView itemBagList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBagList(cPage, numPerPage);
			
			int totalContents = itemService.selectBagCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-014", "가방");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 5);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);

			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "bag");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/shoesList.do")
		public ModelAndView itemShoesList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectShoesList(cPage, numPerPage);
			
			int totalContents = itemService.selectShoesCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-009", "신발");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 6);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "shose");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/accList.do")
		public ModelAndView itemAccList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectAccList(cPage, numPerPage);
			
			int totalContents = itemService.selectAccCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-015", "지갑");
			categoryMap.put("itype-016", "액세서리");
			categoryMap.put("itype-017", "모자");
			categoryMap.put("itype-018", "선글라스");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 7);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "acc");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/shopSearchItem.do")
		@ResponseBody
		public Map<String, Object> shopSearchItem(ModelAndView mav, String searchKeyword,  @RequestParam(defaultValue="1") int cPage) {
		
			Map<String, Object> map = new HashMap<>();
			
			final int numPerPage = 9;
			
			List<ItemAndImageVO> list = adminService.adminSearchItem(searchKeyword,cPage,numPerPage);
			
			int totalContents = adminService.selectSearchItemCount(searchKeyword);
			
			int brandYn = 0;
			mav.addObject("brandYn",brandYn);
			map.put("list",list);
			map.put("numPerPage",numPerPage);
			map.put("cPage",cPage);
			map.put("totalContents", totalContents);
			
			return map;
		}
	}
		//===================윤지 상품 리스트 끝=====================


