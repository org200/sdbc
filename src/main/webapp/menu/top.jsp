<?xml version="1.0" encoding="utf-8" ?>
<%@ include file="/taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%
	String username = (String) session.getAttribute("username");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="${path}/assets/css/common.css">
  <link rel="stylesheet" href="${path}/assets/css/style2.css"> 
  <script type="text/javascript" src="${path}/assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="${path}/assets/js/jquery.SuperSlide.js"></script>
  <script type="text/javascript">

  
  
  
  $(function(){
      $(".sideMenu").slide({
         titCell:"h3", 
         targetCell:"ul",
         defaultIndex:0, 
         effect:'slideDown', 
         delayTime:'500' , 
         trigger:'click', 
         triggerTime:'150', 
         defaultPlay:true, 
         returnDefault:false,
         easing:'easeInQuint',
         endFun:function(){
              scrollWW();
         }
       });
      $(window).resize(function() {
          scrollWW();
      });
  });
  function scrollWW(){
    if($(".side").height()<$(".sideMenu").height()){
       $(".scroll").show();
       var pos = $(".sideMenu ul:visible").position().top-38;
       $('.sideMenu').animate({top:-pos});
    }else{
       $(".scroll").hide();
       $('.sideMenu').animate({top:0});
       n=1;
    }
  } 

var n=1;
function menuScroll(num){
  var Scroll = $('.sideMenu');
  var ScrollP = $('.sideMenu').position();
  if(num==1){
     Scroll.animate({top:ScrollP.top-38});
     n = n+1;
  }else{
    if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
    if (ScrollP.top<0) {
      Scroll.animate({top:38+ScrollP.top});
    }else{
      n=1;
    }
    if(n>1){
      n = n-1;
    }
  }
}
  </script>
  <title></title>
</head>
<body>
    <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"><img src="${path}/assets/images/logo.png" style="width: auto;height: 80px"></img></div>
        <div id="photo_info" class="fr" >
           
          <div id="photo" class="fl" align="left" style="display: none;">
           <img src="${path}/assets/images/a.png"/>
          </div> 
   
          <div id="base_info" class="fr">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
             <div class="info_center" style="width:90%">
           <img src="${path}/assets/images/user.png"></img>
             <!-- <span id="notice" style="width:34%"> -->
            <%=username %>
              <%-- <c:if test="${sessionScope.useType==1}">
                                               审计管理员
              </c:if>
                 <c:if test="${sessionScope.useType ==2}">
                                              业务管理员 
                 </c:if>
                <c:if test="${sessionScope.useType==3}">
                                              用户管理员    
              </c:if> --%>
              	      
               </span>
               <%-- <c:if test="${sessionScope.useType ==2}">
               <br><br>
               </c:if> 
                  <c:if test="${sessionScope.useType !=2}">
               <br>
               </c:if>  --%>
               <br />
                   <a style="color: white;width: 65%;" >   
              <SCRIPT language=JavaScript>							 	
										tmpDate = new Date();
										date = tmpDate.getDate();
										month= tmpDate.getMonth() + 1 ;
										year= tmpDate.getFullYear();
										document.write(year);
										document.write("年");
										document.write(month);
										document.write("月");
										document.write(date);
										document.write("日 ");
										myArray=new Array(6);
										myArray[0]="星期日"
										myArray[1]="星期一"
										myArray[2]="星期二"
										myArray[3]="星期三"
										myArray[4]="星期四"
										myArray[5]="星期五"
										myArray[6]="星期六"
										weekday=tmpDate.getDay();
										if (weekday==0 | weekday==6)
										{
										document.write(myArray[weekday])
										}
										else
										{document.write(myArray[weekday])
										}; 
										
				 </SCRIPT></a>
               
        <%--       <c:if test="${sessionScope.useType !=2}">
              <br> 
               <a href="${pageContext.request.contextPath }/mc/user/index" target="right" style="color: white;">返回首页 </a>
              &nbsp; &nbsp; &nbsp; &nbsp;
              </c:if> --%>
             <a href="${pageContext.request.contextPath }/login/out"   target="_top" style="color: white;">退出</a>
            </div>  
          </div> 
        </div>
      </div>
</body>
</html>