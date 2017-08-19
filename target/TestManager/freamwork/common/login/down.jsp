<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<frameset  border=0 frameSpacing=0 cols="166,*" frameBorder=0 id="mainparent" >
  <frame name="left"  border="0" src="${pageContext.request.contextPath }/page/login/left.jsp" noresize/>
  <frame scrolling="auto" name="right" border="0" src="${pageContext.request.contextPath }/mc/user/index" noresize/>
</frameset>
</html>