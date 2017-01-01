<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Free Adidas Website Template | Register :: w3layouts</title>
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
       <div class="register_account">
          	<div class="wrap">
    	      <h4 class="title">Create an Account</h4>
    		   <form>
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div><input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"></div>
		    			<div><input type="text" value="Company Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Company Name';}"></div>
		    			<div><input type="text" value="E-Mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-Mail';}"></div>
		    			<div><input type="text" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}"></div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div><input type="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></div>
		    		<div><select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
		            <option value="null">Select a Country</option>         
		            <option value="AX">Åland Islands</option>
		            <option value="AF">Afghanistan</option>
		            <option value="AL">Albania</option>
		            <option value="DZ">Algeria</option>
		            <option value="AS">American Samoa</option>
		            <option value="AD">Andorra</option>
		            <option value="AO">Angola</option>
		            <option value="AI">Anguilla</option>
		            <option value="AQ">Antarctica</option>
		            <option value="AG">Antigua And Barbuda</option>
		            <option value="AR">Argentina</option>
		            <option value="AM">Armenia</option>
		            <option value="AW">Aruba</option>
		            <option value="AU">Australia</option>
		            <option value="AT">Austria</option>
		            <option value="AZ">Azerbaijan</option>
		            <option value="BS">Bahamas</option>
		            <option value="BH">Bahrain</option>
		            <option value="BD">Bangladesh</option>
		            <option value="BB">Barbados</option>
		            <option value="BY">Belarus</option>
		            <option value="BE">Belgium</option>
		            <option value="BZ">Belize</option>
		            <option value="BJ">Benin</option>
		            <option value="BM">Bermuda</option>
		            <option value="BT">Bhutan</option>
		            <option value="BO">Bolivia</option>
		            <option value="BA">Bosnia and Herzegovina</option>
		            <option value="BW">Botswana</option>
		            <option value="BV">Bouvet Island</option>
		            <option value="BR">Brazil</option>
		            <option value="IO">British Indian Ocean Territory</option>
		            <option value="BN">Brunei</option>
		            <option value="BG">Bulgaria</option>
		            <option value="BF">Burkina Faso</option>
		            <option value="BI">Burundi</option>
		            <option value="KH">Cambodia</option>
		            <option value="CM">Cameroon</option>
		            <option value="CA">Canada</option>
		            <option value="CV">Cape Verde</option>
		            <option value="KY">Cayman Islands</option>
		            <option value="CF">Central African Republic</option>
		            <option value="TD">Chad</option>
		            <option value="CL">Chile</option>
		            <option value="CN">China</option>
		            <option value="CX">Christmas Island</option>
		            <option value="CC">Cocos (Keeling) Islands</option>
		            <option value="CO">Colombia</option>
		            <option value="KM">Comoros</option>
		            <option value="CG">Congo</option>
		            <option value="CD">Congo, Democractic Republic</option>
		            <option value="CK">Cook Islands</option>
		            <option value="CR">Costa Rica</option>
		            <option value="CI">Cote D'Ivoire (Ivory Coast)</option>
		            <option value="HR">Croatia (Hrvatska)</option>
		            <option value="CU">Cuba</option>
		            <option value="CY">Cyprus</option>
		            <option value="CZ">Czech Republic</option>
		            <option value="DK">Denmark</option>
		            <option value="DJ">Djibouti</option>
		            <option value="DM">Dominica</option>
		            <option value="DO">Dominican Republic</option>
		            <option value="TP">East Timor</option>
		            <option value="EC">Ecuador</option>
		            <option value="EG">Egypt</option>
		            <option value="SV">El Salvador</option>
		            <option value="GQ">Equatorial Guinea</option>
		            <option value="ER">Eritrea</option>
		            <option value="EE">Estonia</option>
		            <option value="ET">Ethiopia</option>
		            <option value="FK">Falkland Islands (Islas Malvinas)</option>
		            <option value="FO">Faroe Islands</option>
		            <option value="FJ">Fiji Islands</option>
		            <option value="FI">Finland</option>
		            <option value="FR">France</option>
		            <option value="FX">France, Metropolitan</option>
		            <option value="GF">French Guiana</option>
		            <option value="PF">French Polynesia</option>
		            <option value="TF">French Southern Territories</option>
		            <option value="GA">Gabon</option>
		            <option value="GM">Gambia, The</option>
		            <option value="GE">Georgia</option>
		            <option value="DE">Germany</option>
		            <option value="GH">Ghana</option>
		            <option value="GI">Gibraltar</option>
		            <option value="GR">Greece</option>
		            <option value="GL">Greenland</option>
		            <option value="GD">Grenada</option>
		            <option value="GP">Guadeloupe</option>
		            <option value="GU">Guam</option>
		            <option value="GT">Guatemala</option>
		            <option value="GG">Guernsey</option>
		            <option value="GN">Guinea</option>
		            <option value="GW">Guinea-Bissau</option>
		            <option value="GY">Guyana</option>
		            <option value="HT">Haiti</option>
		            <option value="HM">Heard and McDonald Islands</option>
		            <option value="HN">Honduras</option>
		            <option value="HK">Hong Kong S.A.R.</option>
		            <option value="HU">Hungary</option>
		            <option value="IS">Iceland</option>
		            <option value="IN">India</option>
		            <option value="ID">Indonesia</option>
		            <option value="IR">Iran</option>
		            <option value="IQ">Iraq</option>
		            <option value="IE">Ireland</option>
		            <option value="IM">Isle of Man</option>
		            <option value="IL">Israel</option>
		            <option value="IT">Italy</option>
		            <option value="JM">Jamaica</option>
		            <option value="JP">Japan</option>
		            <option value="JE">Jersey</option>
		            <option value="JO">Jordan</option>
		            <option value="KZ">Kazakhstan</option>
		            <option value="KE">Kenya</option>
		            <option value="KI">Kiribati</option>
		            <option value="KR">Korea</option>
		            <option value="KP">Korea, North</option>
		            <option value="KW">Kuwait</option>
		            <option value="KG">Kyrgyzstan</option>
		            <option value="LA">Laos</option>
		            <option value="LV">Latvia</option>
		            <option value="LB">Lebanon</option>
		            <option value="LS">Lesotho</option>
		            <option value="LR">Liberia</option>
		            <option value="LY">Libya</option>
		            <option value="LI">Liechtenstein</option>
		            <option value="LT">Lithuania</option>
		            <option value="LU">Luxembourg</option>
		            <option value="MO">Macau S.A.R.</option>
		            <option value="MK">Macedonia</option>
		            <option value="MG">Madagascar</option>
		            <option value="MW">Malawi</option>
		            <option value="MY">Malaysia</option>
		            <option value="MV">Maldives</option>
		            <option value="ML">Mali</option>
		            <option value="MT">Malta</option>
		            <option value="MH">Marshall Islands</option>
		            <option value="MQ">Martinique</option>
		            <option value="MR">Mauritania</option>
		            <option value="MU">Mauritius</option>
		            <option value="YT">Mayotte</option>
		            <option value="MX">Mexico</option>
		            <option value="FM">Micronesia</option>
		            <option value="MD">Moldova</option>
		            <option value="MC">Monaco</option>
		            <option value="MN">Mongolia</option>
		            <option value="ME">Montenegro</option>
		            <option value="MS">Montserrat</option>
		            <option value="MA">Morocco</option>
		            <option value="MZ">Mozambique</option>
		            <option value="MM">Myanmar</option>
		            <option value="NA">Namibia</option>
		            <option value="NR">Nauru</option>
		            <option value="NP">Nepal</option>
		            <option value="NL">Netherlands</option>
		            <option value="AN">Netherlands Antilles</option>
		            <option value="NC">New Caledonia</option>
		            <option value="NZ">New Zealand</option>
		            <option value="NI">Nicaragua</option>
		            <option value="NE">Niger</option>
		            <option value="NG">Nigeria</option>
		            <option value="NU">Niue</option>
		            <option value="NF">Norfolk Island</option>
		            <option value="MP">Northern Mariana Islands</option>
		            <option value="NO">Norway</option>
		            <option value="OM">Oman</option>
		            <option value="PK">Pakistan</option>
		            <option value="PW">Palau</option>
		            <option value="PS">Palestinian Territory, Occupied</option>
		            <option value="PA">Panama</option>
		            <option value="PG">Papua new Guinea</option>
		            <option value="PY">Paraguay</option>
		            <option value="PE">Peru</option>
		            <option value="PH">Philippines</option>
		            <option value="PN">Pitcairn Island</option>
		            <option value="PL">Poland</option>
		            <option value="PT">Portugal</option>
		            <option value="PR">Puerto Rico</option>
		            <option value="QA">Qatar</option>
		            <option value="RE">Reunion</option>
		            <option value="RO">Romania</option>
		            <option value="RU">Russia</option>
		            <option value="RW">Rwanda</option>
		            <option value="SH">Saint Helena</option>
		            <option value="KN">Saint Kitts And Nevis</option>
		            <option value="LC">Saint Lucia</option>
		            <option value="PM">Saint Pierre and Miquelon</option>
		            <option value="VC">Saint Vincent And The Grenadines</option>
		            <option value="WS">Samoa</option>
		            <option value="SM">San Marino</option>
		            <option value="ST">Sao Tome and Principe</option>
		            <option value="SA">Saudi Arabia</option>
		            <option value="SN">Senegal</option>
		         </select></div>		        
		          <div><input type="text" value="City" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}"></div>
		             <input type="text" value="" class="code"> - <input type="text" value="" class="number">
		          	 <p class="code">Country Code + Phone Number</p>
		          </div>
		         <button class="grey">Submit</button>
		         <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
		         <div class="clear"></div>
		    </form>
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
       	   	  <p>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></p>
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