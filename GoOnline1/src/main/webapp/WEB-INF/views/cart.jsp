<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Online | Cart Page</title>

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
<link href="Resources/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="Resources/css/bootstrap.css" rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link href="Resources/css/jquery.smartmenus.bootstrap.css"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="Resources/css/jquery.simpleLens.css">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="Resources/css/slick.css">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="Resources/css/nouislider.css">
<!-- Theme color -->
<link id="switcher" href="Resources/css/theme-color/default-theme.css"
	rel="stylesheet">


<!-- Main style sheet -->
<link href="Resources/css/style.css" rel="stylesheet">

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
	<!-- menu -->

	<!-- catg header banner section -->
	<section id="aa-catg-head-banner">
		<img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<!--   <h2>Cart Page</h2> -->
					<!--   <ol class="breadcrumb">
          <li><a href="index">Home</a></li>                   
          <li class="active">Cart</li>
        </ol> -->
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->

	<!-- Cart view section -->
	<section id="cart-view">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cart-view-area">
						<div class="cart-view-table">
							<ul class="breadcrum">
								<li><a class="active" href="<c:url value="#"/>">MY
										ORDERS</a></li>
								<li><a
									href="<c:url value="/usercart/cart/refreshCart/${cartId}"/>"
									class="btn btn-primary">REFRESH </a>
								<li>
								<li><a href="<spring:url value="/" />">CONTINUE
										SHOPPING</a>
								<li>
								<li><a
									href="<c:url value='/usercart/cart/clearCartItems/${cartId}'/>"
									class="btn btn-danger center"><span
										class="glyphicon glyphicon-remove-sign"></span>CLEAR CART</a>
								<li>
							</ul>

							<div class="table-responsive">
								<C:set var="grandTotal" scope="session" value="${0}" />
								<h3 align="center" style="color: #79be25;">${successMsg}</h3>
								<br>
								<br>
								<div class="row margin-left25">
									<C:if test="${empty cartList}">
										<h3 align="center" style="color: #ff0000;">Your cart is
											empty</h3>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
										<br>
									</C:if>
									<C:if test="${!empty cartList}">
										<table class="table">
											<thead>
												<tr>
													<th>Image</th>
													<th class="width110">Product ID</th>
													<th>Product</th>
													<th>Price</th>
													<th>Quantity</th>
													<th>Total</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<C:forEach items="${cartList}" var="cartItem">
													<tr>
														<td><a class="remove"
															href="<C:url value="/usercart/cart/removeItem/${cartItem.product.id}/${cartId}"/>"></a>
															<a class="fa fa-close"></fa></a></td>
														<td><a href="#"><img
																src="<c:url value='/resources/img/productImages/${cartItem.product.id}.png'/>"
																alt="img" width="140" height="140"></a></td>
														<td>${cartItem.product.id}</td>
														<td>${cartItem.product.name}</td>
														<td>${cartItem.product.price}</td>
														<td>${cartItem.quantity}&nbsp;&nbsp;&nbsp; <a
															href="<c:url value="/usercart/cart/addQty/${cartItem.product.id}/${cartId}"/>"
															class="btn btn-primary center">+ </a>&nbsp;&nbsp;&nbsp; <a
															href="<c:url value="/usercart/cart/reduceQty/${cartItem.product.id}/${cartId}"/>"
															class="btn btn-danger btnAction">- </a></td>
														<td>${cartItem.totalPrice}</td>
														
													</tr>
												</C:forEach>
																								
											</tbody>
										</table>
									</C:if>
								</div>

								<!-- Cart Total view -->
								<div class="cart-view-total">
									<h4>Cart Totals</h4>
									<table class="aa-totals-table">
										<tbody>
											
											<tr>
												<th>Total</th>
												<td><C:set var="grandTotal"
											value="${cartItem.totalPrice+grandTotal}" /></td>
											</tr>
										</tbody>
									</table>
									<a href="<spring:url value="/checkout"/>" class="aa-cart-view-btn">Proced to Checkout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- / Cart view section -->


	<!-- Subscribe section -->
	<section id="aa-subscribe">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-subscribe-area">
						<h3>Subscribe our newsletter</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ex, velit!</p>
						<form action="" class="aa-subscribe-form">
							<input type="email" name="" id="" placeholder="Enter your Email">
							<input type="submit" value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Subscribe section -->

	<!-- footer -->
	<%@include file="footer.jsp"%>
	<!-- / footer -->
	<!-- Login Modal -->

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="Resources/js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="Resources/js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="Resources/js/jquery.smartmenus.bootstrap.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="Resources/js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="Resources/js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="Resources/js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="Resources/js/nouislider.js"></script>

	<!-- Custom js -->
	<script src="Resources/js/custom.js"></script>

</body>
</html>