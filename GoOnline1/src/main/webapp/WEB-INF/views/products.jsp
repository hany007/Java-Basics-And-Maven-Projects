<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Online | Products Page</title>
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
              <li><a href="product">Men <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">Casual</a></li>
                  <li><a href="#">Sports</a></li>
                  <li><a href="#">Formal</a></li>
                  <li><a href="#">Standard</a></li>                                                
                  <li><a href="#">T-Shirts</a></li>
                  <li><a href="#">Shirts</a></li>
                  <li><a href="#">Jeans</a></li>
                  <li><a href="#">Trousers</a></li>
                  <!-- <li><a href="#">And more.. <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Sleep Wear</a></li>
                      <li><a href="#">Sandals</a></li>
                      <li><a href="#">Loafers</a></li>                                      
                    </ul>
                  </li> -->
                </ul>
              </li>
              <li><a href="product">Women <span class="caret"></span></a>
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
                      <!-- <li><a href="#">And more.. <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Rings</a></li>
                          <li><a href="#">Earrings</a></li>
                          <li><a href="#">Jewellery Sets</a></li>
                          <li><a href="#">Lockets</a></li>
                          <li class="disabled"><a class="disabled" href="#">Disabled item</a></li>                       
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
                        </ul>
                      </li> -->                   
                    </ul>
                  </li>
                </ul>
              </li> 
              <!-- <li><a href="#">Kids <span class="caret"></span></a>
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
                    </ul>
                  </li>
                </ul>
              </li> -->
              <!-- <li><a href="#">Sports</a></li>
             <li><a href="#">Digital <span class="caret"></span></a>
                <ul class="dropdown-menu">                
                  <li><a href="#">Camera</a></li>
                  <li><a href="#">Mobile</a></li>
                  <li><a href="#">Tablet</a></li>
                  <li><a href="#">Laptop</a></li>                                                
                  <li><a href="#">Accesories</a></li>                
                </ul>
              </li>
              <li><a href="#">Furniture</a></li> -->            
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
    
	<div id="content">
	<div class="container">


		<div class="flex-container">


			<h2 class="text-uppercase">Product</h2>

			<hr>

			<!-- LOOK HERE -->


			<h3>Add a Product</h3>


			<c:url var="addAction" value="/product/add"></c:url>
			<form:form action="${addAction}" commandName="product"
				enctype="multipart/form-data">


				<div class="form-group">
					<c:choose>
						<c:when test="${!empty product.id}">

							<div class="form-group">
								<label for="name">ID</label>
								<div class="controls docs-input-sizes">
									<form:input placeholder="id" path="id" required="true"
										class="form-control" id="id" disabled="true" readonly="true" />
								</div>
							</div>

						</c:when>

						<c:otherwise>

							<div class="form-group">
								<form:input path="id" hidden="true" />
								<label for="id">ID</label>
								<div class="controls docs-input-sizes">
									<form:input placeholder="id" path="id" required="true"
										class="form-control" id="id"
										title="id should contains 6 to 7 characters" patttern=".{6,7}" />
								</div>
							</div>

						</c:otherwise>
					</c:choose>

				</div>

				<div class="form-group">
					<form:input path="id" hidden="true" />
					<label for="name">Name</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="name" path="name" required="true"
							class="form-control" id="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="price"> <spring:message text="Price" />
					</label>
					<div class="controls docs-input-sizes">
						<form:input path="price" required="true" class="form-control"
							id="price" />
					</div>
				</div>

				<div class="form-group">
					<label for="description">Description</label>
					<div class="controls docs-input-sizes">
						<form:input placeholder="description" path="description"
							class="form-control" id="description" />
					</div>
				</div>


				<div class="form-group">
					<label for="supplier">Supplier</label>
					<div class="select-style">
						<form:select path="supplier.name" items="${supplierList}"
							itemValue="name" itemLabel="name" />
					</div>
				</div>


				<div class="form-group">
					<label for="category">Category</label>
					<div class="select-style">
						<form:select path="category.name" items="${categoryList}"
							itemValue="name" itemLabel="name" />
					</div>
				</div>

				<div class="form-group">
					<label for="description">Upload image</label>
					<div class="controls docs-input-sizes">
						<form:input id="itemimage" path="itemImage" type="file"
							class="form:input-large" />
					</div>
				</div>


				<div class="form-group">
					<div class="controls docs-input-sizes">
						<c:if test="${!empty product.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Edit Product
							</button>
						</c:if>
						<c:if test="${empty product.name}">

							<button type="submit" class="btn btn-template-main pull-left">
								<i class="fa fa-user-md"></i> Add Product
							</button>
						</c:if>
					</div>
				</div>
			</form:form>


			<br>
			<br>



			<div class="all">
				<c:if test="${!empty productList}">
					<h3>Product List</h3>
					<table class="tg">
						<tr>
							<th width="80">Product ID</th>
							<th width="120">Product Name</th>
							<th width="200">Product Description</th>
							<th width="80">Price in Rs.</th>
							<th width="80">Product Category</th>
							<th width="80">Product Supplier</th>
							<th width="60">Edit</th>
							<th width="60">Delete</th>
							<th width="60">Product Image</th>
						</tr>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td align=right>Rs.${product.price}</td>
								<td>${product.category.name}</td>
								<td>${product.supplier.name}</td>
								<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
								<td><img
									src="<c:url value="/resources/images/${product.id}.jpg"/>"
									height="142" width="142" alt="product image" /></td>
								<td><a
									href="<c:url value="/resources/images/${product.id}.jpg"/>">Click
										here</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>

		</div>

		<br>
		<br>
		<br>

	</div>

</div>
		<!-- footer -->
		<%@include file="footer.jsp"%>
		<!-- / footer -->


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