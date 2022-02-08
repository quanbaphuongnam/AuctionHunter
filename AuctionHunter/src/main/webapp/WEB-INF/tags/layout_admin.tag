<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content_admin" fragment="true"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dashboard - Admin</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">

<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/bootstrap.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/font-awesome.min.css">
<!-- nalika Icon CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/nalika-icon.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/owl.theme.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/owl.transitions.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/normalize.css">
<!-- meanmenu icon CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/meanmenu.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/main.css">
<!-- morrisjs CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/morrisjs/morris.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/calendar/fullcalendar.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/calendar/fullcalendar.print.min.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/admin/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script
	src="${pageContext.request.contextPath }/resources/admin/js/vendor/modernizr-2.8.3.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/user/assets/js/sweetalert2.all.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script
	src="${pageContext.request.contextPath }/resources/user/assets/js/vendor/jquery-3.6.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<a href="${pageContext.request.contextPath }/admin"> <img
					class="main-logo"
					src="${pageContext.request.contextPath }/resources/user/assets/images/logo_text.png"
					width="200" height="100"></a> <strong><img
					src="${pageContext.request.contextPath }/resources/user/assets/images/logo_icon.png"
					alt="" /></strong>
			</div>
			<div class="nalika-profile">
				<div class="profile-dtl">
					<a href="${pageContext.request.contextPath }/home"><img
						src="${pageContext.request.contextPath} /resources/user/assets/images/logo_icon.png"
						alt="" /></a>
					<h2>Auction hunter</h2>
				</div>
				<div class="profile-social-dtl">
					<ul class="dtl-social">
						<li><a href="#"><i class="icon nalika-facebook"></i></a></li>
						<li><a href="#"><i class="icon nalika-twitter"></i></a></li>
						<li><a href="#"><i class="icon nalika-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class=""><a class="has-arrow" href="index.html"> <i
								class="icon nalika-home icon-wrap"></i> <span
								class="mini-click-non">Home</span>
						</a>
							<ul class="submenu-angle" aria-expanded="true">
								<li><a title="Dashboard v.1" href=""><span
										class="mini-sub-pro">Analytics </span></a></li>
								
							</ul></li>
						<li><a class="has-arrow"
							href="${pageContext.request.contextPath }/accountadmin"
							aria-expanded="false"><i class="icon nalika-user icon-wrap"></i>
								<span class="mini-click-non">Account manager</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Inbox"
									href="${pageContext.request.contextPath }/accountadmin/index"><span
										class="mini-sub-pro">Account</span></a></li>

							</ul></li>
						<li><a class="has-arrow"
							href="${pageContext.request.contextPath }/productadmin"
							aria-expanded="false"><i class="icon nalika-table icon-wrap"></i>
								<span class="mini-click-non">Product manager</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Inbox"
									href="${pageContext.request.contextPath }/productadmin"><span
										class="mini-sub-pro">Product</span></a></li>
								<li><a title="View Mail" href="${pageContext.request.contextPath }/category/index"><span
										class="mini-sub-pro">Category/Trademark</span></a></li>
							
							</ul></li>
						<li><a class="has-arrow"
							href="https://dashboard.tawk.to/#/dashboard/61e54edab84f7301d32b6807"
							aria-expanded="false"><i class="icon nalika-chat icon-wrap"></i>
								<span class="mini-click-non">Tawk to</span></a></li>

					</ul>
				</nav>
			</div>
		</nav>
	</div>
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">

		<jsp:invoke fragment="content_admin"></jsp:invoke>

	</div>

	<!-- jquery
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/vendor/jquery-1.12.4.min.js"></script>
	<!-- bootstrap JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/wow.min.js"></script>
	<!-- price-slider JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/jquery-price-slider.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/jquery.meanmenu.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/owl.carousel.min.js"></script>
	<!-- sticky JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/jquery.sticky.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/jquery.scrollUp.min.js"></script>
	<!-- mCustomScrollbar JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/scrollbar/mCustomScrollbar-active.js"></script>
	<!-- metisMenu JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/metisMenu/metisMenu.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/metisMenu/metisMenu-active.js"></script>
	<!-- morrisjs JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/sparkline/jquery.charts-sparkline.js"></script>
	<!-- calendar JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/calendar/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/calendar/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/calendar/fullcalendar-active.js"></script>
	<!-- float JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/jquery.flot.orderBars.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/curvedLines.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/flot/flot-active.js"></script>
	<!-- plugins JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/user/assets/js/sweetalert2.all.min.js"></script>

</body>

</html>
