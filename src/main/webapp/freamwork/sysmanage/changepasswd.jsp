<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
  <head>  
   <title>密码修改</title>  
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
 		function changepasswd(){
 			var username=document.getElementById("username").value;
 			var old=document.getElementById("oldpasswd").value;
 			var newpasswd=document.getElementById("newpasswd").value;
 			var confirmnewpasswd=document.getElementById("confirmnewpasswd").value;
 			if(old==''){
		          alert("请输入旧密码");
		          return false;
		   }
 			if(newpasswd==''){
		          alert("请输入新密码");
		          return false;
		   }
 			if(confirmnewpasswd==''){
		          alert("请再次输入新密码");
		          return false;
		   }
		     if(newpasswd.length<6){
		          alert("请输入长度为6-12位密码");
		          return false;
		   }
 			if(newpasswd!=confirmnewpasswd){
 				alert("两次输入的密码不一致");
 			}else{
 				window.document.location.href = "changeoldpasswd?name="+username+"&old="+old+"&newpasswd="+newpasswd; 
 			}
 			
 		}
 		function mess(a){
 			var message=document.getElementById("mes").value;
 			if(message!=""&&message!=null){
 				alert(message);
 			}       
 			
 		} 	
 		</script>	
 </head>
 			
 			 <body onload="mess()">
   <div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h4>密码修改</h4>							
								<div class="panel-body">
									<div class="form-horizontal " >
										<div class="form-group">
											<label class="col-sm-3 control-label"  for="input-normal">用户名</label>
											<div class="col-sm-6">
												<input type="text" value="${user.username}"   id="username" readonly="readonly" class="form-control" placeholder="Normal" />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">旧密码</label>
											<div class="col-sm-6">
												<input type="password"  id="oldpasswd"  name="oldpasswd" class="form-control" placeholder="输入旧密码" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" maxlength="12"/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">新密码</label>
											<div class="col-sm-6">
												<input type="password"  id="newpasswd"  name="newpasswd" class="form-control" placeholder="输入新密码" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" maxlength="12"/>
											</div>
										</div>
											<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">确认新密码</label>
											<div class="col-sm-6">
												<input type="password"  id="confirmnewpasswd"  name="confirmnewpasswd" class="form-control" placeholder="确认新密码" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" maxlength="12"/>
											</div>
										</div>
										<div class="form-group" style="display: none;">
											<label class="col-sm-3 control-label" for="input-normal">所属机构</label>
											<div class="col-sm-6">
												<input type="text" value="${user.agency}" id=""  name="agency" class="form-control" readonly="readonly" placeholder="Normal" />
											</div>
										</div>
										<div class="form-group" style="display: none;">
											<label class="col-sm-3 control-label" for="input-normal">序号</label>
											<div class="col-sm-6">
												<input type="text" value="${user.userid}" id="apFree"  name="userid" class="form-control" onblur="freeLimit()" placeholder="Normal" />
											</div>
										</div>
												<div class="form-group" style="display: none;">
											<label class="col-sm-3 control-label" for="input-normal">状态</label>																				
											 <div class="col-sm-6" >
												<select name="status" disabled="disabled">											
  											  	<option value="0">冻结</option>
  											  	<option value="1" selected="selected">可用</option> 										
											 </select>																		
																					
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-12" align="center">
												<input type="hidden" id="mes" name="mes" value="${mes}"/>
												<button  onclick="changepasswd()">确定</button>
												<input type="button" onclick="javascript:history.back()" value="返回">
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