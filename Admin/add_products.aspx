<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_products.aspx.cs" Inherits="craftquirks.Admin.add_products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Add Product - Dashboard HTML Template</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body>
    <!-- Navigation Bar Area -->
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="Index.aspx">
          <h1 class="tm-site-title mb-0">Product Admin</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li class="nav-item">
              <a class="nav-link" href="index.html">
                <i class="fas fa-tachometer-alt"></i> Dashboard
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="far fa-file-alt"></i>
                <span> Reports <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Daily Report</a>
                <a class="dropdown-item" href="#">Weekly Report</a>
                <a class="dropdown-item" href="#">Yearly Report</a>
              </div>
            </li>
           <li class="nav-item">
                            <a class="nav-link" href="products1.aspx">
                                <i class="fas fa-shopping-cart"></i>
                                Products
                            </a>
                        </li>

                         <li class="nav-item">
                            <a class="nav-link" href="store1.aspx">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                Store
                            </a>
                        </li>


                        <li class="nav-item">
                            <a class="nav-link" href="accounts.aspx">
                                <i class="far fa-user"></i>
                                Accounts
                            </a>
                        </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="fas fa-cog"></i>
                <span> Settings <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Billing</a>
                <a class="dropdown-item" href="#">Customize</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="login.html">
                Admin, <b>Logout</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Nav Bar Area End -->

    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Add Product</h2>
              </div>
            </div>
              \
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">

                <form action="" class="tm-edit-product-form" runat="server">

                  <div class="form-group mb-3">
                    <label for="name">Product Name</label>
                    <asp:TextBox ID="pname1" runat="server" CssClass="form-control validate"></asp:TextBox>
                  </div>
                  <div class="form-group mb-3">
                    <label
                      for="description"
                      >Description</label>
                   <asp:TextBox ID="pdesc1" runat="server" TextMode="MultiLine" CssClass="form-control validate" Rows="3"></asp:TextBox>
                  </div>

                  <div class="form-group mb-3">
                    <label
                      for="category"
                      >Category</label>
                  
                   <asp:DropDownList ID="pcat1" runat="server" CssClass="custom-select tm-select-accounts">
                       <asp:ListItem Selected="True" hidden > Select category</asp:ListItem>
                      <asp:ListItem Value="ME">Memory Album</asp:ListItem>
                       <asp:ListItem Value="EB">Explosion Box</asp:ListItem>
                       <asp:ListItem Value="SB">Scrapbook</asp:ListItem>
                       <asp:ListItem Value="IB">Infinity Explosion Box</asp:ListItem>
                        <asp:ListItem Value="TEB">Tower Explosion Box</asp:ListItem>
                        <asp:ListItem Value="CEB">Chocolate Explosion Box</asp:ListItem>
                        <asp:ListItem Value="NA">Name Album</asp:ListItem>
                        <asp:ListItem Value="CA">Cards</asp:ListItem>
                        <asp:ListItem Value="AP">Additional Products</asp:ListItem>


                   </asp:DropDownList>

                  </div>
                  <div class="row">

                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="price"
                            >Product Price
                          </label>
                         <asp:TextBox ID="price1" runat="server" CssClass="form-control validate"></asp:TextBox>
                        </div>

                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="quantity"
                            >Quantity
                          </label>
                         <asp:TextBox ID="pquan" runat="server" CssClass="form-control validate"></asp:TextBox>
                        </div>

                  </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">
               
                   <asp:FileUpload ID="pimg1" runat="server"  EnableViewState="True"  />
                </div>
                <div class="custom-file mt-3 mb-3">    
              <asp:Button ID="add_img" runat="server" Text="UPLOAD PRODUCT IMAGE" CssClass="btn btn-primary btn-block mx-auto" Enabled="false" />
                </div>
              </div>
              <div class="col-12">
                 <asp:Button ID="add_event" runat="server" Text="Add Product Now" CssClass="btn btn-primary btn-block text-uppercase" OnClick="add_product_Click" />
              </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved. 
            
            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
        </div>
    </footer> 

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
</body>
</html>

