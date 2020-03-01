<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8"/>

<style>
#formTable{
	width: 800px;
	height: 400px;
}

</style>

<jsp:include page="/WEB-INF/views/common/header.jsp" />


        <div class="single-product-area pt-180 pb-180">
            <div class="container">
                <div class="row">
                
                 <div class="description-review-area pb-70">
            <div class="container">
                <div class="description-review-wrapper">
                  
                    
                       
                      
                        <div id="des-details3" class="tab-pane ">
                            <div class="row">
                              
                                <div class="col-lg-5">
                                    <div class="ratting-form-wrapper pl-50">
                                        <h2>Add a Review</h2>
                                        <div class="ratting-form">
                                            <form action="${pageContext.request.contextPath }/mypage/mypage-reviewEnrollEnd.do?memberNo=${memberLoggedIn.memberNo}&reviewWriter=${memberLoggedIn.memberEmail}" 
                                            	method="post" enctype="multipart/form-data"
                                            	name="reviewForm">
                                            	
                                            	<table id="formTable">
                                             		<tr>
                                             			<td>
                                                   			<label for="review-star" id="starLabel">별점</label>
                                                    	</td>
                                                    	
                                                    	<td>
									                        <select name="reviewStar" id="reviewStar">
									                            <option value="1">★</option>
									                            <option value="2">★★</option>
									                            <option value="3">★★★</option>
									                            <option value="4">★★★★</option>
									                            <option value="5" selected>★★★★★</option>
									                        </select>
								                        </td>
                                                	</tr>
                                                
                                                <tr>
                                                	<td> 
                                                    	<input type="text" name="reviewTitle" placeholder="제목" >
													</td>
                                                    
													<td>
                                                        <input  type="text" value="${selectOnditemReview.orderId}"  name="reviewWriter" readonly="readonly">
                                                        <input  type="hidden" value="${selectOnditemReview.itemNo}"  name="reviewItemNo" >
                                                        <input  type="hidden" value="${selectOnditemReview.orderNo}"  name="orderNo">
                                                 	</td>
                                                 </tr>
                                                 <tr>
	                                                 <td>
															    <span class="input-group-text">첨부파일</span>
												 	 </td>
													 <td>
													 	<input type="file" class="custom-file-input" name="upFile" id="upFile" >
														<label class="custom-file-label" for="upFile">파일을 선택하세요</label>
													 </td>
												 </tr>
												 <tr>
												 	<td colspan="2">
								                        	<div class="img_wrap">
								                        		<img id="img" />
								                        	</div>
								                    </td>
		                       					</tr>
		                       					
												<tr>
													<td colspan="2">
                                                           <textarea name="reviewContent" placeholder="내용" ></textarea>
                                                    </td>
												</tr>
												
                                            	<tr>
                                            		<td colspan="2">
                                                    	<input type="button" value="Submit" onclick="review()">
													</td>
                                            	</tr>
                                           
                                                </table>
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                   
                </div>
            </div>
        </div>
                </div>
            </div>
        </div>
      
        

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script >
//-----------------------윤지 수정
function review(){
	var reveiwForm = document.reveiwForm;
	var reviewStar = reviewForm.reviewStar.value;
	var reviewTitle = reviewForm.reviewTitle.value;
	var upFile = reviewForm.upFile.value;
	var reviewContent = reviewForm.reviewContent.value;
	
	if(!reviewContent || !reviewStar || !reviewTitle || !upFile){
		alert("내용을 다 채워주세요")
	}
	else {
		reviewForm.submit();
		alert("리뷰 작성 완료");
	}
}
//------------------------------


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
	$("#upFile").on("change",handleImgFileSelect);
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

</script>
