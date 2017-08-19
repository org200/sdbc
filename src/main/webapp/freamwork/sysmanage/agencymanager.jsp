<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>机构管理</title>
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
function del(id){
	if(window.confirm("确认要该机构吗?")){
		window.document.location.href = "deleteAgency?id="+id; 
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
						<i class="fa fa-table red"></i><span class="break"></span>机构列表
					</h6>
				</div>				
				<div class="panel-body">
					<div class="row">
										<div class="col-sm-6">
											<div class="bk-margin-bottom-10">
												<a href="agencyadd"><button  class="btn btn-info">新增机构</button></a>
											</div>
										</div>
					</div>
					<table class="table table-bordered table-striped" id="datatable-default" style="table-layout: fixed">
						<thead>
							<tr>
							<th style="display: none;">序号</th>
								<th>银行ID</th>
								<th>银行名称</th>
								<th>银行IP</th>
								<th>联系人姓名</th>
								<th>联系电话</th>
								<th>注册时间</th>
								<th>操作类型</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="agency" items="${agencylist}">
										<tr>
											<td style="display: none;">${agency.id}</td>
											<td  style="color: #308014">${agency.bankId}</td>
											<td>${agency.bankName}</td>
											<td>${agency.bankIp}</td>
											<td>${agency.connName}</td>
											<td>${agency.connPhone}</td>
											<td>${agency.regTime}</td>									
											<td>
													<a href="giveresource?typeid=${agency.id}&typename=${agency.id}">
														<input type="button" style="color: #428BCA" value="生成密钥">
													</a>												
												<input type="button" style="color: #428BCA" value="修改信息" 	onclick="del(${agency.id})">											
												<input type="button" style="color: #428BCA" value="删除机构" 	onclick="del(${agency.id})">	
											</td> 
										</tr>
									</c:forEach>
						</tbody>
					</table>
					<div>
	
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