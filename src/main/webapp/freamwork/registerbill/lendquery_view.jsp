<?xml version="1.0" encoding="UTF-8" ?>
<%@ include file="../../../taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>借款登记簿查询</title>

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	charset=utf-8 " />
<!-- Import google fonts -->


<!-- start: CSS file-->

<!-- Vendor CSS-->
<link href="${path}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${path}/assets/vendor/skycons/css/skycons.css"
	rel="stylesheet" />
<link href="${path}/assets/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Plugins CSS-->
<link href="${path}/assets/plugins/bootkit/css/bootkit.css"
	rel="stylesheet" />

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
<script language="javascript" type="text/javascript"
	src="../My97DatePicker/WdatePicker.js"></script>		
<SCRIPT type="text/javascript">
function search() {
	var args1 = document.getElementById("args1").value;
	var args2 = document.getElementById("args2").value;
	var args3 = document.getElementById("args3").value;
	var args4 = document.getElementById("args4").value;
	var starttime = document.getElementById("starttime").value;
	var endtime = document.getElementById("endtime").value;
	var start = new Date(document.getElementById("starttime").value);
	var end = new Date(document.getElementById("endtime").value);
	if ((starttime == "" && endtime != "")
			|| (endtime == "" && starttime != "")) {
		alert("请选择确定的时间段,再进行搜索!");
	} else if (start > end) {
		alert("开始时间不能大于结束时间!");
	} else
		window.location.href = "search?logtype=3&args1=" + args1
				+ "&args2=" + args2 + "&args3=" + args3 + "&args4="
				+ args4 + "&starttime=" + starttime + "&endtime="
				+ endtime;
}
</SCRIPT>		
</head>

<body>
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Main Page -->
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="panel panel-default bk-bg-white">
			<div class="panel-heading">
				<h6>
					<i class="fa fa-indent red"></i>借款登记簿查询<a
						href="../rb/lendquery"><span
						style="position: absolute; right: 50px" class="label label-info">刷新</span></a>
				</h6>
			</div>
			<br>
			<div class="col-sm-12">
						<div class="col-sm-3" style="display: none;">
							渠道号：<input type="text" id="args1" value="${args1}">
						</div>
						<div class="col-sm-3">
							总借据号：<input type="text" id="args2" value="${args2}">
						</div>
						<div class="col-sm-3">
							户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" id="args3" value="${args2}">
						</div>
					</div>
					<div class="col-sm-12">&nbsp;</div>
					<div class="col-sm-12">
						<div class="col-sm-3">
							开始时间：<input id="starttime" type="text" onClick="WdatePicker()"
								value="${starttime}">
							<!-- &nbsp;&nbsp;	 -->
						</div>
						<div class="col-sm-3">
							结束时间：<input id="endtime" type="text" onClick="WdatePicker()"
								value="${endtime}">						
						</div>
						<div class="col-sm-3">
						</div>
						<div class="col-sm-3" align="right" style="padding-bottom: 10px">
							<input class="price-button" type="button" onclick="search()"
								value="查询">
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-bordered table-striped" id="list"
							style="table-layout: fixed">
							<thead>
								<tr>
									<!-- <th>OP名称</th> -->
									<th class="hidden-phone">总借据号</th>
									<th>data2</th>
									<th class="hidden-phone">data3</th>
									<th class="hidden-phone">data4</th>
									<th class="hidden-phone">data5</th>
									<th class="hidden-phone">请求时间</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${oploglist}" var="oploglist">
									<tr>
										<%-- <td>${oploglist.id}</td> --%>
										<td
											style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;"><span
												class="tooltip-show" title="${oploglist.biz_sequence_id}"
												style="color: #4b0df2"> ${oploglist.biz_sequence_id}
											</span></td>
										<td></td>
										<td class="center hidden-phone">${oploglist.req_time}</td>
										<td class="center hidden-phone"></td>
										<td class="center hidden-phone">></td>
										<td class="center hidden-phone"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div>
						<c:if test="${empty oploglist}"><label style="color: red">查询结果为空</label></c:if>
							<table align="right">
								<tr>
									<td colspan="6" align="right">共${page.totalRecords}条记录
										${page.pageNo}/${page.totalPages}页 <br> <a
										href="next?pageNo=${page.topPageNo}&logtype=3"><input type="button"
											name="fristPage" value="首页" style="color: #20A8D8" /> </a> <c:choose>
											<c:when test="${page.pageNo!=1}">

												<a href="next?pageNo=${page.previousPageNo}&logtype=3"><input
													type="button" name="previousPage" value="上一页"
													style="color: #20A8D8" /></a>

											</c:when>
											<c:otherwise>

												<input type="button" disabled="disabled" name="previousPage"
													value="上一页" />

											</c:otherwise>
										</c:choose> <c:choose>
											<c:when test="${page.pageNo != page.totalPages&&page.totalPages!=0}">
												<a href="next?pageNo=${page.nextPageNo }&logtype=3"><input
													type="button" name="nextPage" value="下一页"
													style="color: #20A8D8" /></a>
											</c:when>
											<c:otherwise>

												<input type="button" disabled="disabled" name="nextPage"
													value="下一页" />

											</c:otherwise>
										</c:choose> 
										<c:choose><c:when test="${page.totalPages!=0}">
										<a href="next?pageNo=${page.bottomPageNo }&logtype=3"><input
											type="button" name="lastPage" value="尾页"
											style="color: #20A8D8" /></a>
										</c:when>
										<c:otherwise>
										<input type="button" disabled="disabled" name="lastPage" value="尾页"/>
										</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Page -->
		</div>
	</div>
	<!--/container-->


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