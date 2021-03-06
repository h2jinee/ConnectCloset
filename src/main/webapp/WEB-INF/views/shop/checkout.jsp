<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import=" com.connectcloset.cc.member.model.vo.Member, java.util.*,com.connectcloset.cc.item.model.vo.Item "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
int totalPrice = 0;
List<Item> itemList = (List<Item>)request.getAttribute("itemList");
Member member = (Member)session.getAttribute("memberLoggedIn");
%>
<fmt:requestEncoding value="utf-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!-- 아임포트 제공 js & payment 스크립트  -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">


document.addEventListener('DOMContentLoaded', function(){
function usePoint(){
	console.log("usePoint");
	//포인트관련 변수
	let memberHavePoint = document.querySelector("#memberHavePoint").innerText;
	memberHavePoint = memberHavePoint.replace(",", "").replace("원", "")*1;
	let inputPoint = document.querySelector("#inputPoint"); //사용할 포인트 입력태그

	let showUsePoint = document.querySelector("#showUsePoint"); //결제금액 사용포인트란
	let userPoint = document.querySelector("#userPoint"); //최종결제금액 포인트사용란
	
	//최종결제금액 변수
	let userItemPrice = document.querySelector("#userItemPrice").innerText.replace(",","")*1; //주문상품

	let userTotalPrice = document.querySelector("#userTotalPrice"); //총 결제금액
	
	//사용자가 포인트 입력한 후
	inputPoint.addEventListener('blur', function(){
		let val = this.value*1;
		let userPointNum = 0;
		console.log(memberHavePoint);
		console.log(val);
		//유효성검사
		if(val > memberHavePoint){
			alert("보유금액 이상 사용은 불가능합니다.");
			this.value = memberHavePoint;
			showUsePoint.innerText = memberHavePoint.toLocaleString();
			userPoint.innerText = memberHavePoint.toLocaleString();
			
			
			//총결제금액
			userPointNum = userPoint.innerText.replace(",", "");
			userTotalPrice.innerText = (totalPrice-userPointNum).toLocaleString();
			return;
		}
		
		
		showUsePoint.innerText = val.toLocaleString();
		userPoint.innerText = val.toLocaleString();
		
		//총결제금액
		userPointNum = userPoint.innerText.replace(",", "");
		userTotalPrice.innerText = (totalPrice-userPointNum).toLocaleString();
	});
	

	
}
 usePoint(); //포인트 계산
});

</script>
<!-- breadcrumb area -->
<div class="breadcrumb-area bg-img pt-230 pb-152"
	style="background:#212529;">

	<div class="container">
		<!-- <div class="breadcrumb-content breadcrumb-black2 text-center">
			<h2>Shop</h2>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="shop-grid-col4.html">Shop</a></li>
				<li class="active">Checkout</li>
			</ul>
		</div> -->
	</div>
</div>


