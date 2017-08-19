<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>操作日志</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


<!-- Favicon and touch icons -->
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
<script src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
<script language="javascript" type="text/javascript"
	src="../My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" type="text/JavaScript">
	function search() {
		var opera_name = document.getElementById("opera_name").value;
		var result = document.getElementById("result").value;
		var username = document.getElementById("username").value;
		var sen = document.getElementById("sen").value;
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
			window.location.href = "audit_search?opera_name=" + opera_name
					+ "&result=" + result + "&sen=" + sen + "&searchname="
					+ username + "&starttime=" + starttime + "&endtime="
					+ endtime;
	}
	function export_part() {
		obj = document.getElementsByName("check");
		check_val = [];
		for (k in obj) {
			if (obj[k].checked) {
				check_val.push(obj[k].value);
			}
		}
		var string = check_val;
		if (string == "") {
			alert("请选择要导出的项!");
		} else
			window.location.href = "export_audit?string=" + string;
	}
	function export_all() {
		window.location.href = "export_auditall";
	}
	function selectAll(checkbox) {
		$('input[type=checkbox]').prop('checked', $(checkbox).prop('checked'));
	}
	function skip(){
		var totalpage= ${page.totalPages}	
		var PageNum = document.getElementById("PageNum").value;
		if(PageNum>totalpage){
			PageNum=totalpage;
		}
		window.location.href = "next?pageNo="+PageNum;
	}
</script>
</head>
<body>
	<form name="myForm" method="post">
<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="panel panel-default bk-bg-white">
				<div class="panel-heading bk-bg-white">
					<h6>
						<i class="fa fa-table red"></i><span class="break"></span>操作日志列表
					</h6>
				</div>
				<div class="panel-body">

<%-- 					<div class="col-sm-12">
						<div class="col-sm-3">
							<span>操作类型：</span> 
							<select id="opera_name">
							  <option value="全部">全部</option>  
							  
							   <c:forEach var="opera" items="${operalist}">	
							   <c:if test="${opera.opera_name==operatype}">
							    <option  value="${opera.opera_name}" selected="selected">${operatype}</option>
							   </c:if>
							   <c:if test="${opera.opera_name!=operatype}">
							    <option  value="${opera.opera_name}" >${opera.opera_name}</option>
							   </c:if>
							   </c:forEach>								
							</select>
						</div>
						<div class="col-sm-3">
							<span>请求结果：</span> 
							<select id="result">
								<c:if test="${search_result=='02'}">
								   <option value="02">全部</option>
								   <option value="00">成功</option>
								   <option value="01">失败</option>
								</c:if>
								<c:if test="${search_result=='00'}">
								   <option value="00">成功</option>
								   <option value="01">失败</option>
								   <option value="02">全部</option>
								</c:if>
								<c:if test="${search_result=='01'}">
								   <option value="01">失败</option>
								   <option value="02">全部</option>
								   <option value="00">成功</option>								   
								</c:if>
							</select>
						</div>
						<div class="col-sm-3"></div>
					</div> --%>
<%-- 					<br />
					<div class="col-sm-12">&nbsp;</div>
					<div class="col-sm-12">
						<!--  &nbsp;&nbsp;&nbsp; -->

						<div class="col-sm-3">
							起始时间：<input id="starttime" type="text" onClick="WdatePicker()"
								value="${starttime}">
							<!-- &nbsp;&nbsp;	 -->
						</div>
						<div class="col-sm-3">
							结束时间：<input id="endtime" type="text" onClick="WdatePicker()"
								value="${endtime}">						
						</div>
						<div class="col-sm-3">
							用户名：<input type="text" id="username" value="${searchname}">
						</div>

						<div class="col-sm-3" align="right">
							<input class="price-button" type="button" onclick="search()"
								value="查询"> <input class="price-button" type="button"
								onclick="export_part()" value="导出"> <input
								class="price-button" type="button" onclick="export_all()"
								value="全部导出">
						</div>
					</div>
					<br />
					<div class="col-sm-12">&nbsp;</div>  --%>
					<table class="table table-bordered table-striped" id="datatable-default" style="table-layout: fixed">
						<thead>
							<tr>
<!-- 								<td width="45px"><input type="checkbox" id="SelectAll"
									onclick="selectAll(this)" /></td> -->
								<th width="45px">编号</th>
								<th >用户名</th>
								<th> 资源编号</th>
								<th>操作类型</th>
								<th >请求时间</th>					
							</tr>
						</thead>
						<c:forEach items="${loglist}" var="al">
							<tr class="gradeU">
		<%-- 						<td width="45px"><input type="checkbox" id="subcheck"
									name="check" value="${al.id}"></td> --%>
								<td width="45px">${al.id}</td>
								<td>${al.username}</td>
								<td >${al.resourceId}</td>
								<td>${al.operateType}</td>
								<td >${al.time}</td>
							
							</tr>
						</c:forEach>
					</table>
					<div>
			<%-- 		<c:if test="${empty auditlist}"><label style="color: red">查询结果为空</label></c:if> --%>
		<%-- 				<table align="right">
							<tr>
								<td colspan="6" align="right">
									
									共${page.totalRecords}条记录
									${page.pageNo}/${page.totalPages}页 
									<br>
									<input type="button" value="跳转" 	style="color: #20A8D8" onclick="skip()">
									至第&nbsp;<input type="text" id="PageNum" style="width:30px;"
									 onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}">
									页
									 <a
									href="${path}/operatemanager/next?pageNo=${page.topPageNo}"><input
										type="button" name="fristPage" value="首页"
										style="color: #20A8D8" /> </a> <c:choose>
										<c:when test="${page.pageNo!=1}">

											<a
												href="${path}/operatemanager/next?pageNo=${page.previousPageNo}"><input
												type="button" name="previousPage" value="上一页"
												style="color: #20A8D8" /></a>

										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="previousPage"
												value="上一页" />

										</c:otherwise>																			
									</c:choose> 
							
									<c:choose>
										<c:when test="${page.pageNo != page.totalPages}">
											<a
												href="${path}/operatemanager/next?pageNo=${page.nextPageNo }"><input
												type="button" name="nextPage" value="下一页"
												style="color: #20A8D8" /></a>
										</c:when>
										<c:otherwise>

											<input type="button" disabled="disabled" name="nextPage"
												value="下一页" />

										</c:otherwise>
									</c:choose> <a
									href="${path}/operatemanager/next?pageNo=${page.bottomPageNo}"><input
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
	</form>
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

	<!-- Theme JS -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.mmenu.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/core.min.js"></script>

	<!-- Pages JS -->
	<script
		src="${pageContext.request.contextPath }/assets/js/pages/table-advanced.js"></script>
</body>
</html>