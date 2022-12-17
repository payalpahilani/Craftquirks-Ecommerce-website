
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="craftquirks.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Craftquirks</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Little Closet template">
<link rel="stylesheet" type="text/css" href="styles1/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins1/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins1/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins1/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles1/cart.css">
<link rel="stylesheet" type="text/css" href="styles1/cart_responsive.css">




  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">


  <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">

  <!-- Theme Style -->
  <link rel="stylesheet" href="css/style_temp.css">

</head>
    <body>

  <header role="banner">
    <nav class="navbar navbar-expand-lg  bg-dark">
      <div class="container-fluid">

     &nbsp &nbsp &nbsp     <asp:Image ID="img1" runat="server" ImageUrl="images/bg1.png" CssClass="navbar-brand" Height="60px" Width="200px" />
	
	

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05"
          aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

   
        <div class="collapse navbar-collapse" id="navbarsExample05">
          <ul class="navbar-nav pl-md-5 ml-auto">
            <li class="nav-item">
               <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nav-link" NavigateUrl="Homepage.aspx">Home</asp:HyperLink>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">Services</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="dropdown-item" NavigateUrl="~/makeyourown.aspx">Make your Own</asp:HyperLink>
                   <asp:HyperLink ID="HyperLink4" runat="server" CssClass="dropdown-item" NavigateUrl="~/products.aspx">Finished Products</asp:HyperLink>
                   <asp:HyperLink ID="HyperLink5" runat="server" CssClass="dropdown-item" NavigateUrl="~/store.aspx">Store</asp:HyperLink>

              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="portfolio.aspx">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.aspx">Contact</a>
            </li>
              <li class="nav-item">
              <asp:HyperLink ID="HyperLink2" runat="server" CssClass="nav-link" NavigateUrl="login.aspx" Text="Login"/>
            </li>
             
          </ul>

          <div class="navbar-nav ml-auto">
            <form method="post" class="search-form" id="form1">
              <span class="icon ion ion-search"></span>
              <input type="text" class="form-control" placeholder="Search..." style="color:black"/>
           
          </div>

        </div>
      </div>
    </nav>
  </header>
  <!-- END header -->
        <!-- Home -->
        <div class="section">
		<div class="home">
			<div class="home_container d-flex flex-column align-items-center justify-content-end">
				<div class="home_content text-center">
					<div class="home_title">Shopping Cart</div>
					<div class="breadcrumbs d-flex flex-column align-items-center justify-content-center">
						<ul class="d-flex flex-row align-items-start justify-content-start text-center">
							<li><a href="#">Home</a></li>
							<li>Your Cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
            </div>
        
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="cart_container">
							
							<!-- Cart Bar -->
                            <table> 
							<div class="cart_bar">
                                
								<ul class="cart_bar_list item_list d-flex flex-row align-items-center justify-content-end">
								
                                    <li class="mr-auto">Product</li>
									<li>Price</li>
									
                                    <li>Delete</li>
									<li>Total</li>

                                       
								</ul>
                                   
                                <CssClass="hidden-xs"><a href="#"><img src="">
                                   
                                <CssClass="form-control" TextMode="Number" Text="1" MaxLength="10">
                                

							</div>
                                    
                                 </table>
