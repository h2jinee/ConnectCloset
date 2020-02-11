<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	

	<!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        
        
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        
        <fmt:requestEncoding value="utf-8"/>
  
 
        
       <!--  header start
        <header class="header-area transparent-bar sticky-bar header-black header-padding header-hm6 mobile-menu-black">
            <div class="container-fluid">
                <div class="header-wrap header-flex">
                    <div class="logo mt-45">
                        <a href="index.html">
                            <img alt="" src="assets/img/logo/logo-3.png">
                        </a>
                    </div>
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li><a href="index.html">home</a>
                                    <ul class="submenu">
                                        <li><a href="index.html">home version 1</a></li>
                                        <li><a href="index-2.html">home version 2</a></li>
                                        <li><a href="index-3.html">home version 3</a></li>
                                        <li><a href="index-4.html">home version 4</a></li>
                                        <li><a href="index-5.html">home version 5</a></li>
                                        <li><a href="index-6.html">home version 6</a></li>
                                        <li><a href="index-7.html">home version 7</a></li>
                                        <li><a href="index-8.html">home version 8</a></li>
                                        <li><a href="index-9.html">home version 9</a></li>
                                        <li><a href="index-10.html">home version 10</a></li>
                                        <li><a href="index-11.html">home version 11</a></li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">Portfolio</a>
                                    <ul class="mega-menu mega-menu-white-bg">
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Portfolio Layout</a></li>
                                                <li><a href="por-carousel.html">Portfolio slider</a></li>
                                                <li><a href="por-grid-1-col.html">Grid 1 column</a></li>
                                                <li><a href="por-grid-3-col.html">grid 3 column</a></li>
                                                <li><a href="por-grid-3-col-sidebar.html">grid 3 col sidebar</a></li>
                                                <li><a href="por-grid-3-col-pagination.html">grid 3 col pagination </a></li>
                                                <li><a href="por-grid-3-col-pagination-sidebar.html">grid 3 col pagination sidebar </a></li>
                                                <li><a href="por-grid-3-alternative.html">por grid 3 alternative</a></li>
                                                <li><a href="por-grid-3-alternative-masonry.html">grid 3 alternative masonry</a></li>
                                                
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Portfolio Layout</a></li>
                                                <li><a href="por-grid-3-alternative-fw.html">grid 3 alternative full wide</a></li>
                                                <li><a href="por-grid-4-col-fullwide.html">grid 4 col fullwide</a></li>
                                                <li><a href="por-grid-mixed.html">Portfolio grid mixed</a></li>
                                                <li><a href="por-grid-mixed-fw.html">grid mixed fullwide</a></li>
                                                <li><a href="por-masonry-3-col.html">masonry 3 column</a></li>
                                                <li><a href="por-masonry-fw-bg.html">masonry fullwide</a></li>
                                                <li><a href="por-slider-fullwide.html"> slider fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Portfolio details layout</a></li>
                                                <li><a href="single-portfolio-1.html">single portfolio 1</a></li>
                                                <li><a href="single-portfolio-2.html">single portfolio 2</a></li>
                                                <li><a href="single-portfolio-3.html">single portfolio 3</a></li>
                                                <li><a href="single-portfolio-4.html">single portfolio 4</a></li>
                                                <li><a href="single-portfolio-5.html">single portfolio 5</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop-grid-col4.html">Shop</a>
                                    <ul class="mega-menu mega-menu-width-img">
                                        <li class="menu-img">
                                            <ul>
                                                <li><a href="single-product.html"><img alt="" src="assets/img/banner/menu.jpg"></a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">shop Layout</a></li>
                                                <li><a href="shop-carousel.html">shop carousel</a></li>
                                                <li><a href="shop-categories.html">shop categories</a></li>
                                                <li><a href="shop-filter-active.html">shop filter</a></li>
                                                <li><a href="shop-full-wide.html">shop full wide</a></li>
                                                <li><a href="shop-fullwide-sidebar.html">shop fullwide sidebar</a></li>
                                                <li><a href="shop-grid-col4.html">shop grid column 4</a></li>
                                                <li><a href="shop-grid-filter.html">shop grid filter</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">shop Layout</a></li>
                                                <li><a href="shop-grid-mixed.html">shop grid mixed</a></li>
                                                <li><a href="shop-grid-sidebar.html">shop grid sidebar</a></li>
                                                <li><a href="shop-list.html">shop list</a></li>
                                                <li><a href="shop-no-gutter.html">shop no gutter</a></li>
                                                <li><a href="shop-no-gutter-masonry.html">shop no gutter masonry</a></li>
                                                <li><a href="shop-no-gutters-fw.html">shop no gutters fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">product details layout</a></li>
                                                <li><a href="single-product.html">Standard style</a></li>
                                                <li><a href="single-product-2.html">Tab style</a></li>
                                                <li><a href="single-product-3.html">Tab style 2</a></li>
                                                <li><a href="single-product-4.html">Affiliate style</a></li>
                                                <li><a href="single-product-5.html">Slider style</a></li>
                                                <li><a href="single-product-6.html">Sticky style</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="blog-grid3-col.html">Blog</a>
                                    <ul class="mega-menu mega-menu-white-bg">
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Blog Layout</a></li>
                                                <li><a href="blog-grid3-col.html">blog grid 3 column</a></li>
                                                <li><a href="blog-grid3-col-sidebar.html"> grid 3 col sidebar</a></li>
                                                <li><a href="blog-grid3-col-pagination.html"> grid 3 col pagination</a></li>
                                                <li><a href="blog-grid3-masonry.html">blog grid 3 masonry</a></li>
                                                <li><a href="blog-list-sidebar.html">blog list sidebar </a></li>
                                                <li><a href="blog-list-alternative.html">blog list alternative</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Blog Layout</a></li>
                                                <li><a href="blog-masonry-alternative.html">masonry alternative</a></li>
                                                <li><a href="blog-fw-sidebar.html"> fullwide sidebar</a></li>
                                                <li><a href="blog-fw-masonry-sidebar.html"> fullwide masonry sidebar</a></li>
                                                <li><a href="blog-classic-col1.html"> classic column 1</a></li>
                                                <li><a href="blog-classic-alternative.html"> classic alternative</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Blog details layout</a></li>
                                                <li><a href="blog-details.html">blog details 1</a></li>
                                                <li><a href="blog-details-2.html">blog details 2</a></li>
                                                <li><a href="blog-details-3.html">blog details 3</a></li>
                                                <li><a href="blog-details-4.html">blog details 4</a></li>
                                                <li><a href="blog-details-5.html">blog details 5</a></li>
                                                <li><a href="blog-details-6.html">blog details 6</a></li>
                                                <li><a href="blog-details-7.html">blog details 7</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">Shortcode</a>
                                    <ul class="mega-menu mega-menu-2col">
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Shortcode column 1</a></li>
                                                <li><a href="shortcode-accordion.html">accordion</a></li>
                                                <li><a href="shortcode-alerts.html">alerts</a></li>
                                                <li><a href="shortcode-blockquote.html">blockquote</a></li>
                                                <li><a href="shortcode-brand-logo.html">brand logo</a></li>
                                                <li><a href="shortcode-button.html">button</a></li>
                                                <li><a href="shortcode-counter.html">counter</a></li>
                                                <li><a href="shortcode-dropcap.html">dropcap</a></li>
                                                <li><a href="shortcode-grid-system.html"> grid system</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Shortcode column 2</a></li>
                                                <li><a href="shortcode-faq.html">faq style</a></li>
                                                <li><a href="shortcode-social.html">social icon</a></li>
                                                <li><a href="shortcode-instagram.html">instagram</a></li>
                                                <li><a href="shortcode-list.html">list system</a></li>
                                                <li><a href="shortcode-pricing-table.html">pricing table</a></li>
                                                <li><a href="shortcode-progressbar.html">progressbar</a></li>
                                                <li><a href="shortcode-testimonial.html">testimonial</a></li>
                                                <li><a href="shortcode-tooltip-hightlight.html">tooltip & hightlight</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">Pages </a>
                                    <ul class="submenu">
                                        <li><a href="about-us.html">about us</a></li>
                                        <li><a href="cart-page.html">cart page</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="contact.html">contact us</a></li>
                                        <li><a href="contact-2.html">contact us 2</a></li>
                                        <li><a href="contact-3.html">contact us 3</a></li>
                                        <li><a href="login-register.html">login / register</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="header-right-wrap mt-55">
                        <div class="header-search mr-20">
                            <button class="sidebar-trigger-search">
                                <span class="ti-search"></span>
                            </button>
                        </div>
                        <div class="bar-icon">
                            <button class="header-navbar-active">
                                <span class="ti-menu"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="mobile-menu-area">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul class="menu-overflow">
                                <li><a href="index.html">HOME</a>
                                    <ul>
                                        <li><a href="index.html">home version 1</a></li>
                                        <li><a href="index-2.html">home version 2</a></li>
                                        <li><a href="index-3.html">home version 3</a></li>
                                        <li><a href="index-4.html">home version 4</a></li>
                                        <li><a href="index-5.html">home version 5</a></li>
                                        <li><a href="index-6.html">home version 6</a></li>
                                        <li><a href="index-7.html">home version 7</a></li>
                                        <li><a href="index-8.html">home version 8</a></li>
                                        <li><a href="index-9.html">home version 9</a></li>
                                        <li><a href="index-10.html">home version 10</a></li>
                                        <li><a href="index-11.html">home version 11</a></li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">portfolio</a>
                                    <ul>
                                        <li><a href="#">Portfolio Layout</a>
                                            <ul>
                                                <li><a href="por-carousel.html">Portfolio slider</a></li>
                                                <li><a href="por-grid-1-col.html">Grid 1 column</a></li>
                                                <li><a href="por-grid-3-col.html">grid 3 column</a></li>
                                                <li><a href="por-grid-3-col-sidebar.html">grid 3 col sidebar</a></li>
                                                <li><a href="por-grid-3-col-pagination.html">grid 3 col pagination </a></li>
                                                <li><a href="por-grid-3-col-pagination-sidebar.html">grid 3 col pagination sidebar </a></li>
                                                <li><a href="por-grid-3-alternative.html">por grid 3 alternative</a></li>
                                                <li><a href="por-grid-3-alternative-masonry.html">grid 3 alternative masonry</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Portfolio Layout</a>
                                            <ul>
                                                <li class="mega-menu-title"><a href="#">Portfolio Layout</a></li>
                                                <li><a href="por-grid-3-alternative-fw.html">grid 3 alternative full wide</a></li>
                                                <li><a href="por-grid-4-col-fullwide.html">grid 4 col fullwide</a></li>
                                                <li><a href="por-grid-mixed.html">Portfolio grid mixed</a></li>
                                                <li><a href="por-grid-mixed-fw.html">grid mixed fullwide</a></li>
                                                <li><a href="por-masonry-3-col.html">masonry 3 column</a></li>
                                                <li><a href="por-masonry-fw-bg.html">masonry fullwide</a></li>
                                                <li><a href="por-slider-fullwide.html"> slider fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Portfolio Details</a>
                                            <ul>
                                                <li><a href="single-portfolio-1.html">single portfolio 1</a></li>
                                                <li><a href="single-portfolio-2.html">single portfolio 2</a></li>
                                                <li><a href="single-portfolio-3.html">single portfolio 3</a></li>
                                                <li><a href="single-portfolio-4.html">single portfolio 4</a></li>
                                                <li><a href="single-portfolio-5.html">single portfolio 5</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop-grid-col4.html">Shop</a>
                                    <ul>
                                        <li><a href="#">Shop Layout</a>
                                            <ul>
                                                <li><a href="shop-carousel.html">shop carousel</a></li>
                                                <li><a href="shop-categories.html">shop categories</a></li>
                                                <li><a href="shop-filter-active.html">shop filter</a></li>
                                                <li><a href="shop-full-wide.html">shop full wide</a></li>
                                                <li><a href="shop-fullwide-sidebar.html">shop fullwide sidebar</a></li>
                                                <li><a href="shop-grid-col4.html">shop grid column 4</a></li>
                                                <li><a href="shop-grid-filter.html">shop grid filter</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shop Layout</a>
                                            <ul>
                                                <li><a href="shop-grid-mixed.html">shop grid mixed</a></li>
                                                <li><a href="shop-grid-sidebar.html">shop grid sidebar</a></li>
                                                <li><a href="shop-list.html">shop list</a></li>
                                                <li><a href="shop-no-gutter.html">shop no gutter</a></li>
                                                <li><a href="shop-no-gutter-masonry.html">shop no gutter masonry</a></li>
                                                <li><a href="shop-no-gutters-fw.html">shop no gutters fullwide</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shop Details</a>
                                            <ul>
                                                <li><a href="single-product.html">Standard style</a></li>
                                                <li><a href="single-product-2.html">Tab style</a></li>
                                                <li><a href="single-product-3.html">Tab style 2</a></li>
                                                <li><a href="single-product-4.html">Affiliate style</a></li>
                                                <li><a href="single-product-5.html">Slider style</a></li>
                                                <li><a href="single-product-6.html">Sticky style</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">Blog</a>
                                    <ul>
                                        <li><a href="#">Blog Layout</a>
                                            <ul>
                                                <li><a href="blog-grid3-col.html">blog grid 3 column</a></li>
                                                <li><a href="blog-grid3-col-sidebar.html"> grid 3 col sidebar</a></li>
                                                <li><a href="blog-grid3-col-pagination.html"> grid 3 col pagination</a></li>
                                                <li><a href="blog-grid3-masonry.html">blog grid 3 masonry</a></li>
                                                <li><a href="blog-list-sidebar.html">blog list sidebar </a></li>
                                                <li><a href="blog-list-alternative.html">blog list alternative</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Blog Layout</a>
                                            <ul>
                                                <li><a href="blog-masonry-alternative.html">masonry alternative</a></li>
                                                <li><a href="blog-fw-sidebar.html"> fullwide sidebar</a></li>
                                                <li><a href="blog-fw-masonry-sidebar.html"> fullwide masonry sidebar</a></li>
                                                <li><a href="blog-classic-col1.html"> classic column 1</a></li>
                                                <li><a href="blog-classic-alternative.html"> classic alternative</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Blog Details</a>
                                            <ul>
                                                <li><a href="blog-details.html">blog details 1</a></li>
                                                <li><a href="blog-details-2.html">blog details 2</a></li>
                                                <li><a href="blog-details-3.html">blog details 3</a></li>
                                                <li><a href="blog-details-4.html">blog details 4</a></li>
                                                <li><a href="blog-details-5.html">blog details 5</a></li>
                                                <li><a href="blog-details-6.html">blog details 6</a></li>
                                                <li><a href="blog-details-7.html">blog details 7</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="por-grid-3-col.html">Shortcode</a>
                                    <ul>
                                        <li><a href="#">Shortcode column 1</a>
                                            <ul>
                                                <li><a href="shortcode-accordion.html">accordion</a></li>
                                                <li><a href="shortcode-alerts.html">alerts</a></li>
                                                <li><a href="shortcode-blockquote.html">blockquote</a></li>
                                                <li><a href="shortcode-brand-logo.html">brand logo</a></li>
                                                <li><a href="shortcode-button.html">button</a></li>
                                                <li><a href="shortcode-counter.html">counter</a></li>
                                                <li><a href="shortcode-dropcap.html">dropcap</a></li>
                                                <li><a href="shortcode-grid-system.html"> grid system</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Shortcode column 2</a>
                                            <ul>
                                                <li><a href="shortcode-faq.html">faq style</a></li>
                                                <li><a href="shortcode-social.html">social icon</a></li>
                                                <li><a href="shortcode-instagram.html">instagram</a></li>
                                                <li><a href="shortcode-list.html">list system</a></li>
                                                <li><a href="shortcode-pricing-table.html">pricing table</a></li>
                                                <li><a href="shortcode-progressbar.html">progressbar</a></li>
                                                <li><a href="shortcode-testimonial.html">testimonial</a></li>
                                                <li><a href="shortcode-tooltip-hightlight.html">tooltip & hightlight</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="index.html">Pages</a>
                                    <ul>
                                        <li><a href="about-us.html">about us</a></li>
                                        <li><a href="cart-page.html">cart page</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="contact.html">contact us</a></li>
                                        <li><a href="contact-2.html">contact us 2</a></li>
                                        <li><a href="contact-3.html">contact us 3</a></li>
                                        <li><a href="login-register.html">login / register</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header> --> 
        
        
      
     <!-- breadcrumb area -->
        <div class="breadcrumb-area bg-img pt-230 pb-152" style="background-image: url(${pageContext.request.contextPath }/resources/img/banner/breadcrumb-3.jpg);">
            <div class="container">
                <div class="breadcrumb-content breadcrumb-black2 text-center">
                    <h2>Shop</h2>
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active" action="${pageContext.request.contextPath }/shop/wishlist.do" method="post">Shop Without Title </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- main-search start -->
        <div class="main-search-active">
            <div class="sidebar-search-icon">
                <button class="search-close"><span class="ti-close"></span></button>
            </div>
            <div class="sidebar-search-input">
                <form>
                    <div class="form-search">
                        <input id="search" class="input-text" value="" placeholder="Search Entire Store" type="search">
                        <button>
                            <i class="ti-search"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- summary-info start -->
       <!--  <div class="summary-info sidebar-active">
            <div class="wrap-sidebar">
                <div class="sidebar-nav-icon">
                    <button class="op-sidebar-close"><span class="ti-close"></span></button>
                </div>
                <div class="summary-info-all">
                    <div class="summary-logo">
                        <a href="index.html">
                            <img src="assets/img/logo/logo-3.png" alt="">
                        </a>
                    </div>
                    <div class="summary-list-wrap">
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididu ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                        <div class="summary-list">
                            <ul>
                                <li><i class="ti-hand-point-right"></i>Project Management</li>
                                <li><i class="ti-hand-point-right"></i>Portfolio Showcasing</li>
                                <li><i class="ti-hand-point-right"></i>Blogs & Content Sharing</li>
                                <li><i class="ti-hand-point-right"></i>Social Work Management</li>
                                <li><i class="ti-hand-point-right"></i>eCommerce Shop Management</li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-contact">
                        <h5>Fell Free To contact Us</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed do eiusmod tempor incididu.</p>
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
        </div>  -->
        <div class="shop-area pt-80 pb-80">
            <div class="container">
                <div class="shop-area-wrapper pro-col-5">
                    <div class="row grid">
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter1.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name1</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter2.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name2</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter3.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name3</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter4.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name4</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="${pageContext.request.contextPath}/shop/cartInsert.do"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter5.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name5</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="${pageContext.request.contextPath }/resources/img/product/no-gutter6.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name6</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      <!--   <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="assets/img/product/no-gutter7.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name7</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                       <!--   <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="assets/img/product/no-gutter8.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name8</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  -->
                    <!--   <div class="col-lg-4 col-md-6 col-sm-6 col-12 item-hidden grid-item">
                            <div class="shop-wrap mb-5">
                                <div class="shop-img hover-3">
                                    <a href="single-product.html">
                                        <img src="assets/img/product/no-gutter9.jpg" alt="">
                                    </a>
                                    <div class="shop-content3">
                                        <div class="s-content3-name">
                                            <h4><a href="single-product.html">Product Name9</a></h4>
                                        </div>
                                        <div class="s-content3-price">
                                            <span>$329</span>
                                            <a title="Add To Cart" href="#"><i class="ti-shopping-cart"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  -->
                	 </div> 
             	</div>
         	</div>
     	</div>  
                  
  </body> 
                    <!--페이징바  -->
                      <!-- <div class="pro-pagination-style text-center mt-50">
                        <ul>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">11</a></li>
                        </ul>
                    </div>   -->
     
       <%--  <footer class="footer-area theme-bg pt-70 pb-50 clear-fix">
            <div class="container">
                <div class="footer-top border-bottom-1">
                    <div class="row">
                        <div class="col-12">
                            <div class="support-text text-center">
                                <h2>Always Ready to Help You 24/7</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-middle pt-65">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-5">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>contact Us</h4>
                                </div>
                                <div class="footer-cont-info">
                                    <div class="single-footer-cont-info">
                                        <div class="cont-info-icon">
                                            <i class="ti-mobile"></i>
                                        </div>
                                        <div class="cont-info-content">
                                            <p>+1 35 776 859</p>
                                        </div>
                                    </div>
                                    <div class="single-footer-cont-info">
                                        <div class="cont-info-icon">
                                            <i class="ti-location-pin"></i>
                                        </div>
                                        <div class="cont-info-content">
                                            <p>115 5th Ave, New York</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer-social">
                                    <ul>
                                        <li><a href="#"> <i class="ti-facebook"></i></a></li>
                                        <li><a href="#"> <i class="ti-instagram"></i></a></li>
                                        <li><a href="#"> <i class="ti-twitter-alt"></i></a></li>
                                        <li><a href="#"> <i class="ti-skype"></i></a></li>
                                        <li><a href="#"> <i class="ti-wordpress"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-7">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Information</h4>
                                </div>
                                <div class="faq-accordion element-mrg">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#checkoutMethod">
                                                        Aditional Pages
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="checkoutMethod" class="panel-collapse collapse show">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingTwo">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#billingInformation">
                                                        Shortcodes Integration
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="billingInformation" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit. </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel footer-accordion">
                                            <div class="panel-heading" id="headingThree">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#shippingMethod">
                                                        Alternative Demos
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="shippingMethod" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor nisi elit.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Latest Twets</h4>
                                </div>
                                <div class="twitter-info">
                                    <div class="single-twitter-info">
                                        <div class="twitter-icon">
                                            <i class="ti-twitter-alt"></i>
                                        </div>
                                        <div class="twitter-content">
                                            <p>Props to YouTube star @CaseyNeistat for turning an abandoned mall into a #WinterWonderland for dozens of kiddos. <br>
                                            <a href="#">http://bit.ly/2AUNTLV </a></p>
                                        </div>
                                    </div>
                                    <div class="single-twitter-info">
                                        <div class="twitter-icon">
                                            <i class="ti-twitter-alt"></i>
                                        </div>
                                        <div class="twitter-content">
                                            <p>Props to YouTube star @CaseyNeistat for turning an abandoned mall into a #WinterWonderland for dozens of kiddos. <br>
                                            <a href="#">http://bit.ly/2AUNTLV </a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-20">
                                    <h4>Instagram</h4>
                                </div>
                                <div class="instagram-img">
                                    <ul>
                                        <li><a href="#"><img src="assets/img/instragram/1.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/2.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/3.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/4.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/5.jpg" alt=""></a></li>
                                        <li><a href="#"><img src="assets/img/instragram/6.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom pt-25">
                    <div class="row">
                        <div class="col-12">
                            <div class="copyright text-center">
                                <p>
                                    Copyright ©
                                    <a href="#">Donna</a>
                                    . All Right Reserved.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
   
   
            </div>
            
             
</footer> --%>
        
          <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        
		

  





