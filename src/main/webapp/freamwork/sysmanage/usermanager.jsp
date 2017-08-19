<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户列表</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/assets/ico/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath }/assets/ico/apple-touch-icon.png" />

<!-- start: CSS file-->

<!-- Vendor CSS-->

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
	href="${pageContext.request.contextPath }/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet" />
<!-- Plugins CSS-->
<link
	href="${pageContext.request.contextPath }/assets/plugins/bootkit/css/bootkit.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/select2/select2.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/jquery-datatables-bs3/css/datatables.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link
	href="${pageContext.request.contextPath }/assets/css/jquery.mmenu.css"
	rel="stylesheet" />

<!-- Page CSS -->
<link href="${pageContext.request.contextPath }/assets/css/style.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/css/add-ons.min.css"
	rel="stylesheet" />
<script type="text/javascript">
	function get() {
		var inputname = document.getElementById("inputname").value;
		var status = document.getElementById("status").value;
		if (inputname == "" && status == "") {
			/* alert("未输入搜索的内容，将显示全部用户"); */
		} else if (inputname == "") {
			/* var inputname = "null"; */
		}
		window.location.href = "search?name=" + inputname + "&status=" + status;
	}
	function freeze(id){
		if(window.confirm("确认要冻结吗？")){
			window.document.location.href = "freezeuser?userid="+id; 
		} 
	}
	function unfreeze(id){
		if(window.confirm("确认要解除冻结状态吗？")){
			window.document.location.href = "unfreezeuser?userid="+id; 
		} 
	}
	function del(id){
		if(window.confirm("确认要删除吗？")){
			window.document.location.href = "deleteUser?userid="+id; 
		} 
	}
	function giverole(id){
		
			window.document.location.href = "setRole?userid="+id; 
		
	}
	
	function reset(id){
		if(window.confirm("确认要重置密码吗？")){
			var xmlhttp;
			if (window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			} else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.open("POST", "../sm/resetuser?userid=" + id, true);
			xmlhttp.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");
			xmlhttp.send(null);
			var temp = false;
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					var result = xmlhttp.responseText;
					if (result == 'unique') {
						form.submit();
					} else if (result == 'notunique') {
						alert("密码已重置成功,重置后的密码为123456");
						temp = false;
					} else {
						temp = false;
					}
				}
			}
			return temp;
		} 

		
	}

</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="panel panel-default bk-bg-white">
				<div class="panel-heading bk-bg-white">
					<h6>
						<i class="fa fa-table red"></i><span class="break"></span>用户列表
					</h6>
				</div>
		
			
