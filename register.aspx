<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="craftquirks.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>
                <form id="form1" runat="server" class="login100-form validate-form"> 

					<div class="wrap-input100 input m-b-10">
						<span class="label-input100">Username</span>
                        <asp:TextBox ID="username" runat="server" placeholder="Enter Username" CssClass="input100">
                        </asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="username"></asp:RequiredFieldValidator>
						
					</div>

					<div class="wrap-input100  input m-b-7" >
						<span class="label-input100">Email</span>
                         <asp:TextBox ID="email" runat="server" placeholder="Enter Email" CssClass="input100"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Id" ControlToValidate="email" ValidationExpression="\w+([-+,']\w+)*@\w+([-.]\w+)*\.\w+([.]\w+)*"></asp:RegularExpressionValidator>
					</div>

                    <div class="wrap-input100 input m-b-10">
						<span class="label-input100">Password</span>
                         <asp:TextBox ID="pass" runat="server" placeholder="Enter Password" CssClass="input100" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="pass"></asp:RequiredFieldValidator>
					</div>

                     <div class="wrap-input100 validate-input  m-b-7">
						<span class="label-input100">Re-Enter Password</span>
                         <asp:TextBox ID="repass" runat="server" placeholder="Re-Enter Password" CssClass="input100" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="pass" ControlToValidate="repass"></asp:CompareValidator>
					</div>
                    <div class="wrap-input100 validate-input  m-b-10">
						<span class="label-input100">Contact</span>
                         <asp:TextBox ID="contact" runat="server" placeholder="Contact" CssClass="input100" TextMode="Number" ></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-20">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

					</div>
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="login100-form-btn" OnClick="Button1_Click"/>  
					</div>
				</form>
            <asp:Label ID="Label1" runat="server"></asp:Label>
			</div>
		</div>
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
	<script src="js/main.js"></script>
</body>
</html>
