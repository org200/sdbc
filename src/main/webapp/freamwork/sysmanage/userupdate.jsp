<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
  <head>  
   <title>更新用户</title>  
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
		<script type="text/javascript">
		function check(form){
			  if(form.username.value=='') {
		          alert("用户账户不能为空");
		          form.username.focus();
		          return false;
		     }if(form.userpassword.value==''){
		          alert("登录密码不能为空");
		          form.userpassword.focus();
		          return false;
		   }
		     if(form.userpassword.value.length<6){
		          alert("请输入长度为6-12位密码");
		          form.userpassword.focus();
		          return false;
		   }
		     return true;
		}
		</script>
		</head>
 	 <body>
   <div class="panel panel-default bk-bg-white">
							<div class="panel-heading bk-bg-white">
								<h4>更新用户信息</h4>							
								<div class="panel-body">
									<form action="updateuser" method="post" class="form-horizontal "  onsubmit="return check(this)">
										<div class="form-group">
											<label class="col-sm-3 control-label"  for="input-normal">用户名</label>
											<div class="col-sm-6">
												<input type="text" value="${user.username}"   id="input-normal" name="username" class="form-control" placeholder="请输入新用户名" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" maxlength="30"/>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">密码</label>
											<div class="col-sm-6">
												<input type="password" value="${user.userpassword}" id=""  name="userpassword" class="form-control" placeholder="请输入新密码(6-12位)" onKeyUp="this.value=this.value.replace(/[^\w]/g,'');" maxlength="12"/>
											</div>
										</div>
										<div class="form-group">
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
												<div class="form-group">
											<label class="col-sm-3 control-label" for="input-normal">状态</label>
											<%-- <div class="col-sm-6">
												<input type="text" value="${user.status}" id="apFree"  name="status" class="form-control" onblur="freeLimit()" placeholder="Normal" />
											</div> --%>
											<div class="col-sm-6">
											<select name="status">  											
 												<option  value="0">冻结</option>
 												<option  value="1" selected="selected">可用</option>  								
											 </select>												
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-12" align="center">
												<input type="submit" value="确认修改"  />
												<button  onclick="javascript:history.back()" >返回</button>
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