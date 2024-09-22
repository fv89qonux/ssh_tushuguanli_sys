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
           function jieyueDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/jieyueDel.action?id="+id;
               }
           }
           
           function jieyueAdd()
           {
                 var url="<%=path %>/admin/jieyue/jieyueAdd.jsp";
				 window.location.href=url;
           }
           
           function huanshu(id)
           {
                 var url="<%=path %>/huanshu.action?id="+id;
				 window.location.href=url;
           }
           
           function userDetail(userId)
           {
                 var url="<%=path %>/userDetail.action?userId="+userId;
                 var ret = window.open(url,"","dialogWidth:900px; dialogHeight:300px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
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
					    <s:if test='#jieyue.shifouhuan=="否"'>
					        <a href="#" style="color: red;font-family: 微软雅黑;font-size: 10px;" onclick="huanshu(<s:property value="#jieyue.id"/>)">还书</a>
					    </s:if>
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
						<input type="button" value="删除" onclick="jieyueDel(<s:property value="#jieyue.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 11px;">
			  <tr>
			    <td>
			      <input type="button" value="添加借阅信息" style="width: 120px;" onclick="jieyueAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
