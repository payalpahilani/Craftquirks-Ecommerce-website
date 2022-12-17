<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fp.aspx.cs" Inherits="craftquirks.fp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Craftquirks</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg.jpg);">
					<span class="login100-form-title-1">
						Login
					</span>
				</div>
                <form id="form1" runat="server" class="login100-form validate-form"> 
				
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
                        <asp:TextBox ID="user" runat="server" CssClass="input100" placeholder="Enter Username"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 input m-b-18">
						<span class="label-input100">Email</span>
                        <asp:TextBox ID="email" runat="server" CssClass="input100" placeholder="Enter Registered Email Address"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Id" ControlToValidate="email" ValidationExpression="\w+([-+,']\w+)*@\w+([-.]\w+)*\.\w+([.]\w+)*"></asp:RegularExpressionValidator>
					</div>

                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" CssClass="login100-form-btn" Text="Retrieve Password" OnClick="Button1_Click"/>
					</div>

                    <div>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    </div>
                    </form>
                </div>

                    <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>
</body>
</html>
