<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Online | Account Page</title>

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
	<section id="menu">
		<div class="container">
			<div class="menu-area">
				<!-- Navbar -->
				<div class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="navbar-collapse collapse">
						<!-- Left nav -->
						<ul class="nav navbar-nav">
							<li><a href="index">Home</a></li>
							<li><a href="#">Men <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Casual</a></li>
									<li><a href="#">Sports</a></li>
									<li><a href="#">Formal</a></li>
									<li><a href="#">Standard</a></li>
									<li><a href="#">T-Shirts</a></li>
									<li><a href="#">Shirts</a></li>
									<li><a href="#">Jeans</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Sleep Wear</a></li>
											<li><a href="#">Sandals</a></li>
											<li><a href="#">Loafers</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#">Women <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Kurta & Kurti</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">Casual</a></li>
									<li><a href="#">Sports</a></li>
									<li><a href="#">Formal</a></li>
									<li><a href="#">Sarees</a></li>
									<li><a href="#">Shoes</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Sleep Wear</a></li>
											<li><a href="#">Sandals</a></li>
											<li><a href="#">Loafers</a></li>
											<li><a href="#">And more.. <span class="caret"></span></a>
												<ul class="dropdown-menu">
													<li><a href="#">Rings</a></li>
													<li><a href="#">Earrings</a></li>
													<li><a href="#">Jewellery Sets</a></li>
													<li><a href="#">Lockets</a></li>
													<li class="disabled"><a class="disabled" href="#">Disabled
															item</a></li>
													<li><a href="#">Jeans</a></li>
													<li><a href="#">Polo T-Shirts</a></li>
													<li><a href="#">SKirts</a></li>
													<li><a href="#">Jackets</a></li>
													<li><a href="#">Tops</a></li>
													<li><a href="#">Make Up</a></li>
													<li><a href="#">Hair Care</a></li>
													<li><a href="#">Perfumes</a></li>
													<li><a href="#">Skin Care</a></li>
													<li><a href="#">Hand Bags</a></li>
													<li><a href="#">Single Bags</a></li>
													<li><a href="#">Travel Bags</a></li>
													<li><a href="#">Wallets & Belts</a></li>
													<li><a href="#">Sunglases</a></li>
													<li><a href="#">Nail</a></li>
												</ul></li>
										</ul></li>
								</ul></li>
							<li><a href="#">Kids <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Casual</a></li>
									<li><a href="#">Sports</a></li>
									<li><a href="#">Formal</a></li>
									<li><a href="#">Standard</a></li>
									<li><a href="#">T-Shirts</a></li>
									<li><a href="#">Shirts</a></li>
									<li><a href="#">Jeans</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">And more.. <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="#">Sleep Wear</a></li>
											<li><a href="#">Sandals</a></li>
											<li><a href="#">Loafers</a></li>
										</ul></li>
								</ul></li>
							<li><a href="#">Sports</a></li>
							<li><a href="#">Digital <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Camera</a></li>
									<li><a href="#">Mobile</a></li>
									<li><a href="#">Tablet</a></li>
									<li><a href="#">Laptop</a></li>
									<li><a href="#">Accesories</a></li>
								</ul></li>
							<li><a href="#">Furniture</a></li>
							<li><a href="blog-archive">Blog <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="blog-archive">Blog Style 1</a></li>
									<li><a href="blog-archive-2">Blog Style 2</a></li>
									<li><a href="blog-single">Blog Single</a></li>
								</ul></li>
							<li><a href="contact">Contact</a></li>
							<li><a href="#">Pages <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="product">Shop Page</a></li>
									<li><a href="product-detail">Shop Single</a></li>
									<li><a href="404">404 Page</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- / menu -->

	<!-- catg header banner section -->
	<section id="aa-catg-head-banner">
		<img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
		<div class="aa-catg-head-banner-area">
			<div class="container">
				<div class="aa-catg-head-banner-content">
					<!--   <h2>Account Page</h2> -->
					<!--  <ol class="breadcrumb">
          <li><a href="index">Home</a></li>                   
          <li class="active">Account</li>
        </ol> -->
				</div>
			</div>
		</div>
	</section>
	<!-- / catg header banner section -->

	<!-- Cart view section -->
	<section id="aa-myaccount">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-myaccount-area">
						<div class="row">
							<div class="col-md-6">
								<div class="aa-myaccount-login">
									<h4>Login</h4>
									<form action="" class="aa-login-form">
										<label for="">Username or Email address<span>*</span></label>
										<input type="text" placeholder="Username or email"> <label
											for="">Password<span>*</span></label> <input type="password"
											placeholder="Password">
										<button type="submit" class="aa-browse-btn">Login</button>
										<label class="rememberme" for="rememberme"><input
											type="checkbox" id="rememberme"> Remember me </label>
										<p class="aa-lost-password">
											<a href="#">Lost your password?</a>
										</p>
									</form>
								</div>
							</div>
							<div class="col-md-6">
								<div class="aa-myaccount-register">
									<h4>Register</h4>
									<form:form action="resigter" method="post"
										commandname="UserDetail" class="aa-login-form">
										<label for="">First Name<span>*</span></label>
										<input type="text" placeholder="First Name">
										<label for="">Last Name<span>*</span></label>
										<input type="text" placeholder="Last Name">
										<label for="">Username or Email address<span>*</span></label>
										<input type="text" placeholder="Username or email">
										<label for="">Phone<span>*</span></label>
										<input type="text" placeholder="9066XXXXXX">
										<label for=""> Address<span>*</span></label>
										<input type="text" placeholder="Address">
										<label for="">Password<span>*</span></label>
										<input type="password" placeholder="Password">


										<button type="submit" class="aa-browse-btn">Register</button>
									</form:form>
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
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4>Login or Register</h4>
					<form class="aa-login-form" action="">
						<label for="">Username or Email address<span>*</span></label> <input
							type="text" placeholder="Username or email"> <label
							for="">Password<span>*</span></label> <input type="password"
							placeholder="Password">
						<button class="aa-browse-btn" type="submit">Login</button>
						<label for="rememberme" class="rememberme"><input
							type="checkbox" id="rememberme"> Remember me </label>
						<p class="aa-lost-password">
							<a href="#">Lost your password?</a>
						</p>
						<div class="aa-register-now">
							Don't have an account?<a href="account">Register now!</a>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



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