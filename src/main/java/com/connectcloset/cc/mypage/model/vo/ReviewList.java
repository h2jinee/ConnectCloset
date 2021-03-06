package com.connectcloset.cc.mypage.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.connectcloset.cc.member.model.vo.Member;

public class ReviewList implements Serializable {

	private static final long serialVersionUID = 1L;

	
	

	private int reviewNo;
	private String reviewTitle;
	private String reviewWriter;
	private String reviewItemNo;
	private String reviewItemSize;
	private int reviewWriterHeight;
	private int reviewWriterWeight;
	private String reviewImage;
	private String orderNo;
	private String reviewContent;
	private int reviewStar;
	

	private String orderId;
	private Date orderDate;
	private int orderItemNo;
	private int orderItemCount; //구매수량
	private String orderPayMethod;
	private String orderPayStatus;
	private int orderTotalPrice;
	private int orderUsePoint;
	private int orderCuponNo;
	private String orderReviewYN;
	private String orderItemColor;
	private String orderItemSize;
	private String impUid; // 아임포트에서 발급하는 거래건당 고유번호
	private int memberNo;
	private String orderStatusNo;
	private String deliveryNo;
	
	
	

	
	private int itemNo;
	private String itemName;
	private int itemPrice;
	private String itemImageReName;
	
	
	public ReviewList() {}
	
	
	
	
	/**
	 * @param reviewNo
	 * @param reviewTitle
	 * @param reviewWriter
	 * @param reviewItemNo
	 * @param reviewItemSize
	 * @param reviewWriterHeight
	 * @param reviewWriterWeight
	 * @param reviewImage
	 * @param orderNo
	 * @param reviewContent
	 * @param reviewStar
	 * @param orderId
	 * @param orderDate
	 * @param orderItemNo
	 * @param orderItemCount
	 * @param orderPayMethod
	 * @param orderPayStatus
	 * @param orderTotalPrice
	 * @param orderUsePoint
	 * @param orderCuponNo
	 * @param orderReviewYN
	 * @param orderItemColor
	 * @param orderItemSize
	 * @param impUid
	 * @param memberNo
	 * @param orderStatusNo
	 * @param deliveryNo
	 * @param itemNo
	 * @param itemName
	 * @param itemPrice
	 * @param itemImageReName
	 */
	public ReviewList(int reviewNo, String reviewTitle, String reviewWriter, String reviewItemNo, String reviewItemSize,
			int reviewWriterHeight, int reviewWriterWeight, String reviewImage, String orderNo, String reviewContent,
			int reviewStar, String orderId, Date orderDate, int orderItemNo, int orderItemCount, String orderPayMethod,
			String orderPayStatus, int orderTotalPrice, int orderUsePoint, int orderCuponNo, String orderReviewYN,
			String orderItemColor, String orderItemSize, String impUid, int memberNo, String orderStatusNo,
			String deliveryNo, int itemNo, String itemName, int itemPrice, String itemImageReName) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewWriter = reviewWriter;
		this.reviewItemNo = reviewItemNo;
		this.reviewItemSize = reviewItemSize;
		this.reviewWriterHeight = reviewWriterHeight;
		this.reviewWriterWeight = reviewWriterWeight;
		this.reviewImage = reviewImage;
		this.orderNo = orderNo;
		this.reviewContent = reviewContent;
		this.reviewStar = reviewStar;
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderItemNo = orderItemNo;
		this.orderItemCount = orderItemCount;
		this.orderPayMethod = orderPayMethod;
		this.orderPayStatus = orderPayStatus;
		this.orderTotalPrice = orderTotalPrice;
		this.orderUsePoint = orderUsePoint;
		this.orderCuponNo = orderCuponNo;
		this.orderReviewYN = orderReviewYN;
		this.orderItemColor = orderItemColor;
		this.orderItemSize = orderItemSize;
		this.impUid = impUid;
		this.memberNo = memberNo;
		this.orderStatusNo = orderStatusNo;
		this.deliveryNo = deliveryNo;
		this.itemNo = itemNo;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemImageReName = itemImageReName;
	}




	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewWriter() {
		return reviewWriter;
	}
	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}
	public String getReviewItemNo() {
		return reviewItemNo;
	}
	public void setReviewItemNo(String reviewItemNo) {
		this.reviewItemNo = reviewItemNo;
	}
	public String getReviewItemSize() {
		return reviewItemSize;
	}
	public void setReviewItemSize(String reviewItemSize) {
		this.reviewItemSize = reviewItemSize;
	}
	public int getReviewWriterHeight() {
		return reviewWriterHeight;
	}
	public void setReviewWriterHeight(int reviewWriterHeight) {
		this.reviewWriterHeight = reviewWriterHeight;
	}
	public int getReviewWriterWeight() {
		return reviewWriterWeight;
	}
	public void setReviewWriterWeight(int reviewWriterWeight) {
		this.reviewWriterWeight = reviewWriterWeight;
	}
	public String getReviewImage() {
		return reviewImage;
	}
	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderItemNo() {
		return orderItemNo;
	}
	public void setOrderItemNo(int orderItemNo) {
		this.orderItemNo = orderItemNo;
	}
	public int getOrderItemCount() {
		return orderItemCount;
	}
	public void setOrderItemCount(int orderItemCount) {
		this.orderItemCount = orderItemCount;
	}
	public String getOrderPayMethod() {
		return orderPayMethod;
	}
	public void setOrderPayMethod(String orderPayMethod) {
		this.orderPayMethod = orderPayMethod;
	}
	public String getOrderPayStatus() {
		return orderPayStatus;
	}
	public void setOrderPayStatus(String orderPayStatus) {
		this.orderPayStatus = orderPayStatus;
	}
	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}
	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}
	public int getOrderUsePoint() {
		return orderUsePoint;
	}
	public void setOrderUsePoint(int orderUsePoint) {
		this.orderUsePoint = orderUsePoint;
	}
	public int getOrderCuponNo() {
		return orderCuponNo;
	}
	public void setOrderCuponNo(int orderCuponNo) {
		this.orderCuponNo = orderCuponNo;
	}
	public String getOrderReviewYN() {
		return orderReviewYN;
	}
	public void setOrderReviewYN(String orderReviewYN) {
		this.orderReviewYN = orderReviewYN;
	}
	public String getOrderItemColor() {
		return orderItemColor;
	}
	public void setOrderItemColor(String orderItemColor) {
		this.orderItemColor = orderItemColor;
	}
	public String getOrderItemSize() {
		return orderItemSize;
	}
	public void setOrderItemSize(String orderItemSize) {
		this.orderItemSize = orderItemSize;
	}
	public String getImpUid() {
		return impUid;
	}
	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getOrderStatusNo() {
		return orderStatusNo;
	}
	public void setOrderStatusNo(String orderStatusNo) {
		this.orderStatusNo = orderStatusNo;
	}
	public String getDeliveryNo() {
		return deliveryNo;
	}
	public void setDeliveryNo(String deliveryNo) {
		this.deliveryNo = deliveryNo;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemImageReName() {
		return itemImageReName;
	}
	public void setItemImageReName(String itemImageReName) {
		this.itemImageReName = itemImageReName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	public int getReviewStar() {
		return reviewStar;
	}




	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}




	@Override
	public String toString() {
		return "ReviewList [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewWriter=" + reviewWriter
				+ ", reviewItemNo=" + reviewItemNo + ", reviewItemSize=" + reviewItemSize + ", reviewWriterHeight="
				+ reviewWriterHeight + ", reviewWriterWeight=" + reviewWriterWeight + ", reviewImage=" + reviewImage
				+ ", orderNo=" + orderNo + ", reviewContent=" + reviewContent + ", reviewStar=" + reviewStar
				+ ", orderId=" + orderId + ", orderDate=" + orderDate + ", orderItemNo=" + orderItemNo
				+ ", orderItemCount=" + orderItemCount + ", orderPayMethod=" + orderPayMethod + ", orderPayStatus="
				+ orderPayStatus + ", orderTotalPrice=" + orderTotalPrice + ", orderUsePoint=" + orderUsePoint
				+ ", orderCuponNo=" + orderCuponNo + ", orderReviewYN=" + orderReviewYN + ", orderItemColor="
				+ orderItemColor + ", orderItemSize=" + orderItemSize + ", impUid=" + impUid + ", memberNo=" + memberNo
				+ ", orderStatusNo=" + orderStatusNo + ", deliveryNo=" + deliveryNo + ", itemNo=" + itemNo
				+ ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemImageReName=" + itemImageReName + "]";
	}




	

	
	
	
	
}

	
	