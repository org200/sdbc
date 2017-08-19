<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


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
	href="${pageContext.request.contextPath }/assets/plugins/magnific-popup/css/magnific-popup.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/isotope/css/jquery.isotope.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css"
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

<!-- end: CSS file-->


<!-- Head Libs -->
<script
	src="${pageContext.request.contextPath }/assets/plugins/modernizr/js/modernizr.js"></script>
<title>角色分配</title>

<script>

	   function fun(typeid){
		    obj = document.getElementsByName("check");
		    check_val = [];
		    for(k in obj){
		        if(obj[k].checked)
		        	check_val.push(obj[k].value+","+typeid);
		    }
		    var string=check_val;
			document.getElementById("myForm").action="../rightmanager/updateresource?string="+string;
		    document.getElementById("myForm").submit();
		}
	   function checkAllac(obj){
		   var checkboxid=(obj.id).charAt(1)+(obj.id).charAt(2);
		   var checkOBJ = document.all(checkboxid);
		   if(checkOBJ.constructor.name=='NodeList'){
		   for(var i=0;i<checkOBJ.length;i++){
			   if(obj.checked){
			   checkOBJ[i].checked=true;
			   }else{
				   checkOBJ[i].checked=false;
			   }
		   }
		   }else{
			   if(obj.checked){
				   checkOBJ.checked=true;
				   }else{
					   checkOBJ.checked=false;
				   }
		   }
	   }
	   function checkPac(obj){
		   var status=obj.checked;
		   if(status){
			   document.getElementById('p'+obj.id).checked=true;
		   }
	   }
	   function resourceList(typeid){
		   var xmlhttp;
		   if(window.XMLHttpRequest){
			   xmlhttp=new XMLHttpRequest();
		   }else{
			   xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		   }
		   xmlhttp.onreadystatechange=function(){
			   if(xmlhttp.readyState==4&&xmlhttp.status==200){
				   var checkBoxArr=new Array();
				   checkBoxArr=eval('('+xmlhttp.responseText+')');
				  checkBoxArr=checkBoxArr.substr(1,checkBoxArr.length-2);
				  checkBoxArr=checkBoxArr.split(",");
				  checkrole("paa", checkBoxArr);
				  checkrole("pab", checkBoxArr);
				  checkrole("pac", checkBoxArr);
				  checkrole("pad", checkBoxArr);
				  checkrole("pae", checkBoxArr);
				  checkrole("paf", checkBoxArr);
				  checkrole("pag", checkBoxArr);
				  checkrole("pah", checkBoxArr);
				  checkrole("pai", checkBoxArr);
				  checkrole("aa", checkBoxArr);
				  checkrole("ab", checkBoxArr);
				  checkrole("ac", checkBoxArr);
				  checkrole("ad", checkBoxArr);
				  checkrole("ae", checkBoxArr);
				  checkrole("af", checkBoxArr);
				  checkrole("ag", checkBoxArr);
				  checkrole("ah", checkBoxArr);
				  checkrole("ai", checkBoxArr);
				 }
		   }
		   xmlhttp.open("POST","../json/getcheckbox?typeid="+typeid,true);
		   xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		   xmlhttp.send(null);
	   }
		   function checkrole(id,checkBoxArr){
				 var ce= document.all(id);
				 if(ce.constructor.name=='NodeList'){
					 for(var i=0;i<ce.length;i++){
						 for(var k=0;k<checkBoxArr.length;k++){
							 var str=checkBoxArr[k].substr(1,checkBoxArr[k].length-2);
							 if(ce[i].value==str){
								 ce[i].checked=true;
							 }
							 
						 }
					 }
				 }else{
						 for(var k=0;k<checkBoxArr.length;k++){
							 var str=checkBoxArr[k].substr(1,checkBoxArr[k].length-2);
							 if(ce.value==str){
								 ce.checked=true;
							 }
							 
						 }
			   }
		   }
</script>
</head>

<body onload="resourceList(${typeid})">

	<form id="myForm" method="post">



		<!-- Main Page -->
		<!-- Page Header -->
		<input value="${typename }" type="text" readonly="readonly" style="border: 0px">
		<div class="media-gallery">
			<div class="mg-main" style="background-color: white;">
				<div class="row mg-files" data-sort-destination
					data-sort-id="media-gallery">
					<div class="background-white"
						style="background-color: white; width: 100%; height: 360px; padding: 10px">
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h4 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="paa"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="aa">eID运营门户
										</h4>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='aa' }">
												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="aa" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="pab"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ab">服务管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ab' }">
												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ab" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" id="pac" name="check"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ac">计费管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ac' }">
												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ac" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="background-white"
						style="background-color: white; width: 100%; height: 360px; padding: 10px">
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="pad"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ad">OP接入管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ad' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ad" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>

											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="pae"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ae">AS接入管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ae' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ae" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>

											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>

						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="paf"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="af">AP接入管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='af' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="af" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>

											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<div class="background-white"
						style="background-color: white; width: 100%; height: 360px; padding: 10px">
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" id="pag" name="check"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ag">用户管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ag' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ag" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>

											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" id="pah" name="check"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ah">系统权限管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ah' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ah" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>

											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
						

						<div class="isotope-item document col-sm-6 col-md-4 col-lg-3"
							style="height: 340px; margin-bottom: 20px">
							<div class="thumbnail" style="height: 100%; width: 100%">
								<div class="thumb-preview">
									<div>
										<h5 class="mg-title bk-fg-danger">
											<input type="checkbox" name="check" id="pai"
												onchange="checkAllac(this)" class="fatherCheckboxes"
												value="ai">审计管理
										</h5>
									</div>
									<table class="table table-bordered table-striped"
										id="datatable-default">
										<c:forEach var="list2" items="${resourcelist}">
											<c:if test="${list2.pid=='ai' }">

												<tr>
													<td><input type="checkbox" name="check"
														class="checkboxes" id="ai" value="${list2.mid}"
														onchange="checkPac(this)">${list2.name}</td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
					<div class="submit btm" align="center">
						<input type="button" onclick="fun(${typeid})" value="提交">
						<input onclick="javascript:history.back()" type="button" value="返回">
					</div>
	</form>
</body>
<script type="text/javascript"></script>
</html>