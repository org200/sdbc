<?xml version="1.0" encoding="UTF-8" ?>
<%@ include file="../../../taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>区块链总览</title>

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

</head>

<body>
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Main Page -->
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">Peer数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">4</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">Block数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">20</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">CHANEL数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">1</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">Transaction数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">200</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">ChainCode数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">2</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12" style="width: 33%">
					<div class="panel bk-widget bk-border-off">
						<div class="panel-body bk-bg-very-light-gray">
							<h4 class="bk-margin-off-bottom bk-docs-font-weight-300">TX数目</h4>
							<i class=" glyphicon glyphicon-stats fa-3X" style="color: gold"></i>
							<div class="clearfix  bk-padding-top-10">

								<h1 class="bk-margin-off-top pull-right">1</h1>
							</div>
							<!-- <a><h6 class="text-right bk-padding-top-20 bk-margin-off">查看服务详细信息</h6></a> -->
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-body">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div
									class="tabs tabs-bottom tabs-primary bk-margin-bottom-15 bk-margin-top-15">
									<div class="tab-content bk-bg-very-light-gray">
										<div id="loaninfo" class="tab-pane active">
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div style="height: 198px">
														<table class="table table-bordered table-striped" id=""
															style="font-size: small;">
															<thead>
																<tr>
																	<th>序号</th>
																	<th>名称</th>
																	<th >版本</th>
																	<th >路径</th>
																	<th >交易数</th>
																
																</tr>
															</thead>
															<tbody>
														
														
														<%-- 		<c:forEach items="${oploglist}" var="loglists">
																	<tr class="gradeU">
																		<td>${loglists.id}</td>
																		<td></td>
																		<td class="center hidden-phone"><a
																			style="color: #4b0df2"
																			href="${pageContext.request.contextPath }/systemlog/oprequestlogdetail?biz_sequence_id=${loglists.biz_sequence_id}">${loglists.biz_sequence_id}</a></td>
																		<td>${loglists.req_time}</td>
																		<td class="center hidden-phone">认证成功</td>
																	
																	</tr>
																</c:forEach> --%>
																<tr>
																<td> 1</td>
																<td>mychaincode</td>
																<td> 1.0</td>
																<td>github.com/fabcar</td>
																<td>20</td>
																</tr>
																<tr>
																<td>2</td>
																<td>otherchaincode</td>
																<td> 1.1</td>
																<td>github.com/fabcar</td>
																<td>5</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div id="cutinfo" class="tab-pane">
											<div class="row">
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div i style="height: 198px">
														<table class="table table-bordered table-striped"
															id="datatable-default" style="font-size: small;">
															<thead>
																<tr>
																	<th>data1</th>
																	<th>data</th>
																	<th class="hidden-phone">data</th>
																	<th class="hidden-phone">data</th>
																	<th class="hidden-phone">data</th>
																	<th class="hidden-phone">data</th>
																	<th class="hidden-phone">data</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${operrorloglist}" var="errorloglist">
																	<tr class="gradeU">
																		<td>${errorloglist.id}</td>
																		<td></td>
																		<td class="center hidden-phone"><a
																			style="color: #4b0df2"
																			href="${pageContext.request.contextPath }/systemlog/oprequestlogdetail?biz_sequence_id=${errorloglist.biz_sequence_id}">${errorloglist.biz_sequence_id}</a></td>
																		<td>${errorloglist.req_time}</td>
																		<td class="center hidden-phone"><c:if
																				test="${errorloglist.result==00 }">认证成功
													</c:if> <c:if test="${errorloglist.result==01 }">参数错误
													</c:if> <c:if test="${errorloglist.result==02 }">请求错误
													</c:if> <c:if test="${errorloglist.result==03 }">认证错误
													</c:if> <c:if test="${errorloglist.result==04 }">系统错误
													</c:if></td>
																		<td class="center hidden-phone">${errorloglist.result_time}</td>
																		<td class="center hidden-phone">${errorloglist.service_time}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									<ul class="nav nav-tabs nav-right">
										<li class="active"><a href="#loaninfo" data-toggle="tab">智能合约列表</a></li>
										<li><a href="#cutinfo" data-toggle="tab">OtherList</a></li>
									</ul>
								</div>
							</div>
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