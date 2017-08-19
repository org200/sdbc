<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="assets/css/common.css"/>
  <link rel="stylesheet" href="assets/css/style2.css">
  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/jquery.SuperSlide.js"></script> 
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
       $(".scroll").hide();
       var pos = $(".sideMenu ul:visible").position().top-38;
       $('.sideMenu').animate({top:-pos});
       $('.sideMenu').hide();
    }else{
       $(".scroll").show();
       $('.sideMenu').animate({top:0});
       n=1;
    } 
  }   

/*  var n=1;
function menuScroll(num){
  var Scroll = $('.sideMenu');
  var ScrollP = $('.sideMenu').position();
  /* alert(n);
  alert(ScrollP.top); */
  /* if(num==1){
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
} */
function dd(name,id){
	if($("#"+name+" "+"*").is(":hidden")==true){
		$("#"+name+" "+"*").show();
	}else {
		$("#"+name+" "+"#gg").hide();
	
	}
} 
  </script>
  <title></title>
</head>
<body>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
       
         <c:forEach items="${sessionScope.menuP_list}" var="menuP">
         <div id="${menuP.name}">
         <h3 onclick="dd('${menuP.name}','${menuP.mid}')">${menuP.name}</h3>
             <ul id="gg">
         <c:forEach items="${sessionScope.menuS_list}" var="menuS"> 
           <c:if test="${menuS.pId == menuP.mid}">
              <li><a href="${menuS.url}" target="right">${menuS.name}</a></li>
           </c:if>
         </c:forEach>
           </ul> 
       </div>
        </c:forEach>
       
       </div>
    </div>
</body>
</html>