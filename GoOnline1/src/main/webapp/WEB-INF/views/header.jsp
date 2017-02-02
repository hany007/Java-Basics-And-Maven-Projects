<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
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
	<header id="aa-header"> <!-- start header top  -->
	<div class="aa-header-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-top-area">
						<!-- start header top left -->
						<div class="aa-header-top-left">
							<!-- start language -->
							<div class="aa-language">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <img src="img/flag/english.jpg"
										alt="english flag">ENGLISH <span class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><img src="img/flag/french.jpg" alt="">FRENCH</a></li>
										<li><a href="#"><img src="img/flag/english.jpg"
												alt="">ENGLISH</a></li>
									</ul>
								</div>
							</div>
							<!-- / language -->

							<!-- start currency -->
							<div class="aa-currency">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <i class="fa fa-usd"></i>USD <span
										class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
										<li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
										<li><a href="#"><i class="fa fa-inr"></i>RUPEES</a></li>
									</ul>
								</div>
							</div>
							<!-- / currency -->
							<!-- start cellphone -->
							<div class="cellphone hidden-xs">
								<p>
									<span class="fa fa-phone"></span>+91-7899-453-532
								</p>
							</div>
							<!-- / cellphone -->
						</div>
						<!-- / header top left -->
						<div class="aa-header-top-right">
							<ul class="aa-head-top-nav-right">
								<li><a href="account">Register</a></li>
								<li><a href="loginpage">Login</a></li>
								

								<C:choose>
									<C:when
										test="${pageContext.request.userPrincipal.name != null }">
										<i class="fa fa-user-admin"></i>
										<a>Hello,${pageContext.request.userPrincipal.name}</a>
										<a href="<C:url value="/j_spring_security_logout"/>">
											<li><i class="fa fa-logout"></i></li>Logout
										</a>
										</li>
										
									</C:when>
									<C:otherwise>

									</C:otherwise>
								</C:choose>
								<C:choose>
									<C:when
										test="${pageContext.request.userPrincipal.name != null }">
										<C:if
											test="${pageContext.request.userPrincipal.name == 'admin'}">
											<li><a href="<C:url value='/category'/>">Category</a></li>
											<li><a href="<C:url value='/supplier'/>">Supplier</a></li>
											<li><a href="<C:url value='/products'/>">Products</a></li>

										</C:if>
										<C:if
											test="${pageContext.request.userPrincipal.name!='admin'}">
											<li><a href="<C:url value="/user/cart"/>"> <span class="fa fa-shopping-cart"></span>My Cart</a></li>
										</C:if>
									</C:when>
									<C:otherwise>
									</C:otherwise>

								</C:choose>

								<!--    <li class="hidden-xs"><a href="wishlist">Wishlist</a></li>
                  <li class="hidden-xs"><a href="cart">My Cart</a></li>
                  <li class="hidden-xs"><a href="checkout">Checkout</a></li> -->
								<!--  <li><a href="login" data-toggle="modal" data-target="#login-modal">Login</a></li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header top  --> <!-- start header bottom  -->
	<div class="aa-header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-bottom-area">
						<!-- logo  -->
						<div class="aa-logo">
							<!-- Text based logo -->
							<a href="index"> <span class="fa fa-shopping-cart"></span>
								<p>
									Go<strong>Online</strong> <span>Your Shopping Partner</span>
								</p>
							</a>
							<!-- img based logo -->
							<!-- <a href="index"><img src="img/logo.jpg" alt="logo img"></a> -->
						</div>
						<!-- / logo  -->
						<!-- cart box -->
						<!--    <div class="aa-cartbox">
                <a class="aa-cart-link" href="#">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">SHOPPING CART</span>
                  <span class="aa-cart-notify">2</span>
                </a>
                <div class="aa-cartbox-summary">
                  <ul>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">Product Name</a></h4>
                        <p>1 x $250</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>
                    <li>
                      <a class="aa-cartbox-img" href="#"><img src="img/woman-small-1.jpg" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="#">Product Name</a></h4>
                        <p>1 x $250</p>
                      </div>
                      <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                    </li>                    
                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                      <span class="aa-cartbox-total-price">
                        $500
                      </span>
                    </li>
                  </ul>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="checkout">Checkout</a>
                </div>
              </div> -->
						<!-- / cart box -->
						<!-- search box -->
						<!--    <div class="aa-search-box">
                <form action="">
                  <input type="text" name="" id="" placeholder="Search here ex. 'man' ">
                  <button type="submit"><span class="fa fa-search"></span></button>
                </form>
              </div> -->
						<!-- / search box -->
					</div>
				</div>
			</div>
		</div>
	</div>

	 <!-- menu -->
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <li><a href="index">Home</a></li>
               <li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Products <b class="caret"></b></a>
            <C:forEach items="${categoryList}" var="category">

													<li><a href="${category.name}">${category.name}</a>
														<ul>
															<C:forEach items="${category.products}" var="product">

																<li><a
																	href="<C:url value='product/get/${product.id}' />">${product.name}</a></li>

															</C:forEach>

														</ul></li>
												
                         </C:forEach>
                         </li>
              <li><a href="blog-archive">Blog <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="blog-archive">Blog Style 1</a></li>
                  <li><a href="blog-archive-2">Blog Style 2</a></li>
                  <li><a href="blog-single">Blog Single</a></li>                
                </ul>
              </li>
              <li><a href="contact">Contact</a></li>
              <li><a href="#">Pages <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="product">Shop Page</a></li>
                  <li><a href="product-detail">Shop Single</a></li>                
                  <li><a href="404">404 Page</a></li>                
                </ul>
              </li>
              
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>
  <!-- / menu -->
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