<%-- 				<div style="margin-top: 20px" class="col-sm-12">
					<div class="col-sm-3">
					<span>状态：</span>	<select id="status">
							<c:if test="${usersearchstatus=='' }">
								<option value="">全部</option> 
								<option value="0">冻结</option>
								<option value="1">可用</option>
							</c:if>
							<c:if test="${usersearchstatus=='0' }">
								<option value="0">冻结</option>
								<option value="">全部</option>
								<option value="1">可用</option>
							</c:if>
							<c:if test="${usersearchstatus=='1' }">
								<option value="1">可用</option>
								<option value="">全部</option>
								<option value="0">冻结</option>
							</c:if>
						</select>
					</div>
					<div class="col-sm-5">
						<span>用户名称：</span><input type="text" value="${usersearchname}"
							id="inputname"
							onKeyUp="this.value=this.value.replace(/[^\w]/g,'');"> <a
							href="javascript:void(0);" onclick="get()"> <input
							class="price-button" type="button" value="搜索">
						</a>
					</div>
					
				</div>  --%>
					<!-- <div class="col-sm-4" align="left" style="padding-bottom: 10px">
						<a href="useradd"> <input
							class="price-button" type="button" value="新增用户">
						</a>
					</div >  -->
		<!-- 		<div id="dialog"
					style="display: none; background-color: #4F404D; border: 2px; border-color: red;">
					<br> <input type="hidden" id="userid1" value=""> <br>
					<br>
					<p style="color: white" align="center">请另一位管理员确认重置密码</p>
					<br>
					<div align="center">
						用户名：<input type="text" id="adminName" name="adminName" value=""
							class="" placeholder="请输入管理员用户名"
							onKeyUp="this.value=this.value.replace(/[^\w]/g,'');"><br>
						<br> <br> 密&nbsp;&nbsp;码：<input type="password"
							id="adminPass" name="adminPass" value="" class=""
							placeholder="请输入密码"
							onKeyUp="this.value=this.value.replace(/[^\w]/g,'');"><br>
						<br> <span id="tip2" style="color: red"> </span> <br>
						<button onclick="resetPass()">确认重置</button>
						<a href="usermanager"><button>取消</button></a>
					</div>

				</div> -->
				
				<div class="panel-body">
					<div class="row">
										<div class="col-sm-6">
											<div class="bk-margin-bottom-10">
												<a href="useradd"><button  class="btn btn-info">新增用户</button></a>
											</div>
										</div>
					</div>
					<table class="table table-bordered table-striped" id="datatable-default" style="table-layout: fixed">
						<thead>
							<tr>
								<th style="display: none;">序号</th>
								<th>用户名</th>
								<th>所属机构</th>
								<th>状态</th>
								<th>角色类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="users" items="${userlist}">

						
								<%-- <c:if test="${users.username!='admin'&&users.username!='admin2'&&users.username!='reg'}"> --%>
									<tr>
										<td style="display: none;">${users.userid}</td>
										<td>${users.username}</td>
										<td>${users.bank_id}</td>
										<td><c:if test="${users.status==0 }">
												<span style="color: #FF0000">冻结</span>
											</c:if> <c:if test="${users.status==1 }">
												<span style="color: #308014">可用</span>
											</c:if>
										</td>
										<td>
										${users.typename}
										</td>
										<td>
										<c:if test="${users.status==1}">
										<input type="button" style="color: #428BCA" value="冻结" onclick="freeze(${users.userid})"> 
										<input type="button" style="color: #428BCA" value="重置" onclick="reset(${users.userid})"> 
										<input type="button" style="color: #428BCA" value="设置角色" onclick="giverole(${users.userid})"> 
										<input type="button" style="color: #428BCA" value="删除" onclick="del(${users.userid})"> 
										
										</c:if>
											<c:if test="${users.status==0}">
												<input type="button" style="color: #428BCA" value="解冻" onclick="unfreeze(${users.userid})">
												<input type="button" style="color: #428BCA" value="重置" onclick="reset(${users.userid})">
												<input type="button" style="color: #428BCA" value="设置角色" onclick="giverole(${users.userid})"> 
												<input type="button" style="color: #428BCA" value="删除" onclick="del(${users.userid})">
											</c:if></td>
									</tr>
						<%-- 		</c:if>	 --%>					
							</c:forEach>
						</tbody>
					</table>
					<div>
	<%-- 							<table align="right">
							<tr>
								<td colspan="6" align="right">共${page.totalRecords}条记录
									${page.pageNo}/${page.totalPages}页 <br> <a
									href="${path}/user/next?pageNo=${page.topPageNo}"><input
										type="button" name="fristPage" value="首页"
										style="color: #20A8D8" /> </a> <c:choose>
										<c:when test="${page.pageNo!=1}">

											<a href="${path}/user/next?pageNo=${page.previousPageNo}"><input
												type="button" name="previousPage" value="上一页"
												style="color: #20A8D8" /></a>

										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="previousPage"
												value="上一页" />

										</c:otherwise>
									</c:choose> <c:choose>
										<c:when test="${page.pageNo != page.totalPages}">
											<a href="${path}/user/next?pageNo=${page.nextPageNo }"><input
												type="button" name="nextPage" value="下一页"
												style="color: #20A8D8" /></a>
										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="nextPage"
												value="下一页" />

										</c:otherwise>
									</c:choose> <a href="${path}/user/next?pageNo=${page.bottomPageNo }"><input
										type="button" name="lastPage" value="尾页"
										style="color: #20A8D8" /></a>
								</td>
							</tr>
						</table> --%>
					</div>
				</div>
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

	<!-- Plugins JS-->
	<script
		src="${pageContext.request.contextPath }/assets/plugins/moment/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/select2/select2.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/jquery-datatables-bs3/js/datatables.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	<!-- Theme JS -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script
		src="${pageContext.request.contextPath }/assets/js/pages/table-advanced.js"></script>
</body>
</html>