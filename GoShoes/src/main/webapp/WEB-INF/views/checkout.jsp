<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Free Adidas Website Template | Checkout |</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="Resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="Resources/js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="Resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="Resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="Resources/js/move-top.js"></script>
<script type="text/javascript" src="Resources/js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
  <div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="index"><img src="img/logo.png" alt=""/></a>
	    </div>
	    <div class="cssmenu">
		   <ul>
			 <li class="active"><a href="register">Sign up & Save</a></li> 
			 <li><a href="shop">Store Locator</a></li> 
			 <li><a href="login">My Account</a></li> 
			 <li><a href="checkout">CheckOut</a></li> 
		   </ul>
		</div>
		<ul class="icon2 sub-icon2 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon2 list">
					<li><h3>Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	<div class="wrap">
   		<!-- start header menu -->
		<ul class="megamenu skyblue">
		    <li><a class="color1" href="#">Home</a></li>
			<li class="grid"><a class="color2" href="#">Men</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">men</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="img/nav_img.jpg" alt=""/>
					</div>
				</div>
				</li>
  			   <li class="active grid"><a class="color4" href="#">Women</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop">login</a></li>
									<li><a href="shop">create an account</a></li>
									<li><a href="shop">create wishlist</a></li>
									<li><a href="shop">my shopping bag</a></li>
									<li><a href="shop">brands</a></li>
									<li><a href="shop">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
						 <div class="h_nav">
						   <img src="img/nav_img1.jpg" alt=""/>
						 </div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
					</div>
    			</li>				
				<li><a class="color5" href="#">Kids</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">man</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="img/nav_img2.jpg" alt=""/>
					</div>
				</div>
				</li>
				<li><a class="color6" href="#">Sale</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>	
							<div class="h_nav">
								<h4 class="top">my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>man</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop">login</a></li>
									<li><a href="shop">create an account</a></li>
									<li><a href="shop">create wishlist</a></li>
									<li><a href="shop">my shopping bag</a></li>
									<li><a href="shop">brands</a></li>
									<li><a href="shop">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
				</div>
				</li>
				<li><a class="color7" href="#">Customize</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop">login</a></li>
									<li><a href="shop">create an account</a></li>
									<li><a href="shop">create wishlist</a></li>
									<li><a href="shop">my shopping bag</a></li>
									<li><a href="shop">brands</a></li>
									<li><a href="shop">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color8" href="#">Shop</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>style zone</h4>
								<ul>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">login</a></li>
								</ul>	
							</div>
							<div class="h_nav">
								<h4 class="top">man</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
				</div>
				</li>
				<li><a class="color9" href="#">Football</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="shop">login</a></li>
									<li><a href="shop">create an account</a></li>
									<li><a href="shop">create wishlist</a></li>
									<li><a href="shop">my shopping bag</a></li>
									<li><a href="shop">brands</a></li>
									<li><a href="shop">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="shop">trends</a></li>
									<li><a href="shop">sale</a></li>
									<li><a href="shop">style videos</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="shop">new arrivals</a></li>
									<li><a href="shop">men</a></li>
									<li><a href="shop">women</a></li>
									<li><a href="shop">accessories</a></li>
									<li><a href="shop">kids</a></li>
									<li><a href="shop">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color10" href="#">Running</a></li>
				<li><a class="color11" href="#">Originals</a></li>
				<li><a class="color12" href="#">Basketball</a></li>
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>
       <div class="login">
         <div class="wrap">
    	     <h4 class="title">Shopping cart is empty</h4>
    	     <p class="cart">You have no items in your shopping cart.<br>Click<a href="index.html"> here</a> to continue shopping</p>
    	   </div>
		</div>
        <div class="footer">
       	  <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="img/f_icon.png" alt=""/><span class="delivery">Free delivery on all orders over £100*</span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="img/f_icon1.png" alt=""/><span class="delivery">Customer Service :<span class="orange"> (800) 000-2587 (freephone)</span></span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="img/f_icon2.png" alt=""/><span class="delivery">Fast delivery & free returns</span></li>
				  	 </ul>
				   </div>
				  <div class="clear"></div>
			 </div>
       	 </div>
       	 <div class="footer-middle">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_middle span_1_of_middle">
					<dl id="sample" class="dropdown">
			        <dt><a href="#"><span>Please Select a Country</span></a></dt>
			        <dd>
			            <ul>
			                <li><a href="#">Australia<img class="flag" src="img/as.png" alt="" /><span class="value">AS</span></a></li>
			                <li><a href="#">Sri Lanka<img class="flag" src="img/srl.png" alt="" /><span class="value">SL</span></a></li>
			                <li><a href="#">Newziland<img class="flag" src="img/nz.png" alt="" /><span class="value">NZ</span></a></li>
			                <li><a href="#">Pakistan<img class="flag" src="img/pk.png" alt="" /><span class="value">Pk</span></a></li>
			                <li><a href="#">United Kingdom<img class="flag" src="img/uk.png" alt="" /><span class="value">UK</span></a></li>
			                <li><a href="#">United States<img class="flag" src="img/us.png" alt="" /><span class="value">US</span></a></li>
			            </ul>
			         </dd>
   				    </dl>
   				 </div>
				<div class="col_1_of_middle span_1_of_middle">
					<ul class="f_list1">
						<li><span class="m_8">Sign up for email and Get 15% off</span>
						<div class="search">	  
							<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Subscribe" id="submit" name="submit">
							<div id="response"> </div>
			 			</div><div class="clear"></div>
			 		    </li>
					</ul>
				</div>
				<div class="clear"></div>
			   </div>
       	 	</div>
       	 </div>
       	<div class="footer-bottom">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Shop</h3>
					<ul class="sub_list">
						<h4 class="m_10">Men</h4>
					    <li><a href="shop">Men's Shoes</a></li>
			            <li><a href="shop">Men's Clothing</a></li>
			            <li><a href="shop">Men's Accessories</a></li>
			        </ul>
			             <ul class="sub_list">
				            <h4 class="m_10">Women</h4>
				            <li><a href="shop">Women's Shoes</a></li>
				            <li><a href="shop">Women's Clothing</a></li>
				            <li><a href="shop">Women's Accessories</a></li>
				         </ul>
				         <ul class="sub_list">
				            <h4 class="m_10">Kids</h4>
				            <li><a href="shop">Kids Shoes</a></li>
				            <li><a href="shop">Kids Clothing</a></li>
				            <li><a href="shop">Kids Accessories</a></li>
				         </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">style</h4>
				            <li><a href="shop">Porsche Design Sport</a></li>
				            <li><a href="shop">Porsche Design Shoes</a></li>
				            <li><a href="shop">Porsche Design Clothing</a></li>
				        </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">Adidas Neo Label</h4>
				            <li><a href="shop">Adidas NEO Shoes</a></li>
				            <li><a href="shop">Adidas NEO Clothing</a></li>
				        </ul>
				        <ul class="sub_list1">
				            <h4 class="m_10">Customise</h4>
				            <li><a href="shop">mi adidas</a></li>
				            <li><a href="shop">mi team</a></li>
				            <li><a href="shop">new arrivals</a></li>
				        </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Sports</h3>
					<ul class="list1">
					    <li><a href="shop">Basketball</a></li>
			            <li><a href="shop">Football</a></li>
			            <li><a href="shop">Football Boots</a></li>
			            <li><a href="shop">Predator</a></li>
			            <li><a href="shop">F50</a></li>
			            <li><a href="shop">Football Clothing</a></li>
			            <li><a href="shop">Golf</a></li>
			            <li><a href="shop">Golf Shoes</a></li>
			            <li><a href="shop">Golf Clothing</a></li>
			            <li><a href="shop">Outdoor</a></li>
			            <li><a href="shop">Outdoor Shoes</a></li>
			            <li><a href="shop">Outdoor Clothing</a></li>
			            <li><a href="shop">Rugby</a></li>
			            <li><a href="shop">Running</a></li>
			            <li><a href="shop">Running Shoes</a></li>
			            <li><a href="shop">Boost</a></li>
			            <li><a href="shop">Supernova</a></li>
			            <li><a href="shop">Running Clothing</a></li>
			            <li><a href="shop">Swimming</a></li>
			            <li><a href="shop">Tennis</a></li>
			            <li><a href="shop">Tennis Shoes</a></li>
			            <li><a href="shop">Tennis Clothing</a></li>
			            <li><a href="shop">Training</a></li>
			            <li><a href="shop">Training Shoes</a></li>
			            <li><a href="shop">Training Clothing</a></li>
			            <li><a href="shop">Training Accessories</a></li>
			            <li><a href="shop">miCoach</a></li>
			            <li><a href="shop">All Sports</a></li>
			         </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Originals</h3>
					<ul class="list1">
					    <li><a href="shop">Originals Shoes</a></li>
			            <li><a href="shop">Gazelle</a></li>
			            <li><a href="shop">Samba</a></li>
			            <li><a href="shop">LA Trainer</a></li>
			            <li><a href="shop">Superstar</a></li>
			            <li><a href="shop">SL</a></li>
			            <li><a href="shop">ZX</a></li>
			            <li><a href="shop">Campus</a></li>
			            <li><a href="shop">Spezial</a></li>
			            <li><a href="shop">Dragon</a></li>
			            <li><a href="shop">Originals Clothing</a></li>
			            <li><a href="shop">Firebird</a></li>
			            <li><a href="shop">Originals Accessories</a></li>
			            <li><a href="shop">Men's Originals</a></li>
			            <li><a href="shop">Women's Originals</a></li>
			            <li><a href="shop">Kid's Originals</a></li>
			            <li><a href="shop">All Originals</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Product Types</h3>
					<ul class="list1">
					    <li><a href="shop">Shirts</a></li>
					    <li><a href="shop">Pants & Tights</a></li>
					    <li><a href="shop">Shirts</a></li>
					    <li><a href="shop">Jerseys</a></li>
					    <li><a href="shop">Hoodies & Track Tops</a></li>
					    <li><a href="shop">Bags</a></li>
					    <li><a href="shop">Jackets</a></li>
					    <li><a href="shop">Hi Tops</a></li>
					    <li><a href="shop">SweatShirts</a></li>
					    <li><a href="shop">Socks</a></li>
					    <li><a href="shop">Swimwear</a></li>
					    <li><a href="shop">Tracksuits</a></li>
					    <li><a href="shop">Hats</a></li>
					    <li><a href="shop">Football Boots</a></li>
					    <li><a href="shop">Other Accessories</a></li>
					    <li><a href="shop">Sandals & Flip Flops</a></li>
					    <li><a href="shop">Skirts & Dresseses</a></li>
					    <li><a href="shop">Balls</a></li>
					    <li><a href="shop">Watches</a></li>
					    <li><a href="shop">Fitness Equipment</a></li>
					    <li><a href="shop">Eyewear</a></li>
					    <li><a href="shop">Gloves</a></li>
					    <li><a href="shop">Sports Bras</a></li>
					    <li><a href="shop">Scarves</a></li>
					    <li><a href="shop">Shinguards</a></li>
					    <li><a href="shop">Underwear</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Support</h3>
					<ul class="list1">
					   <li><a href="shop">Store finder</a></li>
					   <li><a href="shop">Customer Service</a></li>
					   <li><a href="shop">FAQ</a></li>
					   <li><a href="shop">Online Shop Contact Us</a></li>
					   <li><a href="shop">about adidas Products</a></li>
					   <li><a href="shop">Size Charts </a></li>
					   <li><a href="shop">Ordering </a></li>
					   <li><a href="shop">Payment </a></li>
					   <li><a href="shop">Shipping </a></li>
					   <li><a href="shop">Returning</a></li>
					   <li><a href="shop">Using out Site</a></li>
					   <li><a href="shop">Delivery Terms</a></li>
					   <li><a href="shop">Site Map</a></li>
					   <li><a href="shop">Gift Card</a></li>
					  
		            </ul>
		            <ul class="sub_list2">
		               <h4 class="m_10">Company Info</h4>
			           <li><a href="shop">About Us</a></li>
			           <li><a href="shop">Careers</a></li>
			           <li><a href="shop">Press</a></li>
			        </ul>
				</div>
				<div class="clear"></div>
			</div>
       	 	</div>
       	 </div>
       	 <div class="copy">
       	   <div class="wrap">
       	 	  <p>© All rights reserved | Template by&nbsp;<a href="#">|Hany|</a></p>
       	   </div>
       	 </div>
       </div>
       <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>       
</body>
</html>