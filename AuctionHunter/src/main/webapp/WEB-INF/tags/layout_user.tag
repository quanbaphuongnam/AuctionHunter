
<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Auction Hunter</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/user/assets/images/logo_icon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/assets/css/plugins.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/assets/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/assets/css/responsive.css">
<script
	src="${pageContext.request.contextPath }/resources/user/assets/js/sweetalert2.all.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/user/assets/css/button.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script
	src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/user/assets/datetime/jquery.datetimepicker.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />

</head>
<body class="template-collection belle">
	<div class="pageWrapper">
		<div class="search">
			<div class="search__form">
				<form class="search-bar__form"
					action="${pageContext.request.contextPath }/home/search"
					method="get">
					<input class="search__input" type="text"
						placeholder="Search entire store..." aria-label="Search"
						id="keyword" name="keyword">
				</form>
			</div>
		</div>
		<!--Top Header-->
		<div class="top-header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-10 col-sm-8 col-md-5 col-lg-4">
						<div class="currency-picker">
							<span class="selected-currency">USD</span>
							<ul id="currencies">
								<li data-currency="INR" class="">INR</li>
								<li data-currency="GBP" class="">GBP</li>
								<li data-currency="CAD" class="">CAD</li>
								<li data-currency="USD" class="selected">USD</li>
								<li data-currency="AUD" class="">AUD</li>
								<li data-currency="EUR" class="">EUR</li>
								<li data-currency="JPY" class="">JPY</li>
							</ul>
						</div>
						<div class="language-dropdown">
							<span class="language-dd">English</span>
							<ul id="language">
								<li class="">VietNamese</li>
								<li class="">French</li>
							</ul>
						</div>
						<p class="phone-no">
							<i class="anm anm-phone-s"></i> +440 0(111) 044 833
						</p>
					</div>
					<div
						class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
						<div class="text-center">
							<p class="top-header_middle-text">Auction products anywhere
								worldwide</p>
						</div>
					</div>
					<div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
						<span class="user-menu d-block d-lg-none"><i
							class="anm anm-user-al" aria-hidden="true"></i></span>
						<ul class="customer-links list-inline">
							<c:choose>
								<c:when test="${pageContext.request.userPrincipal.name != null}">
									<li><a
										href="${pageContext.request.contextPath }/account/index">${pageContext.request.userPrincipal.name }</a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${pageContext.request.contextPath }/account/login">Login</a></li>
									<li><a
										href="${pageContext.request.contextPath }/account/register">Register</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--End Top Header-->
		<!--Header-->
		<div class="header-wrap animated d-flex">
			<div class="container-fluid">
				<div class="row align-items-center">
					<!--Desktop Logo-->
					<div class="logo col-md-2 col-lg-2 d-none d-lg-block">
						<a href="${pageContext.request.contextPath }/home"> <img
							src="${pageContext.request.contextPath }/resources/user/assets/images/logo_1.png"
							alt="Auction Hunter" title="Auction Hunter" />
						</a>
					</div>
					<!--End Desktop Logo-->
					<div class="col-2 col-sm-3 col-md-3 col-lg-8">
						<div class="d-block d-lg-none">
							<button type="button"
								class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
								<i class="icon anm anm-times-l"></i> <i class="anm anm-bars-r"></i>
							</button>
						</div>
						<!--Desktop Menu-->
						<nav class="grid__item" id="AccessibleNav">
							<!-- for mobile -->
							<ul id="siteNav" class="site-nav medium center hidearrow">
								<li class="lvl1 parent megamenu"><a
									href="${pageContext.request.contextPath }/home">Home <i
										class="anm anm-angle-down-l"></i></a></li>
								<li class="lvl1 parent megamenu"><a
									href="${pageContext.request.contextPath }/aboutus">About Us
										<i class="anm anm-angle-down-l"></i>
								</a></li>
								<li class="lvl1 parent megamenu"><a
									href="${pageContext.request.contextPath }/contactus">Contact
										Us <i class="anm anm-angle-down-l"></i>
								</a></li>
								<li class="lvl1 parent dropdown"><a
									href="${pageContext.request.contextPath }/faqs">FAQs <i
										class="anm anm-angle-down-l"></i></a></li>
								<li class="lvl1 parent dropdown"><a href="#">Account <i
										class="anm anm-angle-down-l"></i></a>
									<ul class="dropdown">
										<li><a
											href="${pageContext.request.contextPath }/account/index"
											class="site-nav">Profile</a></li>
										<li><a
											href="${pageContext.request.contextPath }/account/myauctions"
											class="site-nav">My Auction</a></li>
										<li><a
											href="${pageContext.request.contextPath }/account/myproduct"
											class="site-nav">My Product</a></li>
										<li><a
											href="${pageContext.request.contextPath }/account/myinvoice"
											class="site-nav">My Invoice</a></li>
										<c:choose>
											<c:when
												test="${pageContext.request.userPrincipal.name != null}">
												<li><a
													href="${pageContext.request.contextPath }/account/logout"
													class="site-nav">Logout</a></li>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
									</ul></li>
							</ul>
						</nav>
						<!--End Desktop Menu-->
					</div>
					
					<div class="col-4 col-sm-3 col-md-3 col-lg-2">
						<div class="site-cart">
							<a href="${pageContext.request.contextPath }/cart/index" class="site-header__cart" title="Cart"> <i	class="icon anm anm-bag-l"></i>
							</a>
							<!--Minicart Popup-->
							
							<!--End Minicart Popup-->
						</div>
						<div class="site-header__search">
							<button type="button" class="search-trigger">
								<i class="icon anm anm-search-l"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--End Header-->
		<!--Mobile Menu-->
		<div class="mobile-nav-wrapper" role="navigation">
			<div class="closemobileMenu">
				<i class="icon anm anm-times-l pull-right"></i> Close Menu
			</div>
			<ul id="MobileNav" class="mobile-nav">
				<li class="lvl1 parent megamenu"><a
					href="${pageContext.request.contextPath }/home">Home <i
						class="anm anm-plus-l"></i></a></li>
				<li class="lvl1 parent megamenu"><a
					href="${pageContext.request.contextPath }/aboutus">About Us <i
						class="anm anm-plus-l"></i></a></li>
				<li class="lvl1 parent megamenu"><a
					href="${pageContext.request.contextPath }/contactus">Contact Us
						<i class="anm anm-plus-l"></i>
				</a></li>
				<li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath }/faqs">FAQs
						<i class="anm anm-plus-l"></i>
				</a></li>
				<li class="lvl1 parent megamenu"><a
					href="${pageContext.request.contextPath }/account/index">Account <i class="anm anm-plus-l"></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath }/account/index">Profile</a></li>
						<li><a href="${pageContext.request.contextPath }/account/myauctions" class="site-nav">My
								Auction</a></li>
						<li><a href="${pageContext.request.contextPath }/account/myproduct" class="site-nav">My
								Product</a></li>
					</ul></li>
				<c:choose>
					<c:when test="${pageContext.request.userPrincipal.name != null}">
						<li class="lvl1"><a
							href="${pageContext.request.contextPath }/account/logout"><b>Logout</b></a></li>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<!--End Mobile Menu-->
		<!--Body Content-->
		<div id="page-content">
			<jsp:invoke fragment="content"></jsp:invoke>
		</div>
		<!--End Body Content-->
		<!--Footer-->
		<footer id="footer">
			<div class="site-footer">
				<div class="container">
					<!--Footer Links-->
					<div class="footer-top">
						<div class="row">

							<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
								<h4 class="h4">Menu</h4>
								<ul>
									<li><a href="${pageContext.request.contextPath }/aboutus">About us</a></li>
									<li><a href="${pageContext.request.contextPath }/contactus">Contact Us</a></li>
									<li><a href="${pageContext.request.contextPath }/other/UserAgreement">User Agreement</a></li>
									<li><a href="${pageContext.request.contextPath }/faqs">FAQs</a></li>
									<li><a href="${pageContext.request.contextPath }/account/index">My Account</a></li>
								</ul>
							</div>
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 footer-links">
								<h4 class="h4">Customer Services</h4>
								<ul>
									<li><a href="#">Request Personal Data</a></li>
									<li><a href="#">FAQ's</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Support Center</a></li>
								</ul>
							</div>
							<div class="col-12 col-sm-12 col-md-3 col-lg-3 contact-box">
								<h4 class="h4">Contact Us</h4>
								<ul class="addressFooter">
									<li><i class="icon anm anm-map-marker-al"></i>
										<p>
											212-214 Nguyen Dinh Chieu, District 3 , HCMC
										</p></li>
									<li class="phone"><i class="icon anm anm-phone-s"></i>
										<p>(440) 000 000 0000</p></li>
									<li class="email"><i class="icon anm anm-envelope-l"></i>
										<p> Bao0924327813@gmail.com </p></li>
								</ul>
							</div>
							
						 
						
					</div>
					<!--End Footer Links-->
					<hr>
					<div class="footer-bottom">
						<div class="row">
							<!--Footer Copyright-->
							<div
								class="col-12 col-sm-12 col-md-6 col-lg-6 order-1 order-md-0 order-lg-0 order-sm-1 copyright text-sm-center text-md-left text-lg-left">
								<span></span> <a href="#">Acution hunter</a>
							</div>
							<!--End Footer Copyright-->
							<!--Footer Payment Icon-->
							<div
								class="col-12 col-sm-12 col-md-6 col-lg-6 order-0 order-md-1 order-lg-1 order-sm-0 payment-icons text-right text-md-center">
								<ul class="payment-icons list--inline">
									<li><i class="icon fa fa-cc-visa" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-mastercard" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-discover" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-paypal" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-cc-amex" aria-hidden="true"></i></li>
									<li><i class="icon fa fa-credit-card" aria-hidden="true"></i></li>
								</ul>
							</div>
							<!--End Footer Payment Icon-->
						</div>
					</div>
				</div>
			</div>
			</div>
		</footer>
		<!--End Footer-->
		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->
		<!--Start of Tawk.to Script-->
		<script type="text/javascript">
			var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
			(function() {
				var s1 = document.createElement("script"), s0 = document
						.getElementsByTagName("script")[0];
				s1.async = true;
				s1.src = 'https://embed.tawk.to/61e54edab84f7301d32b6807/1fpjro23f';
				s1.charset = 'UTF-8';
				s1.setAttribute('crossorigin', '*');
				s0.parentNode.insertBefore(s1, s0);
			})();
		</script>
		<!--End of Tawk.to Script-->
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/jquery-3.3.1.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/jquery.cookie.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/popper.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/modernizr-3.6.0.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/wow.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/datetime/build/jquery.datetimepicker.full.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/sweetalert2.all.min.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/plugins.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/lazysizes.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/user/assets/js/main.js"></script>
		
	</div>
</body>
</html>
