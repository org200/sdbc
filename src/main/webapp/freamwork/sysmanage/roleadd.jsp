<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>角色添加</title>
 <title>新增角色</title>  
   <link href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />	
		<link href="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/css/datepicker-theme.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
			<link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet" />
<script type="text/javascript">
function check(form){
	if(form.typename.value==''){
        alert("请输入角色名称!");
        form.typename.focus();
        return false;
 }
	if(form.note.value==''){
        alert("请输入角色描述!");
        form.note.focus();
        return false;
 }
	if(form.roletype.value==''){
        alert("请输入角色类型!");
        form.roletype.focus();
        return false;
 }
 return true;
}
function mes(){
	var message=document.getElementById("mes").value;
		if(message!=""&&message!=null){
			alert(message);
		}
}
</script>
</head>
<body onload="mes()">
<input type="hidden" id="mes" name="mes" value="${mess}"/>
  <div class="panel panel-default bk-bg-white">
	<div class="panel-heading bk-bg-white">
			<h6>
				<i class="fa fa-table red"></i><span class="break"></span>新增角色
			</h6>
			</div>				
								<div class="panel-body">
									<form action="insertRole" method="post" class="form-horizontal " onsubmit="return check(this)">
										<div class="form-group">
											<label class="col-sm-3 control-label"  for="input-normal">角色名称</label>
											<!-- <div class="col-sm-6">
											<select name="typeid">
  											   <option  value="" >请选择角色类型</option>
 												<option  value="100">OP系统管理员</option>
 												<option  value="200">OP业务管理员</option>
  												<option  value="300">OP审计管理员</option>
  												<option  value="400">AS业务管理员</option>
  												<option  value="500">特殊角色</option>
											 </select>												
											</div> -->
											<div class="col-sm-6">
												<input type="text"  id=""  name="typename" class="form-control" placeholder="角色名称，例如:业务管理员，审计管理员" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" maxlength="30"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">角色描述</label>
											<div class="col-sm-6">
												<input type="text"  id=""  name="note" class="form-control" placeholder="角色描述" />
											</div>
										</div>
									<!-- 	<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">角色类型</label>
										<div class="col-sm-6" style="padding-top: 5px">
												<select name="roletype">  											
												<option value="">角色类型</option>
 												<option  value="0">本地系统管理员</option>
 												<option  value="1">AS用户</option>  								
											 </select>
											</div> 
										</div> -->

										<div class="form-group">
											<div class="col-sm-12" align="center">
												<button type="submit" value="提交" >提交</button>
												<button onclick="javascript:history.back()" value="返回">返回</button>
												<!-- <button  onclick="javascript:history.back()" >返回</button> -->
											</div>
										</div>
									</form>
								</div>					
							</div>	
			</div>						

<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/vendor/skycons/js/skycons.js"></script>	
		<script src="${pageContext.request.contextPath }/assets/vendor/js/pace.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>		
		<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/maskedinput/js/jquery.maskedinput.js"></script>
		<script src="${pageContext.request.contextPath }/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>	
		<script src="${pageContext.request.contextPath }/assets/js/jquery.mmenu.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/core.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/pages/form-elements.js"></script>	
</body>
</html>