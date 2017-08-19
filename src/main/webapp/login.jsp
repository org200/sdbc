<?xml version="1.0" encoding="UTF-8" ?>
<%@ include file="../../../taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html style="background:#4682b4; " >

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>区块链管理平台</title>
	
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" charset=utf-8" />
		<!-- Import google fonts -->
       
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${path}/assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="${path}/assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="${path}/assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="${path}/assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="${path}/assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="${path}/assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="${path}/assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${path}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->
		<link href="${path}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		
		<!-- Theme CSS -->
		<link href="${path}/assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="${path}/assets/css/style.css" rel="stylesheet" />
		<link href="${path}/assets/css/add-ons.min.css" rel="stylesheet" />
		
		<style>
			footer {
				display: none;
			}
		</style>
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="${path}/assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->		
		<script>
function sumbit() {
	
	var name = document.getElementById("username").value;
	var ps = document.getElementById("userpasswd").value;
	if (name == "" || ps == "") {
		document.getElementById("tips").innerText="用户名或密码不能为空";
	} else{
		//window.document.location.href = "../login/index?username="+name+"&password="+ps;
		$("#form").submit();
	}
}
function mes() {
	var message = document.getElementById("mes").value;
	if (message != "" && message != null) {
		document.getElementById("tips").innerText=message;
	}
}

  </script>
	</head>

	<body >
		<!-- Start: Content -->
		<div class="container-fluid content">
			<div class="row" >
				<!-- Main Page -->
				<div id="content" class="col-sm-13 full">
					<div class="row">
						<div class="login-box">
							<div class="panel">
								<div class="panel-body" style="margin-top: 80px">								
									<div class="header bk-margin-bottom-20 text-center">										
										 <img src="${path}/assets/img/logo.jpg" class="img-responsive" alt=""/> 
										<h4> 联合网贷区块链管理平台</h4>
									</div>		
									<form class="form-horizontal login" action="${pageContext.request.contextPath}/login/index" method="post">
										<div class="bk-padding-left-20 bk-padding-right-20">
											<div class="form-group">
												<label>用户名</label>
												<div class="input-group input-group-icon">
													<input type="text" id="username" name="username" class="form-control bk-radius"  placeholder="用户名"/>
													<span class="input-group-addon">
														<span class="icon">
															<i class="fa fa-user"></i>
														</span>
													</span>
												</div>
											</div>											
											<div class="form-group">
												<label>密码</label>
												<div class="input-group input-group-icon">
													<input type="password"  id="userpasswd" name="userpasswd" class="form-control bk-radius"  placeholder="密码"/>
													<span class="input-group-addon">
														<span class="icon">
															<i class="fa fa-key"></i>
														</span>
													</span>
												</div>
											</div>
											<div class="row bk-margin-top-20 bk-margin-bottom-10">
												<div class="col-sm-8">
													<div class="checkbox-custom checkbox-default">
														<input id="RememberMe" name="rememberme" type="checkbox" />
														<label for="RememberMe">Remember Me</label>
													</div>
												</div>
												<div class="col-sm-4 text-right">
													<button type="submit" class="btn btn-primary hidden-xs" onclick="sumbit()">登录</button>
													<button type="submit" class="btn btn-primary btn-block btn-lg visible-xs bk-margin-top-20" onclick="sumbit()">Login</button>
												</div>
											</div>
											<div class="text-with-hr">
												<span></span>
											</div>											
											<!-- <div class="text-center bk-margin-top-10 bk-margin-bottom-30">
												<a class="btn btn-facebook bk-margin-bottom-15 bk-margin-5">Connect with <i class="fa fa-facebook"></i></a>
												<a class="btn btn-twitter bk-margin-bottom-15 bk-margin-5">Connect with <i class="fa fa-twitter"></i></a>
											</div> -->
											<!-- <p class="text-center">Don't have an account yet? <a href="page-register.html">Register!</a></p> -->
										</div>
									</form>
								</div>
							</div>
							<BR />
							<p class="text-center text-muted">  <a  title="网页模板" target="_blank">版权所有 </a> <a href="http://www.shudun.com/" target="_blank" title="模板之家"> @北京数盾信息科技有限公司</a></p>			
						</div>
					</div>			
				</div>
				<!-- End Main Page -->
			</div>
		</div><!--/container-->
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="${path}/assets/vendor/js/jquery.min.js"></script>
		<script src="${path}/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${path}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${path}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${path}/assets/vendor/skycons/js/skycons.js"></script>	
		
		<!-- Plugins JS-->
		<script src="${path}/assets/plugins/bootkit/js/bootkit.js"></script>
		
		<!-- Theme JS -->		
		<script src="${path}/assets/js/jquery.mmenu.min.js"></script>
		<script src="${path}/assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="${path}/assets/js/pages/page-login.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>