<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<html>
    <head>
        <title>top</title>
        
        <style rel="stylesheet" type="text/css">
            TD {
				FONT-SIZE: 11px;
				color: #000000;
				border: 1pt solid #ffffff;
				border-bottom-width: 0pt;
				border-left-width: 0pt;
				font-family: "Arial", "Helvetica", "sans-serif"
			}
			*{ font-family:Microsoft Yahei; } /* 所有字体统统的事微软雅黑 */ 
			P {
				FONT-SIZE: 11px;
				color: #000000;
				font-family: "Arial", "Helvetica", "sans-serif"
			}
			
			LI {
				FONT-SIZE: 11px;
				text-decoration: none;
				color: #000000;
				font-family: "Arial", "Helvetica", "sans-serif"
			}
			
			input {
				
			}
			
			INPUT {
				FONT-SIZE: 11px;
				color: #009999;
				font-family: "Arial", "Helvetica", "sans-serif"
			}
			
			textarea {
				font-weight: normal;
				color: #009999;
			}
			
			A:link {
				COLOR: #336699;
				TEXT-DECORATION: none
			}
			
			A:visited {
				TEXT-DECORATION: none;
				color: #336699
			}
			
			select {
				
			}
			
			A:active {
				COLOR: #336699;
				TEXT-DECORATION: none
			}
			
			A:hover {
				COLOR: #33CCFF;
				TEXT-DECORATION: none
			}
			
			.bot {
				text-decoration: none;
				color: FFFFFF;
				font-size: 10px;
				font-family: verdana, arial;
				font-weight: bold;
			}
			
			.bot:hover {
				color: 000000;
			}
			
			.bot1 {
				color: D56767;
				font-size: 15px;
				font-family: Times New Roman, verdana, arial;
				font-weight: bold;
			}
			
			.bot1:hover {
				color: 3B5598;
			}
			
			.bot2 {
				color: D56767;
				font-size: 13px;
				font-family: Times New Roman, verdana, arial;
			}
			
			.bot2:hover {
				color: 3B5598;
			}
			
			.STYLE1 {
				color: #FFFFFF;
				font-weight: bold;
				font-size: 13px;
			}
			
			.tablebian {
				border-width: 1px;
				border-color: #FFFFFF;
				border-style: solid;
				border: 1px solid #ffffff;
			}
			
			.titleFont {
				color: #FFFFFF;
				font-size: 14px;
				font-weight: bold;
			}
			
			.titlefont {
				color: #FFFFFF;
				font-size: 14px;
				font-weight: bold;
				text-align: center;
			}
			
			.footbg {
				line-height: 25px;
				vertical-align: top;
			}
			
			.toptr {
				line-height: 20px;
			}
			
			.tablewhite {
				border-width: 0px;
				border-color: #FFFFFF;
				border-style: solid;
				border: 0px solid #ffffff;
			}
			
			.tablewhite td{
				font-size:14px;
				height: 25px;
			}
			
			.tdall {
				border: 0pt solid #ffffff;
				border-bottom-width: 0pt;
				border-left-width: 0pt;
				border-top-width: 0pt;
				border-right-width: 0pt;
				font-size: 14px;
				
			}
        </style>
        
        <script type="text/javascript">
             function showsubmenu(count, sid)
             {  
					var whichEl = eval("menu" + sid);
					var len = count;
					if (whichEl.style.display == "none") 
					{
						for (var i = 1; i <= len; i++) 
						{ 
							eval("menu" + i + ".style.display=\"none\";");
						}
						eval("menu" + sid + ".style.display=\"\";");
					} 
					else 
					{
						eval("menu" + sid + ".style.display=\"none\";");
				 	}
			  }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    <body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH="0" MARGINHEIGHT="0">
        <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
            <tr>
                <td background="<%=path %>/images/fon.gif" valign="top" width="153" rowspan="3" height="100%" align="center" id="frmTitle" class=tdall>
                    <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
                    	    <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 1)">
                                    <!-- showsubmenu(2, 1),2这地方，有几个菜单就写几 -->
                                    <SPAN class="STYLE1">修改登录密码</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu1" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/userinfo/userPw.jsp" target="main">修改登录密码</a>
                                                </TD>
                                            </TR>
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 2)">
                                    <SPAN class="STYLE1">类别信息管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu2" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
										<TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/catelogMana.action" target="main">类别信息管理</a>
                                                </TD>
                                            </TR>
                                        
											<TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/catelog/catelogAdd.jsp" target="main">添加类别信息</a>
                                                </TD>
                                            </TR>	
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 3)">
                                    <SPAN class="STYLE1">图书信息管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu3" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/bookMana.action" target="main">图书信息管理</a>
                                                </TD>
                                            </TR>
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/book/bookAdd.jsp" target="main">添加图书信息</a>
                                                </TD>
                                            </TR>
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/book/tongjiPre.jsp" target="main">借阅次数统计</a>
                                                </TD>
                                            </TR>
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 4)">
                                    <SPAN class="STYLE1">读者信息管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu4" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                           <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/userMana.action" target="main">读者信息管理</a>
                                                </TD>
                                            </TR> 
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/user/userAdd.jsp" target="main">添加读者信息</a>
                                                </TD>
                                            </TR> 
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 5)">
                                    <SPAN class="STYLE1">图书借阅管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu5" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/jieyueMana.action" target="main">图书借阅管理</a>
                                                </TD>
                                            </TR>
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/jieyue/jieyueAdd.jsp" target="main">添加图书借阅</a>
                                                </TD>
                                            </TR>
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 6)">
                                    <SPAN class="STYLE1">借阅须知管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu6" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/gonggaoMana.action" target="main">借阅须知管理</a>
                                                </TD>
                                            </TR>
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/gonggao/gonggaoAdd.jsp" target="main">添加借阅须知</a>
                                                </TD>
                                            </TR>
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            
                            <!-- 1111 -->
                    	    <TR style="CURSOR: hand">
                                <TD height=30 align="center" valign="bottom" background="<%=path %>/images/l1.gif" class=tdall onclick="showsubmenu(7, 7)">
                                    <SPAN class="STYLE1">书架信息管理</SPAN>
                                </TD>
                            </TR>
                            <TR>
                                <TD align="center" valign="middle" class=tdall>
                                    <TABLE cellSpacing=0 cellPadding=0 width=112 align=center id="menu7" style="DISPLAY: none; FILTER: alpha(Opacity=100); WIDTH: 158px; HEIGHT: 0px">
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/leibieMana.action" target="main">书架信息管理</a>
                                                </TD>
                                            </TR>
                                            <TR background="<%=path %>/images/but1_1.gif">
                                                <TD height=20 background="<%=path %>/images/but1_1.gif" align="center" class=tdall>
                                                    <a href="<%=path %>/admin/leibie/leibieAdd.jsp" target="main">添加书架信息</a>
                                                </TD>
                                            </TR>
                                    </TABLE>
                                </TD>
                            </TR>
                            <!-- 1111 -->
                            
                            
                            
                            
                            
                            
                            
                            
                    </TABLE>
                </td>
            </tr>
        </table>
    </body>
</html>
