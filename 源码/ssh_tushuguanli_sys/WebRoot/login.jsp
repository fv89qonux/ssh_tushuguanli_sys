<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<style type="text/css">
			* {overflow: hidden;font-size: 9pt;}
		</style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
		<script type="text/javascript">
		    function check1()
			{                                                                                         
			     if(document.ThisForm.userName.value=="")
				 {
				 	alert("请输入会员名");
					document.ThisForm.userName.focus();
					return false;
				 }
				 if(document.ThisForm.userPw.value=="")
				 {
				 	alert("请输入密码");
					document.ThisForm.userPw.focus();
					return false;
				 }
				 document.getElementById("indicator").style.display="block";
				 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
			}
			
			function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("账号或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        window.location.href="<%=path %>/loginSuccess.jsp";
			    }
			    
			}
		</script>
		
	</head>

	<body>
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="561" style="background: url(<%=path %>/images/lbg.gif)">
								<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td height="238"
											style="background: url(<%=path %>/images/login01.jpg)">
										</td>
									</tr>
									<tr>
										<td height="190">
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="208" height="190" style="font-size: 20px;">
													图书管理系统
													</td>
													<td width="518" style="background: url(<%=path %>/images/login03.jpg)">
														
													<form action="<%=path %>/admin/index.jsp" method="post" name="ThisForm">
														<table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td align="right" style="font-family: 微软雅黑;font-weight: 700;">
																	账号：
																</td>
																<td align="left">
																	<input type="text" name="userName" style="width: 200px;">
																</td>
															</tr>	
															<tr>
																<td align="right" style="font-family: 微软雅黑;font-weight: 700">
																	密码：
																</td>
																<td align="left">
																	<input type="text" name="userPw" style="width: 200px;">
																</td>
															</tr>	
															<tr>
																<td align="right" style="font-family: 微软雅黑;font-weight: 700">
																	类型：
																</td>
																<td align="left">
															              <select class="INPUT_text" name="userType" style="height:20px;width:200px;">
																			<option value="0">管理员</option>
										    								<option value="1">读者</option>
																		  </select>
																</td>
															</tr>	
															<tr>
																<td height="50">
																	&nbsp;
																</td>
																<td height="50">
																	<input type="button" value="登陆" style="width: 80px;" onClick="check1()">
					              									<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
																</td>
															</tr>
														</table>
													</form>
														
													</td>
													<td width="214" style="background: url(<%=path %>/images/login04.jpg)">
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="133"
											style="background: url(<%=path %>/images/login05.jpg)">&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
