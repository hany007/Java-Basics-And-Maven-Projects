<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Online | Checkout Page</title>

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

	<!-- catg header banner section -->
	<section id="aa-catg-head-banner">
		<img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<!--  <h2>Checkout Page</h2> -->
					<!-- <ol class="breadcrumb">
          <li><a href="index">Home</a></li>                   
          <li class="active">Checkout</li>
        </ol> -->
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->

	<!-- checkout -->
	<div id="all">





		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1>Shipping details</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb">
							<li><a href="<c:url value="/"/>">Home</a></li>
							<li><a href="<c:url value="/user/cart"/>">My Cart</a></li>
							<li>Shipping details</li>

						</ul>

					</div>
				</div>
			</div>
		</div>
		<section>




			<div id="content">
				<div class="container">

					<br>
					<br>

					<div class="row">

						<div class="col-lg-8 col-lg-offset-2">
							<div class="pull-center">

								<h3 align="center">Enter your Shipping details</h3>
							</div>
							<form id="contact-form" method="post" action="thankyou">

								<div class="controls">

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_name">Firstname *</label> <input
													id="form_name" type="text" name="name" class="form-control"
													placeholder="Please enter your firstname *"
													required="required" data-error="Firstname is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Lastname </label> <input
													id="form_lastname" type="text" name="surname"
													class="form-control"
													placeholder="Please enter your lastname *">

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_email">Email *</label> <input
													id="form_email" type="email" name="email"
													class="form-control"
													placeholder="Please enter your email *" required="required"
													data-error="Valid email is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_phone">Phone *</label> <input
													id="form_phone" type="text" name="phone"
													class="form-control"
													placeholder="Please enter your phone  *"
													required="required" data-error="phone is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_address1">Address Line1 *</label> <input
													id="form_address1" type="text" name="address1"
													class="form-control"
													placeholder="Please enter your address line 1 *"
													required="required" data-error="address1 is requried.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_address2">Address Line 2 *</label> <input
													id="form_address2" type="text" name="address2"
													class="form-control"
													placeholder="Please enter your address2 *"
													required="required" data-error="address2 is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
									</div>



									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_city">City *</label> <input id="form_city"
													type="text" name="city" class="form-control"
													placeholder="Please enter your city *" required="required"
													data-error="city is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_state">State *</label> <input
													id="form_state" type="text" name="state"
													class="form-control"
													placeholder="Please enter your state *" required="required"
													data-error="state is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_zipcode">Zipcode *</label> <input
													id="form_zipcode" type="text" name="zipcode"
													class="form-control"
													placeholder="Please enter your zipcode *"
													required="required" data-error="zipcode is required.">
												<div class="help-block with-errors"></div>
											</div>
										</div>
										<!-- <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_lastname">Lastname *</label>
                                        <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="Please enter your lastname *" required="required" data-error="Lastname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>  <br><br><br>-->
									</div>
									<br>
									<br>
									<div class="col-sm-12 text-center">
										<button type="submit" class="btn btn-template-main">Submit</button>
									</div>

									<br>
									<br>
									<br>

									<div class="row">
										<div class="col-md-12">
											<p class="text-muted">
												<strong>*</strong> These fields are required.
											</p>
										</div>
									</div>
								</div>

							</form>

						</div>
						<!-- /.8 -->

					</div>
					<!-- /.row-->

				</div>
				<!-- /.container-->
			</div>


		</section>
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