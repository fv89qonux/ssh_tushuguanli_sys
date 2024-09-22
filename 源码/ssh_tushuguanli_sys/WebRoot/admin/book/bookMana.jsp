<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function bookDel(bookId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/bookDel.action?bookId="+bookId;
               }
           }
           
           function bookAdd()
           {
                 var url="<%=path %>/admin/book/bookAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="10" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="15%">名称</td>
					<td width="10%">作者</td>
					<td width="15%">出版社</td>
					
					<td width="10%">出版日期</td>
					<td width="10%">书号</td>
					<td width="10%">定价</td>
					<td width="10%">书架</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.bookList}" var="book" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${book.bookName}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${book.bookZuozhe}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${book.bookChubanshe}
					</td>
					
					
					<td bgcolor="#FFFFFF" align="center">
						${book.bookChubanriqi}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${book.bookIsbm}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${book.bookPrice}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${book.leibie.mingcheng}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="bookDel(${book.bookId})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 11px;">
			  <tr>
			    <td>
			      <input type="button" value="添加图书信息" style="width: 120px;" onclick="bookAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
