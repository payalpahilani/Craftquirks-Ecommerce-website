<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pro_desc.aspx.cs" Inherits="craftquirks.pro_desc" %>

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
<link rel="stylesheet" type="text/css" href="styles1/product.css">
<link rel="stylesheet" type="text/css" href="styles1/product_responsive.css">




  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">


  <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css1/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css1/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css1/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css1/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css1/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css1/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css1/style.css" type="text/css">

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
                  
                   <asp:HyperLink ID="HyperLink5" runat="server" CssClass="dropdown-item" NavigateUrl="~/store.aspx">Store</asp:HyperLink>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="portfolio.html">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
             
          </ul>

          <div class="navbar-nav ml-auto">
            <form method="post" class="search-form">
              <span class="icon ion ion-search"></span>
              <input type="text" class="form-control" placeholder="Search..." style="color:black"/>
            </form>
          </div>

        </div>
      </div>
    </nav>
  </header>
  <!-- END header -->
                    
        <form id="form1" runat="server">

         <asp:Repeater ID="d1" runat="server">
        
        <ItemTemplate>


        <!-- Product Page Section Beign -->
                <section class="product-page">
        <div class="container">
            <div>
                &nbsp &nbsp &nbsp
                 &nbsp &nbsp &nbsp
            </div>
            <div class="row">
                <div class="col-lg-6">
                    
                              <img src="<%#Eval("p_img") %>" alt="" height="400px" width="400px" style="padding-top:70px;">
                  
                </div>
                <div class="col-lg-6">
                    <div class="product-content">
                        <h2><%#Eval("p_name") %></h2>
                        <div class="pc-meta">
                            <h5><%#Eval("p_price") %></h5>
                            
                        </div>
                        <p>
                            <%#Eval("p_desc") %>

                        </p>
                        <ul class="tags">
                            <li><span>Category :</span> <%#Eval("p_type") %></li>
                            <li><span>In Stock :</span><%#Eval("p_quan") %> </li>
                        </ul>
                        
                          <asp:Button ID="B1" CssClass="primary-btn pc-btn" OnClick="add_toCart" Text="Add to Cart"  runat="server"  />
                        </div>
                          
                       </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Product Page Section End -->

            </ItemTemplate>
             </asp:Repeater>

                        </form>
                           <div>
                &nbsp &nbsp &nbsp
            </div>










































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
  <!-- END footer -->
        <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#f4b214" /></svg></div>

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/main.js"></script>
          <!-- Js Plugins -->
    <script src="js1/jquery-3.3.1.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/jquery.magnific-popup.min.js"></script>
    <script src="js1/jquery.slicknav.js"></script>
    <script src="js1/owl.carousel.min.js"></script>
    <script src="js1/jquery.nice-select.min.js"></script>
    <script src="js1/mixitup.min.js"></script>
    <script src="js1/main.js"></script>

              </form>

</body>

</html>
  