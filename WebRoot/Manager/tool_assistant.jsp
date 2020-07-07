<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>assistant</title>
</head>
<script src="road.js"></script>
<script src="number.js"></script>
<body><jsp:include page="mtop.jsp"/>

<table width="785" height="500" border="0" align="center" cellpadding="0" cellspacing="0" class="wenbenkuang">
	<tr>
		<td colspan="2" valign="top">
		 	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		 		<tr>
            		<td width="100%" height="12" valign=top></td>
          		</tr>
          		<tr>
           	 		<td width="100%" height="12" align=center valign=top bgcolor="#ffcc99"> 辅 助 工 具</td>
          		</tr>
          		<tr>
            		<td height="12">&nbsp;			</td>
          		</tr>
				<tr>
            		<td height="404" align="center">
						<table width="590" height="372" border="0" cellpadding="0" cellspacing="0">
              				<tr>
                				<td height="20" bgcolor="#efefef">
									<div align="center">车牌号码的所属地区查询</div>							  </td>
              				</tr>
							<tr>
                				<td height="162">
									<div align="center">
										<form name="form10" method="post" action="">
                  						<table width="394" height="84" border="0" cellpadding="0" cellspacing="0">
                    						<tr>
                      							<td width="148" height="30">
													<div align="right">省、市、自治区：</div>
												</td>
                      							<td width="48"><select name="country">
                      							  <option value="黑" selected>黑</option>
                      							  <option value="吉">吉</option>
                      							  <option value="辽">辽</option>
                      							  <option value="京">京</option>
                      							  <option value="津">津</option>
                      							  <option value="晋">晋</option>
                      							  <option value="蒙">蒙</option>
												  <option value="冀">冀</option>
												  <option value="渝">渝</option>
												  <option value="沪">沪</option>
                    							  </select>
</td>
                    						    <td width="84"><div align="right">代号：</div></td>
                    						    <td width="114"><select name="city">
                    						      <option value="A" selected>A</option>
                    						      <option value="B">B</option>
                    						      <option value="C">C</option>
                    						      <option value="D">D</option>
                    						      <option value="E">E</option>
                    						      <option value="F">F</option>
                    						      <option value="G">G</option>
                    						      <option value="H">H</option>
                    						      <option value="I">I</option>
                    						      <option value="J">J</option>
                    						      <option value="K">K</option>
                    						      <option value="L">L</option>
                    						      <option value="M">M</option>
                    						      <option value="N">N</option>
                    						      <option value="O">O</option>
                    						      <option value="P">P</option>
                    						      <option value="Q">Q</option>
                    						      <option value="R">R</option>
                    						      <option value="S">S</option>
                    						      <option value="T">T</option>
                    						      <option value="X">X</option>
                    						      <option value="Y">Y</option>
                    						      <option value="Z">Z</option>
                    						      <option value="W">W</option>
                    						      <option value="V">V</option>
                    						      <option value="U">U</option>
                  						            </select></td>
                    						</tr>
                    						<tr>
                      							<td height="25" colspan="4">
													<div align="center">
													  <input name="Submit" type="button"  class=go-wenbenkuang value="   确   认   " onClick="checkcar()">												
												  </div></td>
                   							</tr>
                    						<tr>
												<td height="29" colspan="4">
													<div align="center">
                        								<input name="answer" type="text" class=wenbenkuang size="40" disabled>
                      								</div>
												</td>
                      						</tr>
                  						</table>
                						</form>
                					</div>
								</td>
              				</tr>
              				<tr>
								<td height="19" bgcolor="#efefef">
							  <div align="center">国道与对应地区的查询</div>							  </td>
              				</tr>
              				<tr>
                				<td>
									<div align="center">
										<form name="form2" method="post" action="">
                  						<table width="347" height="84" border="0" cellpadding="0" cellspacing="0">
                    						<tr>
                      							<td width="147" height="30">
													<div align="right">请输入国道号码：</div>
												</td>
                      							<td width="200">
                        							<input type="text" name="textfield3" class=wenbenkuang>
                      							</td>
                    						</tr>
                    						<tr>
                      							<td height="25" colspan="2">
													<div align="center">
														<input type="button" name="Submit2" value="确认"  class=go-wenbenkuang onclick="road();">
														<input type="button" name="Submit3" class=go-wenbenkuang value="查看全部" 
														onclick="window.open('tool_road.jsp','','width=540,height=420,toolbar=no,location=no,status=no,menubar=no,scrollbars=yes')">
                        							</div>
												</td>
                      						</tr>
                    						<tr>
                      							<td height="29" colspan="2">
													<div align="center">
                          								<input name="textfield22" type="text" class=wenbenkuang size="50" disabled>
                      								</div>
												</td>
                    						</tr>
                  						</table>
										</form>
                					</div>
								</td>
              				</tr>
           			  </table>
					</td>
		  		</tr>
       	  </table>
		</td>
  	</tr>
</table>
<jsp:include page="down.jsp"/>
</body>
</html>