<!-- Cart Items -->

    <table> 
               
    <asp:DataList ID="d1" runat="server">
					<ItemTemplate>

                        <td>
                            
							<div class="cart_items">
								<ul class="cart_items_list">
                                    </td>

									<!-- Cart Item -->
                                    
									<li class="cart_item item_list d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-end justify-content-start">
										<div class="product d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start mr-auto">
											
                                            
											<div><div class="product_image"><img src="<%#Eval("p_img") %>" alt=""></div></div>
											<div class="product_name_container">
												<div class="product_name" ><h5> <%#Eval("p_name") %></h5></div> 
												
                                               
											</div>
										</div>
										    <div class="product_price product_text"> <h5> ₹ <%#Eval("p_price") %></h5> </div>
										

                                        <div>
                                            <a href="delete.aspx?id=<%# Eval("p_id") %>"> Remove </a>

                                        </div>
										<div class="product_total product_text"><h5> ₹ <%#Eval("p_price") %></h5></div>
									</li>
								</ul>
							</div>
                        </ItemTemplate>
                    </asp:DataList>
                             </table>

							<!-- Cart Buttons -->
							<div class="cart_buttons d-flex flex-row align-items-start justify-content-start">
								<div class="cart_buttons_inner ml-sm-auto d-flex flex-row align-items-start justify-content-start flex-wrap">
									<div class="button button_clear trans_200">
                                        
									<div class="button button_continue trans_200">
                                    
								</div>
							</div>
						</div>
					</div>
				</div>
              
				<div class="row cart_extra_row">
					<div class="col-lg-55">
						<div class="cart_extra cart_extra_1">
							<div class="cart_extra_content cart_extra_coupon">
								<div class="cart_extra_title">Coupon code</div>
								<div class="coupon_form_container">
									<form action="#" id="coupon_form" class="coupon_form">
										<input type="text" class="coupon_input" required="required">
										<button class="coupon_button">apply</button>
									</form>
								</div>
                               
								<div class="coupon_text">Phasellus sit amet nunc eros. Sed nec congue tellus. Aenean nulla nisl, volutpat blandit lorem ut.</div>
								<div class="shipping">
                                    <form id="form2" method="post" runat="server">
									<div class="cart_extra_title">Shipping Method</div>
                                        <br />
                                        <div class="radio_container">
                                        <asp:RadioButtonList CssClass="radio_text" ID="RadioButtonList1" OnSelectedIndexChanged="IndexChanged" AutoPostBack="true"  runat="server">
                                            <asp:ListItem Selected="True" Value="a">&nbsp&nbsp Next day Shipping &nbsp&nbsp&nbsp ₹499 </asp:ListItem>
                                            <asp:ListItem  Value="b">&nbsp&nbsp Standard Shipping &nbsp&nbsp&nbsp FREE </asp:ListItem>
                                        </asp:RadioButtonList>
                                        </div>
                                        <asp:Button CssClass="checkout_button trans_200" ID="Button1" runat="server" Text="Proceed to checkout" OnClick="Button1_Click"  />
							            </form>    
                                        
								</div>
							</div>
						</div>
					</div>
                   
                 
                   
				<div class="cart_extra_col">
                    <div class="col-lg-40">

						<div class="cart_extra cart_extra_2">
							<div class="cart_extra_content cart_extra_total">
								<div class="cart_extra_title">Cart Total</div>
								<ul class="cart_extra_total_list">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Subtotal</div>
										<div class="cart_extra_total_value ml-auto"> <h5>
                                            <asp:Label ID="subtotal" runat="server" Text="Label"></asp:Label></h5> </div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Shipping</div>
										<div class="cart_extra_total_value ml-auto"><asp:Label CssClass="cart_extra_total_value ml-auto" ID="shipping" runat="server" Text="Label"></asp:Label></div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="cart_extra_total_title">Total</div>
										<div class="cart_extra_total_value ml-auto"><asp:Label CssClass="cart_extra_total_value ml-auto" ID="total" runat="server" Text="Label"></asp:Label></div>
									</li>
								</ul>
								</div>
						</div>
					</div>
				</div>
			</div>

			
        

		
        
				<!-- Footer -->
 <footer class="site-footer" role="contentinfo"">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-4 mb-5">
          <h3 class="mb-4">About Craftquirks</h3>
          <p class="mb-5">craftquirks.com is a platform that provides Art and Craft supplies at the best price. 
              This E-commerce website managed by two young entrepreneurs. Now craftquirks.com is successful in 
              providing craft materials to all regions in India and it will hit the International markets soon. </p>
          <ul class="list-unstyled footer-link d-flex footer-social">
            <li><a href="#" class="p-2"><span class="fa fa-twitter"></span></a></li>
            <li><a href="#" class="p-2"><span class="fa fa-facebook"></span></a></li>
            <li><a href="#" class="p-2"><span class="fa fa-linkedin"></span></a></li>
            <li><a href="https://www.instagram.com/craftquirks/?hl=en" class="p-2"><span class="fa fa-instagram"></span></a></li>
          </ul>

        </div>
        <div class="col-md-5 mb-5 pl-md-5">
          <div class="mb-5">
            <h3 class="mb-4">Contact Info</h3>
            <ul class="list-unstyled footer-link">
              <li class="d-block">
                <span class="d-block">Address:</span>
                <span class="text-white">Jai Hind College, Churchgate</span>
              </li>
              <li class="d-block">
                <span class="d-block">Telephone:</span><span class="text-white">+91 8898990815/9594109496</span>
              </li>
              <li class="d-block">
                <span class="d-block">Email:</span><span class="text-white">carfthandmade@gmail.com</span>
              </li>
            </ul>
          </div>

          
        </div>
        <div class="col-md-3 mb-5">
          <h3 class="mb-4">Quick Links</h3>
          <ul class="list-unstyled footer-link">
            <li><a href="#">About</a></li>
            <li><a href="#">Terms of Use</a></li>
            <li><a href="#">Disclaimers</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="col-md-3">

        </div>
      </div>
      <div class="row">
        <div class="col-12 text-md-center text-left">
          <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;
            <script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with
            <i class="fa fa-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com"
              target="_blank">Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </p>
        </div>
      </div>
    </div>
  </footer>

		
</div>
<!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#f4b214" /></svg></div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles1/bootstrap-4.1.2/popper.js"></script>
<script src="styles1/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins1/greensock/TweenMax.min.js"></script>
<script src="plugins1/greensock/TimelineMax.min.js"></script>
<script src="plugins1/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins1/greensock/animation.gsap.min.js"></script>
<script src="plugins1/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins1/easing/easing.js"></script>
<script src="plugins1/parallax-js-master/parallax.min.js"></script>
<script src="js/cart.js"></script>
 <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
