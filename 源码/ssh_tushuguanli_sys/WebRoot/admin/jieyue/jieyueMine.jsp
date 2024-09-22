<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<script type="text/javascript" src="<%=path %>/js/public.js"></script>
		
        <script language="javascript">
            function xujie(id)
            {
                var strUrl = "<%=path %>/admin/jieyue/xujie.jsp?id="+id;
                window.location.href=strUrl;
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="20" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">借书证</td>
					<td width="10%">图书</td>
					<td width="10%">借阅时间</td>
					
					<td width="10%">应还时间</td>
					<td width="10%">是否归还</td>
					<td width="10%">归还时间</td>
					<td width="10%">罚金</td>
					
					
					<td width="10%">备注信息</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.jieyueList" id="jieyue" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.userJiehao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.book.bookName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#jieyue.jieyueShijian"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.yinghuanShijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.shifouhuan"/>
					    &nbsp;&nbsp;
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.guihuanShijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.fajin"/>
					</td>
					
					
					
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#jieyue.beizhu"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:if test='#jieyue.shifouhuan=="否"'>
						    <input type="button" value="续借" style="width: 50px;" onclick="xujie(<s:property value="#jieyue.id"/>)"/>
						</s:if>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
