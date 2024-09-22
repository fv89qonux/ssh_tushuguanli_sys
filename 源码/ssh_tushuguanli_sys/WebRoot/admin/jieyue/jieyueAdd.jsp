<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.cookie.min.js"></script>

<script language="javascript">
            // fix for deprecated method in Chrome 37
          
          </script>

<script language="javascript">
        
            function c()
            {
                if(document.formAdd.userJiehao.value=="")
                {
                    alert("请输入借书证号");
                    return false;
                }
                if(document.formAdd.bookId.value=="")
                {
                    alert("请选择图书");
                    return false;
                }
                
                document.formAdd.submit();
            }	
         
          
            function bookSelect()
	        {
	             var strUrl = "<%=path %>/bookSelect.action";
                 var ret = window.open(strUrl,"","modal:yes;dialogWidth:900px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;",setValue);
             
                
	        }    
           
 				
            function setValue(){
            	
             	$("#bookId").val($.cookie('id'));
                $("#xxx").val($.cookie('name'));
            }
           
            
        </script>

</head>

<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
	<form action="<%=path %>/jieyueAdd.action" name="formAdd" method="post">
		<table width="98%" align="center" border="0" cellpadding="4"
			cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom: 8px">
			<tr bgcolor="#EEF4EA">
				<td colspan="3" background="<%=path %>/img/wbg.gif" class='title'>&nbsp;</td>
			</tr>
			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td width="10%" bgcolor="#FFFFFF" align="right">借书证号：</td>
				<td width="90%" bgcolor="#FFFFFF" align="left"><input
					type="text" name="userJiehao" size="50" /></td>
			</tr>
			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td width="10%" bgcolor="#FFFFFF" align="right">图书选择：</td>
				<td width="90%" bgcolor="#FFFFFF" align="left"><input
					type="text" name="xxx" id="xxx" size="50"value="" readonly="readonly" /> <input
					type="hidden" name="bookId" id="bookId" size="60" /> <input
					type="button" value="选择" onclick="bookSelect()" /></td>
			</tr>
			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td width="10%" bgcolor="#FFFFFF" align="right">借阅时间：</td>
				<td width="90%" bgcolor="#FFFFFF" align="left"><input
					name="jieyueShijian" readonly="readonly" class="Wdate" size="50"
					type="text"
					value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>" />
				</td>
			</tr>
			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td width="10%" bgcolor="#FFFFFF" align="right">应还时间：</td>
				<td width="90%" bgcolor="#FFFFFF" align="left"><input
					name="yinghuanShijian" readonly="readonly" class="Wdate" size="50"
					type="text"
					value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date(new Date().getTime()+10*24*60*60*1000)) %>" />
				</td>
			</tr>

			<tr align='center' bgcolor="#FFFFFF"
				onMouseMove="javascript:this.bgColor='red';"
				onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td width="10%" bgcolor="#FFFFFF" align="right">&nbsp;</td>
				<td width="90%" bgcolor="#FFFFFF" align="left"><input
					type="button" value="提交" onclick="c()" />&nbsp; <input type="reset"
					value="重置" />&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>
