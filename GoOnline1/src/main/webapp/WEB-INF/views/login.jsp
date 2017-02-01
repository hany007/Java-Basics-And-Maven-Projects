<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Online | Login Page</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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
					<!--   <h2>Login Page</h2> -->
					<!--  <ol class="breadcrumb">
          <li><a href="index">Home</a></li>                   
          <li class="active">Login</li>
        </ol> -->
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->

	<!-- Cart view section -->
	<section id="aa-login">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-login-area">
						<div class="row">
							<div class="col-md-6">
								<div class="aa-login-login">
									<h4>Login</h4>
									<form name="login" action="<C:url value='j_spring_security_check'/>" method="post" class="aa-login-form">
										<C:if test="${not empty error }">
											<div class="error" style="color:#ff0000";>${error}</div>
										</C:if>
										<divclass="span9center"> 
										<C:if test="${not empty msg}">
											<div class"msg">${msg}
								</div>
								</C:if>
							</div>

							<label for="UserName">Username<span>*</span></label> <input
								type="text" id="username" name="username" class="form-control"
								placeholder="Username"> <label for="Password">Password<span>*</span></label>
							<input type="password" id="password" name="password"
								class="form-control" placeholder="Password">
							<input type="submit" value="login" class="aa-browse-btn">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									
							
							<label class="rememberme" for="rememberme"><input
								type="checkbox" id="rememberme"> Remember me </label>
							<p class="aa-lost-password">
								<a href="#">Lost your password?</a>
							</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
	</section>
	<!-- / Cart view section -->

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