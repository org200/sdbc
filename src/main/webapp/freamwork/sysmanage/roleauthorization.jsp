<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色授权</title>
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
<SCRIPT LANGUAGE="JavaScript">
	function  get(){
	var searchname=document.getElementById("searchname").value;
	var rolename=document.getElementById("rolename").value;
	if(searchname==null){
		searchname="";
	}

	window.location.href="find?searchname="+searchname+"&rolename="+rolename;
   }
</SCRIPT>
</head>
<body>
	
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default bk-bg-white">
					<div class="panel-heading bk-bg-white">
						<h6>
						<i class="fa fa-table red"></i><span class="break"></span>用户授权
					</h6>

					</div>
					<div style="margin-top: 20px">
						<div>
						 <div class="col-sm-3">
							 角色名称：
								<select id="rolename">
									<option value="">全部</option>
									<c:forEach var="rolelist" items="${requestScope.rolelist}">		
									<c:if test="${rolelist.typeid==role_name}">
									<option  value="${rolelist.typeid}" selected="selected">${rolelist.typename}</option>	
									</c:if>	
									<c:if test="${rolelist.typeid!=role_name}">
									<option  value="${rolelist.typeid}" >${rolelist.typename}</option>	
									</c:if>																				
  									</c:forEach>
							   </select> 
						</div>
						  <div class="col-sm-5">
							用户名：
							<input type="text" id="searchname" value="${roleusersearchname}" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');">
						 	<a href="javascript:void(0);" onclick="get()"> <input class="price-button" type="button" value="搜索">
						</a>	
						</div>
						</div>
					</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table
									class="table table-striped table-bordered bootstrap-datatable datatable">
									<thead>
										<tr>
											<th style="display: none;">序号</th>
											<th>用户名</th>
											<th>AS名称</th>
											<th>角色名称</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="users" items="${userlist}">
											<tr>
												<td style="display: none;">${users.userid}</td>
												<td>${users.username}</td>
												<td>${users.agency}</td>
												<td>
													<span style="color: #308014">${users.typename}</span>
												</td>
												<td>
												<c:if test="${users.username=='admin'||users.username=='admin2'||users.username=='reg'}">
												<span style="color: #FF0000">默认用户不可修改</span>
												<!-- <input type="button" disabled="disabled" value="设置角色"> -->
													</c:if>
													<c:if
													test="${users.username!='admin'&&users.username!='admin2'&&users.username!='reg'}">
												<a href="grant?userid=${users.userid}"><input type="button"  style="color: #428BCA" value="设置角色"></a>
													</c:if>
													</td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
								<div>
								<c:if test="${empty userlist}"><label style="color: red">查询结果为空</label></c:if>
						<table align="right">
							<tr>
								<td colspan="6" align="right">共${page.totalRecords}条记录
									${page.pageNo}/${page.totalPages}页 <br> <a
									href="${path}/rightmanager/next?pageNo=${page.topPageNo}"><input
										type="button" name="fristPage" value="首页"
										style="color: #20A8D8" /> </a> <c:choose>
										<c:when test="${page.pageNo!=1}">

											<a href="${path}/rightmanager/next?pageNo=${page.previousPageNo}"><input
												type="button" name="previousPage" value="上一页"
												style="color: #20A8D8" /></a>

										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="previousPage"
												value="上一页" />

										</c:otherwise>
									</c:choose> <c:choose>
										<c:when test="${page.pageNo != page.totalPages}">
											<a href="${path}/rightmanager/next?pageNo=${page.nextPageNo }"><input
												type="button" name="nextPage" value="下一页"
												style="color: #20A8D8" /></a>
										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="nextPage"
												value="下一页" />

										</c:otherwise>
									</c:choose> <a href="${path}/rightmanager/next?pageNo=${page.bottomPageNo }"><input
										type="button" name="lastPage" value="尾页"
										style="color: #20A8D8" /></a>
								</td>
							</tr>
						</table>
					</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/pace.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>	
		<script src="${pageContext.request.contextPath }/assets/js/jquery.mmenu.min.js"></script>

		

</body>
</html>