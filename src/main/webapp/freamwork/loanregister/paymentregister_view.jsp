<?xml version="1.0" encoding="UTF-8" ?>
<%@ include file="../../../taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>还款模拟网贷</title>

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

.col-lr-3 {
	margin-top: 5px;
	width: 200px;
}

.col-lr-1 {
	margin-left: 10px;
	margin-top: 5px;
	width: 120px;
}

.table-lr-1 {
	width: 100%;
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
	function check(form) {
		if (form.billNo.value == '') {
			alert("请输入总借据号!");
			form.billNo.focus();
			return false;
		}
		return true;
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
							<i class="fa fa-indent red"></i>还款信息登记
							<!-- <a
								href="../lr/lend_register"><span
								style="position: absolute; right: 50px" class="label label-info">刷新</span></a> -->
						</h6>
					</div>
					<br>
					<form id="form" action="paymentregister_parm" method="post"
						class="form-horizontal " onsubmit="return check(this)">



						<table class="table-lr-1">
							<tr>
								<td><div class="col-lr-1">总借据号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="billNo"
											value="${billNo}" name="billNo">
									</div></td>

								<td><div class="col-lr-1">合作银行借据号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="otherBillNo"
											value="${otherBillNo}" name="otherBillNo">
									</div></td>
								<td><div class="col-lr-1">我行信管借据号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="myFuseBillNo"
											value="${myFuseBillNo}" name="myFuseBillNo">
									</div></td>
								<td><div class="col-lr-1">渠道号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="channel"
											value="${channel}" name="channel">
									</div></td>
							</tr>

							<tr>
								<td><div class="col-lr-1">还款账号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="repaymentAccount"
											value="${repaymentAccount}" name="repaymentAccount">
									</div></td>
								<td><div class="col-lr-1">还款户名：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="repaymentName"
											value="${repaymentName}" name="repaymentName">
									</div></td>
								<td><div class="col-lr-1">还款总金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="repaymentAmount"
											value="${repaymentAmount}" name="repaymentAmount">
									</div></td>
								<td><div class="col-lr-1">合作银行还款金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="otherAmount"
											value="${otherAmount}" name="otherAmount">
									</div></td>
							</tr>

							<tr>
								<td><div class="col-lr-1">江苏银行还款金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="myRepaymentAmount"
											value="${myRepaymentAmount}" name="myRepaymentAmount">
									</div></td>
								<td><div class="col-lr-1">还款流水号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="repaymentSequence"
											value="${repaymentSequence}" name="repaymentSequence">
									</div></td>
								<td><div class="col-lr-1">还款时间：</div></td>
								<td><div>
										<input class="col-lr-3" id="repaymentTimeDate" type="text"
											onClick="WdatePicker()" value="${repaymentTimeDate}"
											name="repaymentTimeDate"> <!-- &nbsp;&nbsp;	 -->
									</div></td>
								<td><div class="col-lr-1">还款结果：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="repaymentResult"
											value="${repaymentResult}" name="repaymentResult">
									</div></td>
							</tr>
							<tr>

								<%-- <td><div class="col-lr-1">反馈标识：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="resultFlag"
											value="${resultFlag}" name="resultFlag">
									</div></td> --%>
								<td><div class="col-lr-1">还款步骤：</div></td>
								<td><div>
										<%-- <input class="col-lr-3" type="text" id="repaymentStatus"
											value="${repaymentStatus}" name="repaymentStatus"> --%>



										<select class="col-lr-3" type="text" id="repaymentStatus"
											value="${repaymentStatus}" name="repaymentStatus">
											<option value="21">我行发起扣款登记</option>
											<option value="22">他行发起扣款登记</option>
											<option value="23">他行扣款登记</option>
											<option value="24">我行扣款反馈信息登记</option>
											<option value="25">我行更新借据登记</option>

										</select>
									</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>

							</tr>
							<tr>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3" align="right"
										style="padding-bottom: 10px">
										<input class="price-button" type="submit" value="提交">
									</div>
									</div></td>
						</table>



					</form>

					<div class="panel-body">
						<table class="table table-bordered table-striped" id="list"
							style="table-layout: fixed">
							<tr>
								<th class="hidden-phone">登记结果</th>
							</tr>

						</table>

						<div>
							<c:if test="${empty oploglist}">
								<label style="color: red">还款登记失败</label>
							</c:if>
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