<div class="checkout-area pt-95 pb-100">

	<div class="container">

		<div class="row">
			<div class="col-lg-7">
				<div class="billing-info-wrap">
					<h3>Billing Details</h3>
					<div class="row">
						<!-- <div class="col-lg-6 col-md-6">
							<div class="billing-info mb-25">
								<label>성</label> <input type="text" value="$"/>
							</div>
						</div> -->
						<div class="col-lg-6 col-md-6">
							<div class="billing-info mb-25">
								<label>이름</label> <input type="text" name="memeberName"
									 value="${memberLoggedIn.memberName}" />
							</div>
						</div>
						<!--  <div class="col-lg-12">
                                    <div class="billing-info mb-25">
                                        <label>Company Name</label>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-select mb-25">
                                        <label>Country</label>
                                        <select>
                                            <option>Select a country</option>
                                            <option>Azerbaijan</option>
                                            <option>Bahamas</option>
                                            <option>Bahrain</option>
                                            <option>Bangladesh</option>
                                            <option>Barbados</option>
                                        </select>
                                    </div>
                                </div> -->
						<div class="col-lg-12">
							<div class="billing-info mb-25">
								<label>주소</label> <input class="billing-address"
									placeholder="ex) 서울시 강남구 역삼동" type="text" name="memberAddress"
									value="${memberLoggedIn.memberAddress}"> <input
									placeholder="상세주소" type="text" name="memberDetailAdress"
									value="${memberLoggedIn.memberDetailAddress}" />
							</div>
						</div>
						<div class="col-lg-12">
							<div class="billing-info mb-25">
								<label>우편번호</label> <input type="text" name="memberPostcode"
									value="${memberLoggedIn.memberPostcode}" />
							</div>
						</div>
						<!-- <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-25">
                                        <label>State / County</label>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-25">
                                        <label>Postcode / ZIP</label>
                                        <input type="text">
                                    </div>
                                </div> -->
						<div class="col-lg-6 col-md-6">
							<div class="billing-info mb-25">
								<label>전화번호</label> <input type="text"
									placeholder="ex) 010-1234-1234" name="memberPhone"
									value="${memberLoggedIn.memberPhone}" />
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="billing-info mb-25">
								<label>이메일주소</label> <input type="text"
									placeholder="connectcloset@gmail.com" name="memberEmail"
									value="${memberLoggedIn.memberEmail}" />
							</div>
						</div>
					</div>
					<!--  <div class="checkout-account mb-50">
                                <input class="checkout-toggle2" type="checkbox">
                                <span>Create an account?</span>
                            </div>
                            <div class="checkout-account-toggle open-toggle2 mb-30">
                                <input placeholder="Email address" type="email">
                                <input placeholder="Password" type="password">
                                <button class="btn-hover checkout-btn" type="submit">register</button>
                            </div> -->
					<div class="additional-info-wrap">
						<h3>Delivery note</h3>
						<div class="additional-info">
							<!--      <label>배송주의 사항은 택배사로 전송됩니다.</label> -->
							<textarea placeholder="배송주의 사항은 택배사로 전송됩니다." name="message"></textarea>
						</div>
					</div>
					<div class="checkout-account mt-25">
						<input class="checkout-toggle" type="checkbox"> <span>다른
							배송정보를 입력하시겠습니까?</span>
					</div>
					<div class="different-address open-toggle mt-30">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="billing-info mb-25">
									<label>성</label> <input type="text">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="billing-info mb-25">
									<label>이름</label> <input type="text">
								</div>
							</div>
							<!--  <div class="col-lg-12">
                                        <div class="billing-info mb-25">
                                            <label>Company Name</label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="billing-select mb-25">
                                            <label>Country</label>
                                            <select>
                                                <option>Select a country</option>
                                                <option>Azerbaijan</option>
                                                <option>Bahamas</option>
                                                <option>Bahrain</option>
                                                <option>Bangladesh</option>
                                                <option>Barbados</option>
                                            </select>
                                        </div>
                                    </div> -->
							<div class="col-lg-12">
								<div class="billing-info mb-25">
									<label>주소</label> <input class="billing-address"
										placeholder="ex) 서울시 강남구 역삼동" type="text"> <input
										placeholder="상세주소" type="text">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="billing-info mb-25">
									<label>우편번호</label> <input type="text">
								</div>
							</div>
							<!--
                                    <div class="col-lg-6 col-md-6">
                                        <div class="billing-info mb-25">
                                            <label>State / County</label>
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="billing-info mb-25">
                                            <label>Postcode / ZIP</label>
                                            <input type="text">
                                        </div>
                                    </div> -->
							<div class="col-lg-6 col-md-6">
								<div class="billing-info mb-25">
									<label>전화번호</label> <input type="text">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="billing-info mb-25">
									<label>이메일 주소</label> <input type="text">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="your-order-area">
					<h3>Your order</h3>

					<form>

						<div class="your-order-wrap gray-bg-4">
							<div class="your-order-product-info">
								<div class="your-order-top">
									<ul>
										<li>Product</li>
										<li>Total</li>
									</ul>
								</div>
								<div class="your-order-middle" id="your-order-middle">
									<ul>
										<c:forEach items="${itemList}" var="item" varStatus="vs">
											 <c:set var="totalPrice"
												value="${item.itemPrice*orderCount }" /> 
											<li><span class="order-middle-left"><span
													id="itemName" class="order-name">${item.itemName }</span> X
													
													${orderCount}</span> <span class="order-price">${item.itemPrice}
											</span></li>
										</c:forEach>
									</ul>
								</div>
								<div class="your-order-bottom">
									<ul>
										<li class="your-order-shipping">색상:${orderColor}</li>
										<li>사이즈:${orderSize}</li>
									</ul>
								</div>
								<div class="your-order-totalPoint">
									<ul>
									  <li>
                                <span class="have-point">보유포인트</span>
                                <span id="memberHavePoint">${totalPoint}</span>
                            </li>
                            <li>
                                <span class="use-point">사용포인트</span>
                                <input type="text" id="inputPoint" class="text-right" value="0">
                            
                            </li>
                             <ul class="list-unstyled">
                        <li><span class="ab-right"><input type="hidden" id="userItemPrice"></span></span></li>
                  
                        <li><span class="em-blue ab-right"><input type="hidden" id="userPoint"></span></span></li>
                    		</ul>
                         <span id="total-point" class="ab-right em-blue"><input type="hidden"  id="showUsePoint"></span></span>
									
							
									</ul>
								</div>
								<div class="your-order-total">
									<ul>
										<li class="order-total">Total</li>
									<li><span id="userTotalPrice"></span></li> 
										
										<input type="hidden" id="totalPrice" value="${totalPrice*orderCount}"></input>
										<input type="hidden" id="orderItemColor" value="${orderColor}"></input>
										<input type="hidden" id="orderItemSize" value="${orderSize}"></input>
										<input type="hidden" id="orderItemCount" value="${orderCount}"></input>
									</ul>
								</div>
							</div>
							<div class="payment-method">
								<div class="payment-accordion element-mrg">
									<div class="panel-group" id="payment-method">
										<div class="panel payment-accordion">
											<div class="panel-heading" id="method-one">
												<!-- <h4 class="panel-title">
												<h4>▼ 결제수단을 선택하세요</h4>
												<div id="payment-accordion" class="col-md-8">
													 <a data-toggle="collapse" data-parent="#payment-method" href="#method1">Direct bank transfer </a> 
												</h4> -->
											</div>
											<!--   <div id="method1" class="panel-collapse collapse show">
                                                    <div class="panel-body">
                                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                    </div>
                                                </div>
                                            </div> -->
											<div class="panel payment-accordion">
												<div class="panel-heading" id="method-two">
													<h4 class="panel-title">
														<a class="collapsed" data-toggle="collapse"
															data-parent="#payment-method" href="#method2"> 결제
															주의사항 </a>
													</h4>
												</div>
												<div id="method2" class="panel-collapse collapse">
													<div class="panel-body">
														<p>은행 점검시간인 23:30 ~ 00:30분까지는 카드사에 따라 결제가 불가 할 수
															있습니다.카드사 포인트와 쇼핑몰 포인트를 중복해서 사용하실 수 없습니다.</p>
													</div>
												</div>
											</div>
											<div class="panel payment-accordion">
												<div class="panel-heading" id="method-three">
													<h4 class="panel-title">
														<a class="collapsed" data-toggle="collapse"
															data-parent="#payment-method" href="#method3"> 환불 안내</a>
													</h4>
												</div>


												<div id="method3" class="panel-collapse collapse">
													<div class="panel-body">
														<p>구매 후 14일 이내 환불처리를 받으실 수 있으며, 구매확정이후 환불불가입니다. 신용카드
															환불은 카드사의 환불정책을 참고해주시기 바랍니다.</p>
													</div>
												</div>

												<h4 class="panel-title">
													<br />
													<h6>＊결제수단을 선택하세요</h6>
													<div class="payType" style="padding-top: 10px">
														<input type="radio" name="payType" id="payType"
															value="card" style="width: 12px; height: 12px"> <label
															for="payType">신용카드</label> <input type="radio"
															name="payType" id="payType" value="trans"
															style="width: 12px; height: 12px"> <label
															for="payType">실시간 계좌이체</label>
													</div>

													<div id="payment-accordion" class="col-md-8">

														<!--이전 checkout 버튼->
											<!-- 	<div class="Place-order mt-25">

													<a data-toggle="collapse" data-parent="#payment-method" href="#method1">
                                                           Direct bank transfer
                                                    </a> 
                                                 </div> -->
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>

					<!--결제 버튼으로 작업할 경우   -->
					<div class="Place-order mt-25">
						<a class="btn-hover" href="#">
							<button class="btn-hover" id="push_module" type="button" >Place
								Order</button>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<script>

	var itemNoArr = new Array();
	var totalPrice =$('#totalPrice').val();


	
	<%for(int i=0;i<itemList.size();i++){%>
	
		itemNoArr[<%=i%>]=<%=itemList.get(i).getItemNo()%>;
	
	<%}%>

	console.log(itemNoArr);
	
	$("#push_module").click(function () {
		//사용 포인트

		
		var itemName = $('#itemName')[0].innerText; 
		var orderItemColor =$('#orderItemColor').val();
		var orderItemSize =$('#orderItemSize').val();
		var orderItemCount =$('#orderItemCount').val();
		var userPoint =$('#inputPoint').val();
		var memberId = "<%=member.getMemberEmail()%>";
		//var orderNo = 
		let userTotalPrice = document.querySelector("#userTotalPrice").innerText.replace(",", "")*1; //총 결제금액		

		var $radioChk = $("input[type=radio]:checked").val();
		//결제수단 선택 유효성
		if($radioChk===undefined){
			alert("결제수단을 선택해주세요.");
			return;
		}
	
		console.log(itemName);
		console.log(userTotalPrice);
	
		

	//아임포트 변수 초기화	
	var IMP = window.IMP; // 생략가능
	//관리자번호
	IMP.init('imp13198485');


	IMP.request_pay({
	pg: 'inicis', // version 1.1.0부터 지원.
	pay_method: 'card',
	merchant_uid: 'connectcloset' + new Date().getTime(),
	name: itemName,
//결제창에서 보여질 이름
	amount: userTotalPrice,
	//amount: 1000,


	buyer_email: '<%=member.getMemberEmail()%>',
	buyer_name: '<%=member.getMemberName()%>',
	buyer_tel: '<%=member.getMemberPhone()%>',
	buyer_addr: '<%=member.getMemberAddress()%>',
	buyer_postcode: '<%=member.getMemberDetailAddress()%>',
	m_redirect_url: 'https://www.yourdomain.com/payments/complete'

}, function (rsp) {
	if (rsp.success) {
	console.log(rsp);	
	 $.ajax({
			url: "${pageContext.request.contextPath}/order/paymentsComplete.do",
			type: "post",
			traditional:true,
			data: {
				orderId: "<%=member.getMemberEmail()%>",
				payMethod: "card",

				orderTotalPrice : userTotalPrice,
				OrderItemCount:orderItemCount,
				orderItemColor : orderItemColor,
				orderItemSize : orderItemSize,				
				usePoint: userPoint,
				imp_uid: rsp.imp_uid,
				itemNoList : itemNoArr,
				memberNo : <%=member.getMemberNo()%>
			},
			dataType: "json"
	
		}).done(function(data){
	
			var msg = '결제가 완료되었습니다.\n';
			msg += '고유ID : ' + rsp.imp_uid+"\n";
			msg += '상점 거래ID : ' + rsp.merchant_uid+"\n";
			msg += '결제 금액 : ' + rsp.paid_amount+"\n";
			msg += '카드 승인번호 : ' + rsp.apply_num+"\n";
			alert(msg);
		});
	//성공 시 이동 페이지
	location.href="${pageContext.request.contextPath}";
	
	} 
		//결제실패
		else {
		var msg = '결제에 실패하였습니다.';
		msg += '에러내용 : ' + rsp.error_msg;
			alert(msg);
	//실패시 이동 페이지
	}
});
});
	
