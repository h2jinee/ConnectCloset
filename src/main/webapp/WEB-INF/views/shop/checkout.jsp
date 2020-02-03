<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<fmt:requestEncoding value="utf-8" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!--test주석 -->
<!-- breadcrumb area -->
<div class="breadcrumb-area bg-img pt-230 pb-152"
	style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb-3.jpg);">
	<div class="container">
		<div class="breadcrumb-content breadcrumb-black2 text-center">
			<h2>Shop</h2>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="shop-grid-col4.html">Shop</a></li>
				<li class="active">Checkout</li>
			</ul>
		</div>
	</div>
</div>
<!-- main-search start -->
<div class="main-search-active">
	<div class="sidebar-search-icon">
		<button class="search-close">
			<span class="ti-close"></span>
		</button>
	</div>
	<div class="sidebar-search-input">
		<form>
			<div class="form-search">
				<input id="search" class="input-text" value=""
					placeholder="Search Entire Store" type="search">
				<button>
					<i class="ti-search"></i>
				</button>
			</div>
		</form>
	</div>
</div>
<!-- summary-info start -->
<div class="summary-info sidebar-active">
	<div class="wrap-sidebar">
		<div class="sidebar-nav-icon">
			<button class="op-sidebar-close">
				<span class="ti-close"></span>
			</button>
		</div>
		<div class="summary-info-all">
			<div class="summary-logo">
				<a href="index.html"> <img
					src="${pageContext.request.contextPath }/resources/img/logo/logo-3.png"
					alt="">
				</a>
			</div>
			<div class="summary-list-wrap">
				<p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do
					eiusmod tempor incididu ut labore et dolore magna aliqua. Ut enim
					ad minim.</p>
				<div class="summary-list">
					<ul>
						<li><i class="ti-hand-point-right"></i>Project Management</li>
						<li><i class="ti-hand-point-right"></i>Portfolio Showcasing</li>
						<li><i class="ti-hand-point-right"></i>Blogs & Content
							Sharing</li>
						<li><i class="ti-hand-point-right"></i>Social Work Management</li>
						<li><i class="ti-hand-point-right"></i>eCommerce Shop
							Management</li>
					</ul>
				</div>
			</div>
			<div class="sidebar-contact">
				<h5>Fell Free To contact Us</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do
					eiusmod tempor incididu.</p>
				<div class="sidebar-contact-list">
					<ul>
						<li><i class="ti-location-pin"></i>123 - 45678910</li>
						<li><i class="ti-email"></i><a href="#">info@example.com</a></li>
						<li><i class="ti-location-pin"></i>115 5th Ave, New York</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="checkout-area pt-95 pb-100">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<div class="billing-info-wrap">
					<h3>Billing Details</h3>
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
									placeholder="ex) 010-1234-1234">
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="billing-info mb-25">
								<label>이메일주소</label> <input type="text"
									placeholder="connectcloset@gmail.com">
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
					<div class="your-order-wrap gray-bg-4">
						<div class="your-order-product-info">
							<div class="your-order-top">
								<ul>
									<li>Product</li>
									<li>Total</li>
								</ul>
							</div>
							<div class="your-order-middle">
								<ul>
									<li><span class="order-middle-left"><span
											class="order-name">Product Name</span> X 1</span> <span
										class="order-price">$329 </span></li>
									<li><span class="order-middle-left"><span
											class="order-name">Product Name</span> X 1</span> <span
										class="order-price">$329 </span></li>
								</ul>
							</div>
							<div class="your-order-bottom">
								<ul>
									<li class="your-order-shipping">Shipping</li>
									<li>Free shipping</li>
								</ul>
							</div>
							<div class="your-order-total">
								<ul>
									<li class="order-total">Total</li>
									<li>$329</li>
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
														data-parent="#payment-method" href="#method2"> 결제 주의사항
													</a>
												</h4>
											</div>
											<div id="method2" class="panel-collapse collapse">
												<div class="panel-body">
													<p>은행 점검시간인 23:30 ~ 00:30분까지는 카드사에 따라 결제가 불가 할 수 있습니다.카드사 포인트와 쇼핑몰 포인트를 중복해서 사용하실 수 없습니다.</p>
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
													<p> 구매 후 14일 이내 환불처리를 받으실 수 있으며, 구매확정이후 환불불가입니다. 신용카드 환불은 카드사의 환불정책을 참고해주시기 바랍니다.</p>
												</div>
											</div>

											<h4 class="panel-title">
												<br />
												<h6>＊결제수단을 선택하세요</h6>
												<div class="payType" style="padding-top:10px">
													<input type="radio" name="payType" id="payType"
														value="card" style="width:12px;height:12px" > <label for="payType">신용카드</label> <input
														type="radio" name="payType" id="payType" value="trans" style="width:12px;height:12px">
													<label for="payType">실시간 계좌이체</label>
												</div>

												<div id="payment-accordion" class="col-md-8">

													<!-- <a data-toggle="collapse" data-parent="#payment-method" href="#method1">
                                                            Direct bank transfer
                                                        </a> -->
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="Place-order mt-25">
						<a class="btn-hover" href="#">Place Order</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />