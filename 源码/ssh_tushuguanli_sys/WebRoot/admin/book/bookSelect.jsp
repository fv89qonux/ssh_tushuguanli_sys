<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.cookie.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />

<script language="javascript">
            function a(id,bookName)
            {
                 var str=new Array(2);
              
                 bid = id;
                 bname = bookName;
                 $.cookie('id', id);
                 $.cookie('name', bookName);
				 //这边也可以不用cookie，直接用函传值就行
                 if(window.opener) {
                	 window.opener.setValue();
                 }
           		 window.close();
            }
        </script>
</head>

<body style="margin: 0px;">
	<table width="100%" border="0" cellpadding="2" cellspacing="1"
		bgcolor="#D1DDAA">
		<tr bgcolor="#E7E7E7">
			<td height="14" colspan="41" background="<%=path %>/img/tbg.gif"
				align="center" style="color: red; font-family: 微软雅黑">点击图书名称即可选择</td>
		</tr>
		<tr align="center" bgcolor="#FAFAF1" height="22">
			<td width="4%">序号</td>
			<td width="15%">名称</td>
			<td width="10%">作者</td>
			<td width="15%">出版社</td>

			<td width="10%">出版日期</td>
			<td width="10%">书号</td>
		</tr>
		<c:forEach items="${requestScope.bookList}" var="book" varStatus="ss">
			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">${ss.index+1}</td>
				<td bgcolor="#FFFFFF" align="center"><a href="#"
					onclick="a('${book.bookId}','${book.bookName}')"
					style="color: green; font-family: 微软雅黑; font-size: 15px;">${book.bookName}</a>
				</td>
				<td bgcolor="#FFFFFF" align="center">${book.bookZuozhe}</td>
				<td bgcolor="#FFFFFF" align="center">${book.bookChubanshe}</td>


				<td bgcolor="#FFFFFF" align="center">${book.bookChubanriqi}</td>
				<td bgcolor="#FFFFFF" align="center">${book.bookIsbm}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
