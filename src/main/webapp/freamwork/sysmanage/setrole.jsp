<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>设置角色</title>
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

</head>
<body>
	<div class="panel panel-default bk-bg-white">
		<div class="panel-heading bk-bg-white">
			<h6>
				<i class="fa fa-table red"></i><span class="break"></span>设置角色
			</h6>
			</div>
			<div class="panel-body">
				<form id="form" action="modifyUserRole" method="post"
					class="form-horizontal " onsubmit="return check(this)">
					<div class="form-group" style="display: none;">
						<label class="col-sm-3 control-label" for="input-normal">用户id</label>
						<div class="col-sm-6">
							<input type="text" id="userid" name="userid" value="${userid}" readonly="readonly"
								class="form-control"  />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="input-normal">用户名</label>
						<div class="col-sm-6">
							<input type="text" id="username" name="username" value="${username}" readonly="readonly"
								class="form-control"   />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label" for="input-normal">角色类型</label>
						<div class="col-sm-6" style="padding-top: 5px">
							<select name="typeid">
								<option selected="selected">请选择角色类型</option>
								<c:forEach var="rolelist" items="${rolelist}">
									<option value="${rolelist.typeid}">${rolelist.typename}</option>
								</c:forEach>
							</select>
						</div>
					</div> 
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