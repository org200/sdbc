<?xml version="1.0" encoding="UTF-8" ?>
<%@ include file="../../../taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic -->
<meta charset="UTF-8" />

<title>借款模拟网贷</title>

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
}

.col-lr-1 {
	margin-left: 10px;
	margin-top: 5px;
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

		var d = document.getElementById('result');
		d.innerHTML = "借款登记请求成功";
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
							<i class="fa fa-indent red"></i>借款信息登记
							<!-- <a
								href="../lr/lend_register"><span
								style="position: absolute; right: 50px" class="label label-info">刷新</span></a> -->
						</h6>
					</div>
					<br>
					<form id="form" action="lendregister_parm" method="post"
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
								<td><div class="col-lr-1">收款账号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="collectionAccount"
											value="${collectionAccount}" name="collectionAccount">
									</div></td>
								<td><div class="col-lr-1">收款户名：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="collectionName"
											value="${collectionName}" name="collectionName">
									</div></td>
								<td><div class="col-lr-1">放款总金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="loanAmount"
											value="${loanAmount}" name="loanAmount">
									</div></td>
								<td><div class="col-lr-1">合作银行放款金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="otherLoanAmount"
											value="${otherLoanAmount}" name="otherLoanAmount">
									</div></td>
							</tr>

							<tr>
								<td><div class="col-lr-1">江苏银行放款金额：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="myLoanAmount"
											value="${myLoanAmount}" name="myLoanAmount">
									</div></td>
								<td><div class="col-lr-1">交易流水号：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="dealSequence"
											value="${dealSequence}" name="dealSequence">
									</div></td>
								<td><div class="col-lr-1">放款时间：</div></td>
								<td><div>
										<input class="col-lr-3" id="loanTimeDate" type="text"
											onClick="WdatePicker()" value="${loanTimeDate}"
											name="loanTimeDate"> <!-- &nbsp;&nbsp;	 -->
									</div></td>
								<td><div class="col-lr-1">放款结果：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="loanResult"
											value="${loanResult}" name="loanResult">
									</div></td>
							</tr>
							<tr>
								<td><div class="col-lr-1">反馈标识：</div></td>
								<td><div>
										<input class="col-lr-3" type="text" id="resultFlag"
											value="${resultFlag}" name="resultFlag">
									</div></td>
								<td><div class="col-lr-1">放款步骤：</div></td>
								<td><div>
										<%-- <input class="col-lr-3" type="text" id="loanStatus"
											value="${loanStatus}" name="loanStatus"> --%>
										<select class="col-lr-3" type="text" id="loanStatus"
											value="${loanStatus}" name="loanStatus">
											<option value="1">我行通知借款登记</option>
											<option value="2">我行核算借款登记</option>
											<option value="3">我行受理放款登记</option>
											<option value="4">他行受理放款登记</option>
											<option value="5">他行放款结果登记</option>
											<option value="6">我行反馈结果信息登记</option>
											<option value="7">我行通知核算放款结果登记</option>
											<option value="8">我行核算放款结果登记</option>
											<option value="9">我行网贷冲销登记</option>
											<option value="10">他行冲销登记</option>
											<option value="11">我行核算冲销登记</option>
										</select>
									</div></td>

							</tr>
							<tr>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td><div class="col-lr-3">&nbsp;</div></td>
								<td><div class="col-lr-1">&nbsp;</div></td>
								<td>
									<div class="col-lr-3" align="right"
										style="padding-bottom: 10px; margin-right: 10px;">
										<input class="price-button" type="submit" value="提交">
									</div> <!-- <div class="col-lr-3" align="right"
										style="padding-bottom: 10px;margin-right:10px;">
										<input class="price-button" type="button" value="提交"  onsubmit="submitMsg()">
									</div> -->
								</td>
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

							<label id="result"></label>

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