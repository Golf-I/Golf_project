<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>골프아이</title>
</head>
<body>

	<!-- header -->
	<tiles:insertAttribute name="header" /> 
	<!-- header -->


	<!-- content -->
	<tiles:insertAttribute name="body" />
	<!-- content -->


	<!-- footer -->
	<tiles:insertAttribute name="footer" />
	<!-- footer -->

</body>
</html>