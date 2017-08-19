<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>新增用户</title>
<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/skycons/css/skycons.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/vendor/css/pace.preloader.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootkit/css/bootkit.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker3.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker-theme.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css"
	rel="stylesheet" />
	<link href="${pageContext.request.contextPath }/assets/css/style.css"
	rel="stylesheet" />
<script type="text/javascript">
	function check(form) {
		if (form.username.value == '') {
			alert("请输入用户帐号!");
			form.username.focus();
			return false;
		}
		if (form.userpassword.value == '') {
			alert("请输入登录密码!");
			form.userpassword.focus();
			return false;
		}
		if (form.userpassword.value.length<6) {
			alert("请输入长度为6-12位密码");
			form.userpassword.focus();
			return false;
		}
		/* if (form.asid.value == "请选择机构名称") {
			alert("请选择机构名称!");
			form.asid.focus();
			return false;
		} */
		var name = document.getElementById("username").value;
		var xmlhttp;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("POST", "../sm/unique_username?name=" + name, true);
		xmlhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xmlhttp.send(null);
		var temp = false;
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var result = xmlhttp.responseText;
				alert(result);
				if (result == 'unique') {
					form.submit();
				} else if (result == 'notunique') {
					alert("用户名已存在,请再次输入");
					temp = false;
				} else {
					temp = false;
				}
			}
		}
		return temp;
	}
</script>
</head>
<body>
	<div class="panel panel-default bk-bg-white">
		<div class="panel-heading bk-bg-white">
			<h6>
				<i class="fa fa-table red"></i><span class="break"></span>新增用户
			</h6>
			</div>
			<div class="panel-body">
				<form id="form" action="insertUser" method="post"
					class="form-horizontal " onsubmit="return check(this)">
					<div class="form-group">
						<label class="col-sm-3 control-label" for="input-normal">用户名</label>
						<div class="col-sm-6">
							<input type="text" id="username" name="username"
								class="form-control" placeholder="用户名" maxlength="30"
								onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label" for="input-normal">密码</label>
						<div class="col-sm-6">
							<input type="password" id="passwd" name="userpasswd"
								class="form-control" placeholder="密码" maxlength="12"
								onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" />
						</div>
					</div>
<%-- 
					<div class="form-group">
						<label class="col-sm-3 control-label" for="input-normal">所属机构</label>
						<div class="col-sm-6" style="padding-top: 5px">
							<select name="asid">
								<option selected="selected">请选择机构名称</option>
								<option value="0">本OP系统</option>
								<c:forEach var="aslists" items="${requestScope.aslist}">
									<option value="${aslists.asid}">${aslists.as_name}</option>
								</c:forEach>
							</select>
						</div>
					</div> --%>
					<div class="form-group">
						<div class="col-sm-12" align="center">
							<input type="submit" value="提交">
							<!-- <button onclick="return add()">提交</button> -->
							<input onclick="javascript:history.back()" type="button"
								value="返回">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/js/jquery-2.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/skycons/js/skycons.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/js/pace.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/core.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/pages/form-elements.js"></script>
</body>
</html>