/* });   */
</script>

<script>
/* window.onload = function () {
	
	$.ajax({
		url: "${pageContext.request.contextPath}/shop/checkout",
		data: $("#your-order-middle").serialize(),
		dataType: "json",
		type: "GET",
		success : data => {
			console.log(data);
			var ul = $("<ul></ul>");
			//ul.append("<li><th>음식점</th><th>메뉴</th><th>가격</th></tr>");
			$.each(data,(idx, item)=>{
				console.log(idx, item);
				var li = $("<li></li>");
				li.append("<span>"+item.itemName+"</span>");
				li.append("<span>"+item.itemStock+"</span>");
				li.append("<span>"+item.itmePrice+"</span>");
				ul.append(li);
			});
			
			//$("#menuRecommendation-result").html(table);
		},
		error : (x,s,e) => {
			console.log("ajax요청실패!",x,s,e);
		}
	});

} */

</script>

<!-- <script>
function checkout(){
 		$("#devFrm").attr("action", "${pageContext.request.contextPath}/order/checkout.do")
 					.attr("method", "POST")
 					.submit();
 	}
 	
</script> -->
<style>
 #push_module{
  border:0px;
  color:white;
 background-color: rgba(0,0,0,0);

 }
 
 .your-order-totalPoint{
 padding-left:20px;
 }
 
 #inputPoint{

 }
</style> 
<jsp:include page="/WEB-INF/views/common/footer.jsp" />