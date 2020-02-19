package com.connectcloset.cc.item.model.vo;

import java.io.Serializable;
import java.sql.Date;


public class ItemQna implements Serializable{
	
		private static final long serialVersionUID = 1L;
		
		private int itemQnaNo;
		private int memberNo;
		private int itemNo;
		private String itemQnaTitle;
		private String itemQnaContent;
		private char itemQnaAnsYn;
		private Date itemQnaDate;
		
		
		ItemQna() {
			super();
			// TODO Auto-generated constructor stub
		}


		ItemQna(int itemQnaNo, int memberNo, int itemNo, String itemQnaTitle, String itemQnaContent, char itemQnaAnsYn,
				Date itemQnaDate) {
			super();
			this.itemQnaNo = itemQnaNo;
			this.memberNo = memberNo;
			this.itemNo = itemNo;
			this.itemQnaTitle = itemQnaTitle;
			this.itemQnaContent = itemQnaContent;
			this.itemQnaAnsYn = itemQnaAnsYn;
			this.itemQnaDate = itemQnaDate;
		}


		public int getItemQnaNo() {
			return itemQnaNo;
		}


		public void setItemQnaNo(int itemQnaNo) {
			this.itemQnaNo = itemQnaNo;
		}


		public int getMemberNo() {
			return memberNo;
		}


		public void setMemberNo(int memberNo) {
			this.memberNo = memberNo;
		}


		public int getItemNo() {
			return itemNo;
		}


		public void setItemNo(int itemNo) {
			this.itemNo = itemNo;
		}


		public String getItemQnaTitle() {
			return itemQnaTitle;
		}


		public void setItemQnaTitle(String itemQnaTitle) {
			this.itemQnaTitle = itemQnaTitle;
		}


		public String getItemQnaContent() {
			return itemQnaContent;
		}


		public void setItemQnaContent(String itemQnaContent) {
			this.itemQnaContent = itemQnaContent;
		}


		public char getItemQnaAnsYn() {
			return itemQnaAnsYn;
		}


		public void setItemQnaAnsYn(char itemQnaAnsYn) {
			this.itemQnaAnsYn = itemQnaAnsYn;
		}


		public Date getItemQnaDate() {
			return itemQnaDate;
		}


		public void setItemQnaDate(Date itemQnaDate) {
			this.itemQnaDate = itemQnaDate;
		}


		public static long getSerialversionuid() {
			return serialVersionUID;
		}


		@Override
		public String toString() {
			return "ItemQna [itemQnaNo=" + itemQnaNo + ", memberNo=" + memberNo + ", itemNo=" + itemNo
					+ ", itemQnaTitle=" + itemQnaTitle + ", itemQnaContent=" + itemQnaContent + ", itemQnaAnsYn="
					+ itemQnaAnsYn + ", itemQnaDate=" + itemQnaDate + "]";
		}


		
}