<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daily Shop | Product Detail</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- Font awesome -->
<link href="<C:url value="Resources/css/font-awesome.css"/>" rel="stylesheet">
<!-- Bootstrap -->
<link href="<C:url value="Resources/css/bootstrap.css"/>" rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="<C:url value="Resources/css/jquery.smartmenus.bootstrap.css"/>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<C:url value="Resources/css/jquery.simpleLens.css"/>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="<C:url value="Resources/css/slick.css"/>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<C:url value="Resources/css/nouislider.css"/>">
<!-- Theme color -->
<link id="switcher" href="<C:url value="Resources/css/theme-color/default-theme.css"/>"
	rel="stylesheet">


<!-- Main style sheet -->
<link href="<C:url value="Resources/css/style.css"/>" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<!-- wpf loader Two -->
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->


	<!-- Start header section -->
	<%@include file="header.jsp"%>
	<!-- / header section -->
	<!-- catg header banner section -->
	<section id="aa-catg-head-banner">
		<img src="<C:url value="img/fashion/fashion-header-bg-8.jpg"/>" alt="fashion img">
		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<!--   <h2>T-Shirt</h2>
        <ol class="breadcrumb">
          <li><a href="index">Home</a></li>         
          <li><a href="#">Product</a></li>
          <li class="active">T-shirt</li>
        </ol> -->
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->

	<!-- product category -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="aa-product-details-area">
					<div class="aa-product-details-content">
						<div class="row">

							<ul class="breadcrumb">

								<li>${selectedProduct.name}</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<C:if test="${!empty selectedProduct.name}">
		<section id="aa-product-details">


			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- <h2 class="text-uppercase">Product details</h2> -->
						<p>
							<br>${selectedProduct.id} <br>${selectedProduct.name} <br>${selectedProduct.description}
							<br>Rs.${selectedProduct.price} <br>${selectedProduct.category.name}
							<br>${selectedProduct.supplier.name}

							<C:if test="${pageContext.request.userPrincipal.name != 'admin'}">
								<p>
									
									<C:if
										test="${pageContext.request.userPrincipal.name  != 'admin'}">
										<a
											href="<C:url value="/usercart/cart/addItem/${selectedProduct.id}"/>"
											class="btn btn-primary"><span class="fa fa-shopping-cart"></span>Add
											to cart </a>

										<a href="<spring:url value="/user/cart"/>"
											class="btn btn-primary"><span
											class="glyphicon glyphicon-hand-right"></span>View Cart</a>
									</C:if>
								</p>
							</C:if>
							<C:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<p>
									<a href="<C:url value="/product/edit/${selectedProduct.id}"/>"
										class="btn btn-primary">Edit product </a>
								</p>
							</C:if>
							<br> <br> <br>
						</p>
					</div>
					<div class="col-md-8 text-center">
						<img alt=""
							src="<C:url value="/img/pro-img/${selectedProduct.id}.png"/>" />
					</div>
				</div>
			</div>
		</section>
	</C:if>

	<!-- footer -->
	<%@include file="footer.jsp"%>
	<!-- / footer -->
	<!-- Login Modal -->




	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<C:url value="Resources/js/bootstrap.js"/>"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="<C:url value="Resources/js/jquery.smartmenus.js"/>"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="<C:url value="Resources/js/jquery.smartmenus.bootstrap.js"/>"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="<C:url value="Resources/js/jquery.simpleGallery.js"/>"></script>
	<script type="text/javascript" src="<C:url value="Resources/js/jquery.simpleLens.js"/>"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="<C:url value="Resources/js/slick.js"/>"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="<C:url value="Resources/js/nouislider.js"/>"></script>

	<!-- Custom js -->
	<script src="<C:url value="Resources/js/custom.js"/>"></script>
</body>
</html>