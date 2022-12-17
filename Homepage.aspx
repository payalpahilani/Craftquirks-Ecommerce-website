<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="craftquirks.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Craftquirks</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap" rel="stylesheet"/>

  <link rel="stylesheet" href="css/animate.css"/>
  <link rel="stylesheet" href="css/owl.carousel.min.css"/>
  <link rel="stylesheet" href="css/jquery.fancybox.min.css"/>


  <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css"/>
  <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css"/>
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css"/>
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css"/>

  <!-- Theme Style -->
  <link rel="stylesheet" href="css/style_temp.css"/>

</head>

<body>

  <header role="banner">
    <nav class="navbar navbar-expand-lg  bg-dark">
      <div class="container-fluid">

         <a class="navbar-brand " href="Homepage.aspx"> &nbsp &nbsp &nbsp &nbsp Craftquirks
<br/> A Handmade Gift Studio</a>
         
	
	

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
              <a class="nav-link" href="about.aspx">About</a>
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
            <form method="post" class="search-form" id="form1" runat="server">
              <span class="icon ion ion-search"></span>
              <input type="text" class="form-control" placeholder="Search..."/>
            </form>
          </div>

        </div>
      </div>
    </nav>
  </header>
  <!-- END header -->

  <div class="slider-item overlay" data-stellar-background-ratio="0.5"
    style="background-image: url('images/bg.jpg');">
    <div class="container">
      <div class="row slider-text align-items-center justify-content-center">
        <div class="col-lg-9 text-center col-sm-12 element-animate">
          <h1 class="mb-4">We Are Craftquirks</h1>
          <div class="btn-play-wrap mx-auto">
            <p class="mb-4"><a href="https://youtu.be/4K3R3KqKbCI" data-fancybox="2" data-ratio="2"
                class="btn-play"><span class="ion ion-ios-play"></span></a></p>
          </div>
          <span>Watch Video</span>

        </div>
      </div>
    </div>
  </div>

  

  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 mr-auto mb-5">
          <span class="d-block text-uppercase text-secondary">Who We Are</span>
          <span class="divider my-4"></span>
          <h2 class="mb-4 section-title">We Are <strong>Craftquriks</strong> That Bring Your Ideas Alive</h2>
          <p> Creativity is Inventing, Experimenting, Growing, Taking Risks, Breaking Rules, Making Mistakes And Having Fun.</p>
          <p class="mb-5">Being Creative is not a Hobby it's a way of LIFE! We know that buying handmade or making things ourselves is more eco-friendly than shopping at big box stores </p>
          <p><a href="#" class="btn btn-outline-black">Learn More</a></p>
        </div>
        <div class="col-lg-6">
          <figure class="img-dotted-bg">
            <img src="images/about.jpg" alt="Image" class="img-fluid"/>
          </figure>
        </div>
      </div>
    </div>
  </div>

  <div class="section portfolio-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-12 text-center">
          <h2 class="mb-4 section-title">Latest Work</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <a href="portfolio-single.html" class="work-thumb">
            <div class="work-text">
              <h2>Tower Explosion Box</h2>
              
            </div>
            <img src="images/w1.png" alt="Image" class="img-fluid"/>
          </a>
          <a href="portfolio-single.html" class="work-thumb">
            <div class="work-text">
              <h2>Memory Album</h2>
             
            </div>
            <img src="images/w4.jpg" alt="Image" class="img-fluid"/>
          </a>
        </div>
        <div class="col-lg-6">
          <a href="portfolio-single.html" class="work-thumb">
            <div class="work-text">
              <h2>Gate Fold Album</h2>
             
            </div>
            <img src="images/w2.jpg" alt="Image" class="img-fluid"/>
          </a>
          <a href="portfolio-single.html" class="work-thumb">
            <div class="work-text">
              <h2>Multi Layer Explosion Box</h2>

            </div>
            <img src="images/w3.jpg" alt="Image" class="img-fluid"/>
          </a>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col-12 text-center">
          <p><a href="portfolio.html" class="btn btn-outline-white px-4 py-3">More Portfolio</a></p>
        </div>
      </div>
    </div>
  </div>

  <div class="section">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 mr-auto mb-3">
          <span class="d-block text-uppercase text-secondary">Featured Services</span>
          <span class="divider my-4"></span>
          <h2 class="mb-4 section-title">The <strong>Services</strong> That We Are Providing</h2>
          <p> The website is created with the aim to give handmade crafts/gifts a platform and help the interested people to buy and learn crafts/gifts. 
	This websites will allow user to customise their product and allow users to learn the making of product. 
	This website allows the users to customise their gifts by simple drag and drop, this will improve the consumer shopping experience. 
 	This website has capability to provide variety of products and will be flexible according to consumer's requirement and within his/her budget</p>
          <p class="mb-5">Selling products and services over the internet without the need of going physically to the market is what our craft website all about. The user can customize the products the way they want from a wide variety of options. </p>
          
        </div>
        <div class="col-lg-6">
          <div class="row mt-5">
            <div class="col-lg-6 col-md-6 mb-4">
              <div class="service">
                <i class="fa fa-youtube-play fa-2x"></i>
                <h3>Video Tutorials</h3>
                <p>craftquirks.com provides aspirants video tutorials to learn the making of handmade gifts </p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 mb-4">
              <div class="service">
                <i class="fa fa-shopping-bag fa-2x"></i>
                <h3>Store</h3>
                <p> craftquirks.com is a platform that provides Art and Craft supplies at the best price. </p>
              </div>
            </div>

            <div class="col-lg-6 col-md-6 mb-4">
              <div class="service">
                 <i class="fa fa-gift fa-2x"></i>
                <h3>Make Your Own</h3>
                <p>Customise the gifts for your loved ones</p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 mb-4">
              <div class="service">
                <i class="fa fa-truck fa-2x"></i>
                <h3>Shipping</h3>
              <p>Now craftquirks.com is successful in providing our services to all regions in India and it will hit the International markets soon </p>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  

  <div class="section bg-light block-11">
    <div class="container">
      <div class="row justify-content-center mb-5">
        <div class="col-md-8 text-center">
          <h2 class="mb-4 section-title">FEEDBACK</h2>
        </div>
      </div>
      <div class="nonloop-block-11 owl-carousel"  >
        <div class="item">
          <div class="block-33 h-100">
            <div class="vcard d-flex mb-3">
              <div class="image align-self-center"><img src="images/1.jpg" alt="Person here"/></div>
              <div class="name-text align-self-center">
                <h2 class="heading">Umesh Tolani</h2>
              </div>
            </div>
            <div class="text">
              <blockquote>
                <p>&rdquo; Fast delivery and well packaged. An Excellent place for design 
                    oriented craft products. Must order.
                    &ldquo;</p>
              </blockquote>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="block-33 h-100">
            <div class="vcard d-flex mb-3">
              <div class="image align-self-center"><img src="images/2.jpg" alt="Person here"/></div>
              <div class="name-text align-self-center">
                <h2 class="heading">Shruti Patil</h2>
                
              </div>
            </div>
            <div class="text">
              <blockquote>
                <p>&rdquo; Strong MDF bases!! Huge variety..timely delivery with good packaging.....
                    helping team.....trustworthy site..very reasonable and fair price &ldquo;</p>
              </blockquote>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="block-33 h-100">
            <div class="vcard d-flex mb-3">
              <div class="image align-self-center"><img src="images/person_1.jpg" alt="Person here"/></div>
              <div class="name-text align-self-center">
                <h2 class="heading">Smith</h2>
                  
              </div>
            </div>
            <div class="text">
              <blockquote>
                <p>&rdquo; Love the versatile mdf stuff and finishing of their products.They even do allow us
                    to do customisation accordingly.One stop for all stuff!! &ldquo;</p>
              </blockquote>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="block-33 h-100">
            <div class="vcard d-flex mb-3">
              <div class="image align-self-center"><img src="images/1.jpg" alt="Person here"/></div>
              <div class="name-text align-self-center">
                <h2 class="heading">Jay</h2>
                
              </div>
            </div>
            <div class="text">
              <blockquote>
                <p>&rdquo; very helpful website..Easy to get my card customise.
                    would recommend to all my friends &ldquo;</p>
              </blockquote>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- END .block-4 -->
  </div>

  <div class="bg-primary py-5">
    <div class="container text-center">
      <div class="row justify-content-center">
        <div class="col-lg-7">
          <h3 class="text-white mb-4 font-weight-normal">We would love to hear from you!</h3>
          <p class="text-white mb-5">Contact us and get your custom-made creation. We’d love to see your happiness unravel while our craft unfolds!</p>
            
          <p class="mb-0"><a href="contact.html" class="btn btn-outline-white px-4 py-3">Get In Touch!</a></p>
        </div>
      </div>

    </div>
  </div>

  

  <footer class="site-footer" role="contentinfo">
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
</body>

</html>