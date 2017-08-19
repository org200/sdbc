<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
function mes(){
	var message=document.getElementById("mes").value;
		if(message!=""&&message!=null){
			alert(message);
			window.location.href="";
		}else{
			    var groupmemberString=document.getElementById("checkgroups").value;
			    var groupmemberArr = new Array;
			        groupmemberArr = groupmemberString.split(",");//1,3,4,5
				var els = new Array;
			     els =document.getElementsByName("groups");//1,2,3,4,5,6,7,8,9
			    for(var i=0;i<groupmemberArr.length;i++){
			    	var asd=groupmemberArr[i];
			    	for(var j=0;j<els.length;j++){
			    		 if(asd==els[j].value){
							   els[j].setAttribute("checked", "true");
			    		} 
			    		
			    	}
			    	
			    }
		}
}
function check(){


	var typeid=document.getElementById("typeid").value;
	obj = document.getElementsByName("groups");
    check_val = [];
    for(k in obj){
        if(obj[k].checked)
        	check_val.push(obj[k].value);
    }
    var string=check_val;
   // alert(string);
   //alert(typeid);
	document.getElementById("form").action="../sm/updateResource?string="+string+"&typeid="+typeid;
    document.getElementById("form").submit();
	
}

</script>

</head>

<body onload="mes()">
	<div class="row">
	<input type="hidden" id="mes" name="mes" value="${mess}"/>
	<input type="hidden" id="typeid" name="typeid" value="${typeid}"/>
	<input type="hidden" id="checkgroups" name="checkgroups" value="${checkgroups}"/>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="panel panel-default bk-bg-white">
				<div class="panel-heading bk-bg-white">
					<h6>
						<i class="fa fa-table red"></i><span class="break"></span> 授权列表
					</h6>
				</div>
		
					<form id="form" action="${pageContext.request.contextPath}/sm/setRight" method="post" onsubmit="return check(this)">
				<div class="panel-body">
					<div class="row">



					
					    <div class="i-checks">
									<c:forEach items="${resourcelist}" var="resource">
									<c:if test="${resource.menuLevel==2}">
									<label class="checkbox-inline" style="padding-left: 40px"> 
					                <input type="checkbox" id="group" name="groups" value="${resource.mid}" > <i></i> ${resource.name}
									</label><br>
									</c:if>
								<c:if test="${resource.menuLevel!=2}">
								<label class="checkbox-inline" > 
					                <input type="checkbox" id="group" name="groups" value="${resource.mid}" > <i></i> ${resource.name}
									</label><br>
								</c:if>
								</c:forEach>
													
							</div>
									<div class="form-group">
											<div class="col-sm-4 col-sm-offset-2">
												
												<!-- <button class="btn btn-primary" onclick="insertuser()">提交</button> -->
												<input type="submit" class="btn btn-primary" value="修改">
												<input type="button" class="btn btn-primary" value="取消">
											</div>
										</div>
					<div>
	
					</div>

				</div>
				</form>
			</div>
		</div>
	</div>

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