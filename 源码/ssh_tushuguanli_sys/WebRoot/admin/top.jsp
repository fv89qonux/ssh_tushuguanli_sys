<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<html>
	<head>
		<title>top</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript">
		    function logout()
			{
			   if(confirm("确定要退出本系统吗??"))
			   {
				   window.parent.location="<%=path %>/login.jsp";
			   }
			}
	    </script>
	</head>
	  <body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH="0" MARGINHEIGHT="0" style="background-color: SteelBlue">
		<div>
	         <span style="float:left;font-size: 30px;margin-top: 40px;margin-left: 60px;color: white">
	                                      图书管理系统
	         </span>
			 <span style="float:right;font-size: 18px;margin-top: 50px;margin-right:50px;color: white">
			    <c:if test="${sessionScope.userType==0}">
					 欢迎你：管理员
			        &nbsp;&nbsp;
			        <a href="#" style="font-size: 17px;color: white;" onclick="logout()">注销系统</a>&nbsp;&nbsp;
				</c:if>
				<c:if test="${sessionScope.userType==1}">
					 欢迎你：${sessionScope.user.userRealname}
			        &nbsp;&nbsp;
			        <a href="#" style="font-size: 17px;color: white;" onclick="logout()">注销系统</a>&nbsp;&nbsp;
				</c:if>
			 </span>
	      </div>
	  </body>
</html>
