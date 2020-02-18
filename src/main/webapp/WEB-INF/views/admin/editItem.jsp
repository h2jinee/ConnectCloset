<%@page import="java.util.Arrays"%>
<%@page import="com.connectcloset.cc.item.model.vo.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
div#board-container label.custom-file-label{text-align:left;}
</style>
	<div class="pt-100">
        <form action="${pageContext.request.contextPath }/admin/editItemEnd.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="itemNo" value="${item.itemNo }"/>
	        <div class="single-product-area pt-80 pb-80">
	            <div class="container">
	                <div class="row">
	                    <div class="col-lg-6">
	                        <div class="product-details-img">
	                        
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
									    <span class="input-group-text">첨부파일1</span>
									  </div>
									<div class="custom-file">
								    	<input type="file" class="custom-file-input" name="upFile" id="upFile1" >
								    	<label class="custom-file-label" for="upFile1">${imageList[0].itemImageOriginName }</label>
									</div>
								</div>
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img" />
		                        	</div>
		                        </div>
								
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
						                <span class="input-group-text">첨부파일2</span>
						            </div>
						            <div class="custom-file">
						                <input type="file" class="custom-file-input" name="upFile" id="upFile2">
						                <label class="custom-file-label" for="upFile2">${imageList[1].itemImageOriginName }</label>
						            </div>
						        </div>
						        
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img2" />
		                        	</div>
		                        </div>
	
						        <div class="input-group mb-3" style="padding:0px;">
						            <div class="input-group-prepend" style="padding:0px;">
						                <span class="input-group-text">첨부파일3</span>
						            </div>
						            <div class="custom-file">
						                <input type="file" class="custom-file-input" name="upFile" id="upFile3">
						                <label class="custom-file-label" for="upFile2">${imageList[2].itemImageOriginName }</label>
						            </div>
						        </div>
		                        
								<div>
		                        	<div class="img_wrap">
		                        		<img id="img3" />
		                        	</div>
		                        </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-6">
	                        <div class="product-details-content pl-30">
	                            <input type="text" class="form-control form-control-lg" name="itemName" placeholder="상품명을 입력하세요" value="${item.itemName }">
	                            <br />
	                            <input type="text" class="form-control" name="itemPrice" placeholder="금액을 입력하세요" value="${item.itemPrice }">
	                            <br />
	                            <div class="form-group">
	    							<label for="exampleFormControlTextarea1">상품설명</label>
								    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="itemInfo">${item.itemInfo }</textarea>
								</div>
	                            <div class="pro-details-size-color2 mt-30">
	                                <div class="pro-details-color2-wrap" style="width:175px">
	                                    <span>Color</span>
	                                    <div class="form-group">
	                                    <% 
											/* List.contains메소드를 사용하기 위해 String[] => List로 형변환함.  */
											List<String> colorList = null;
											String[] color = ((Item)request.getAttribute("item")).getItemColors();
											if(color != null)//이 조건이 없다면,취미체크박스에 하나도 체크하지 않았다면, Array.asList(null)=>NullPointerException 
												colorList = Arrays.asList(color); 
											
											pageContext.setAttribute("colorList", colorList);
										%>
										    <select multiple class="form-control" id="itemColors" name="itemColors" style="width:170px">
										    	<option value="blue" ${colorList.contains("blue")?"selected":""}>blue</option>
										    	<option value="maroon" ${colorList.contains("maroon")?"selected":""}>maroon</option>
										    	<option value="gray" ${colorList.contains("gray")?"selected":""}>gray</option>
										    	<option value="green" ${colorList.contains("green")?"selected":""}>green</option>
										    	<option value="yellow" ${colorList.contains("yellow")?"selected":""}>yellow</option>
										    	<option value="white" ${colorList.contains("white")?"selected":""}>white</option>
										    	<option value="black" ${colorList.contains("black")?"selected":""}>black</option>
											</select>
										</div>
	                                </div>
	                                
	                                <div class="pro-details-size2">
	                                    <span>Size</span>
	                                     <div class="form-group">
	                                     <% 
											/* List.contains메소드를 사용하기 위해 String[] => List로 형변환함.  */
											List<String> sizeList = null;
											String[] size = ((Item)request.getAttribute("item")).getItemSize();
											if(size != null)//이 조건이 없다면,취미체크박스에 하나도 체크하지 않았다면, Array.asList(null)=>NullPointerException 
												sizeList = Arrays.asList(size); 
											
											pageContext.setAttribute("sizeList", sizeList);
										%>
										<c:if test="${item.itemTypeNo.equals('itype-009')!=true}">
										    <select multiple class="form-control" id="itemSize" name="itemSize" style="width:170px">
										    	<option value="xxs" ${sizeList.contains("xxs")?"selected":'' }>xxs</option>
										    	<option value="xs" ${sizeList.contains("xs")?"selected":'' }>xs</option>
										    	<option value="s" ${sizeList.contains("s")?"selected":'' }>s</option>
										    	<option value="m" ${sizeList.contains("m")?"selected":'' }>m</option>
										    	<option value="l" ${sizeList.contains("l")?"selected":'' }>l</option>
										    	<option value="xl" ${sizeList.contains("xl")?"selected":'' }>xl</option>
										    	<option value="xxl" ${sizeList.contains("xxl")?"selected":'' }>xxl</option>
											</select>
										</c:if>
										<c:if test="${item.itemTypeNo.equals('itype-009')==true}">
										    <select multiple class="form-control" id="itemSize" name="itemSize" style="width:170px">
										    	<option value="220" ${sizeList.contains("220")?"selected":'' }>220</option>
										    	<option value="230" ${sizeList.contains("230")?"selected":'' }>230</option>
										    	<option value="240" ${sizeList.contains("240")?"selected":'' }>240</option>
										    	<option value="250" ${sizeList.contains("250")?"selected":'' }>250</option>
										    	<option value="260" ${sizeList.contains("260")?"selected":'' }>260</option>
										    	<option value="270" ${sizeList.contains("270")?"selected":'' }>270</option>
										    	<option value="280" ${sizeList.contains("280")?"selected":'' }>280</option>
										    	<option value="290" ${sizeList.contains("290")?"selected":'' }>290</option>
											</select>
										</c:if>
										
										
										
										</div>
	                                </div>
	                            </div>
	                            <div class="pro-details-info-wrap">
		                            <div class="pro-details-info-list">
		                            	<ul>
		                            		<li class="pro-details-info-title">stock</li>
				                        	<li>
				                                <input type="text" class="form-control" name="itemStock" id="itemStock" value="${item.itemStock }" style="background-color: #fff;"/>
				                        	</li>
		                            	</ul>
		                            </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">brandName</li>
	                                        <li>
		                                    	<div class="form-group">
												    <select class="form-control" id="brandNo" name="brandNo">
													    <option value="brand-001" ${item.brandNo.equals('brand-001')?"selected":'' }>로우클래식</option>
													    <option value="brand-002" ${item.brandNo.equals('brand-002')?"selected":'' }>발렌시아가</option>
													    <option value="brand-003" ${item.brandNo.equals('brand-003')?"selected":'' }>지방시</option>
													    <option value="brand-004" ${item.brandNo.equals('brand-004')?"selected":'' }>셀린느</option>
													    <option value="brand-005" ${item.brandNo.equals('brand-005')?"selected":'' }>발렌티노</option>
													    <option value="brand-006" ${item.brandNo.equals('brand-006')?"selected":'' }>버버리</option>
													    <option value="brand-007" ${item.brandNo.equals('brand-007')?"selected":'' }>구찌</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Categories</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemTypeNo" name="itemTypeNo">
													    <option value="itype-001" ${item.itemTypeNo.equals('itype-001')?"selected":'' }>아우터</option>
													    <option value="itype-002" ${item.itemTypeNo.equals('itype-002')?"selected":'' }>셔츠</option>
													    <option value="itype-003" ${item.itemTypeNo.equals('itype-003')?"selected":'' }>맨투맨/후드</option>
													    <option value="itype-004" ${item.itemTypeNo.equals('itype-004')?"selected":'' }>팬츠</option>
													    <option value="itype-005" ${item.itemTypeNo.equals('itype-005')?"selected":'' }>진</option>
													    <option value="itype-006" ${item.itemTypeNo.equals('itype-006')?"selected":'' }>드레스/스커트</option>
													    <option value="itype-007" ${item.itemTypeNo.equals('itype-007')?"selected":'' }>니트</option>
													    <option value="itype-008" ${item.itemTypeNo.equals('itype-008')?"selected":'' }>티셔츠</option>
													    <option value="itype-009" ${item.itemTypeNo.equals('itype-009')?"selected":'' }>신발</option>
													    <option value="itype-010" ${item.itemTypeNo.equals('itype-010')?"selected":'' }>코트</option>
													    <option value="itype-011" ${item.itemTypeNo.equals('itype-011')?"selected":'' }>조끼</option>
													    <option value="itype-012" ${item.itemTypeNo.equals('itype-012')?"selected":'' }>자켓</option>
													    <option value="itype-013" ${item.itemTypeNo.equals('itype-013')?"selected":'' }>가디건</option>
													    <option value="itype-014" ${item.itemTypeNo.equals('itype-014')?"selected":'' }>핸드백</option>
													    <option value="itype-015" ${item.itemTypeNo.equals('itype-015')?"selected":'' }>지갑</option>
													    <option value="itype-016" ${item.itemTypeNo.equals('itype-016')?"selected":'' }>악세사리</option>
													    <option value="itype-017" ${item.itemTypeNo.equals('itype-017')?"selected":'' }>모자</option>
													    <option value="itype-018" ${item.itemTypeNo.equals('itype-018')?"selected":'' }>선글라스</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Gender</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemGenderNo" name="itemGenderNo">
													    <option value="igender-001" ${item.itemGenderNo.equals('igender-001')?"selected":'' }>남성</option>
													    <option value="igender-002" ${item.itemGenderNo.equals('igender-002')?"selected":'' }>여성</option>
													    <option value="igender-003" ${item.itemGenderNo.equals('igender-003')?"selected":'' }>공용</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Sale</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemSaleType" name="itemSaleType">
													    <option value="Y" ${item.itemSaleType eq 'Y'.charAt(0)?"selected":'' }>할인</option>
													    <option value="N" ${item.itemSaleType eq 'N'.charAt(0)?"selected":'' }>기본</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                                <div class="pro-details-info-list">
	                                    <ul>
	                                        <li class="pro-details-info-title">Limited Edition</li>
	                                        <li>
	                                        	<div class="form-group">
												    <select class="form-control" id="itemLimitedType" name="itemLimitedType">
													    <option value="Y" ${item.itemLimitedType eq 'Y'.charAt(0)?"selected":'' }>한정판</option>
													    <option value="N" ${item.itemLimitedType eq 'N'.charAt(0)?"selected":'' }>기본</option>
												    </select>
												</div>
	                                        </li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="description-review-area pb-70">
	            <div class="container">
	                <div class="description-review-wrapper">
	                    <div class="description-review-topbar nav">
	                        <a class="active" data-toggle="tab" href="#des-details1">Description</a>
	                    </div>
	                    <div class="tab-content description-review-bottom">
	                        <div id="des-details1" class="tab-pane active">
	                            <div class="product-description-wrapper">
	 								<div class="form-group">
									    <textarea class="form-control" id="exampleFormControlTextarea1" rows="6" name="itemDetailInfo">${item.itemDetailInfo }</textarea>
									</div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="submit-btn col-lg-4 offset-lg-4">
                <button class="btn-hover" type="submit">Edit</button>
            </div>
        </form>
	</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script>
	$(document).ready(function(){
		var header=$("header").attr('class','theme-bg');
		console.log(header);
	});
	$(function(){
		//파일 선택,취소시에 파일명 노출하기
		$("[name=upFile]").on("change",function(){
			//파일 입력 취소
			if($(this).prop("files")[0] === undefined){
				$(this).next(".custom-file-label").html("파일을 선택하세요");
				return;
			}
			
			var fileName = $(this).prop('files')[0].name;
			/* var fileName = $(this).val();//크롬,firefox의 경우 실제 컴퓨터의 경로를 노출하지 않는다. */
			$(this).next(".custom-file-label").html(fileName);
			
			
		});
		
	});

	var sel_file;
	
	$(document).ready(function(){
		$("#upFile1").on("change",handleImgFileSelect);
	});
	
	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	var sel_file2;
	
	$(document).ready(function(){
		$("#upFile2").on("change",handleImgFileSelect2);
	});
	
	function handleImgFileSelect2(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file2 = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img2").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	var sel_file3;
	
	$(document).ready(function(){
		$("#upFile3").on("change",handleImgFileSelect3);
	});
	
	function handleImgFileSelect3(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file3 = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img3").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>