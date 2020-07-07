<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.Date,java.sql.*"%>
<html>
	<head>
		<link href="style.css" rel="stylesheet" type="text/css"/>
		<script src="imgSwitch.min.js" type="text/javascript">
		</script>	
		<script type="text/javascript">
			window.onload=function(){
				new imgSwitch("imgContainer",{Type:12,Width:577,Height:109,Pause:3000,Speed:"fast",Auto:true,Navigate:"numberic",NavigatePlace:"outer",PicturePosition:"left"})	
			}
			
		</script>		
	</head>
	<body>
		<div id="imgContainer">
			<img src="images/1.jpg"/>
			<img src="images/2.jpg"/>
			<img src="images/3.jpg"/>
			<img src="images/4.jpg"/>
			<img src="images/5.jpg"/>
			<img src="images/6.jpg"/>
			<img src="images/7.jpg"/>
		</div>
	
	</body>
</html>	