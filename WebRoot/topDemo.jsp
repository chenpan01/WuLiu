<%@ page contentType="text/html; charset=gb2312"  language="java" %>
<%@ page import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<jsp:useBean id="countTime" scope="page" class="com.wy.CountTime"/>
<style type="text/css">
.cc{
width:100%;
height:50px;
background:#9ACD32;
}
.nav{

width:787px;
margin:0 auto;
position:relative;


}

*{
text-decoration: none;
padding:0;
margin:0;


}
.nav ul li{
list-style-type: none;
float:left;
height:50px;
width:120px;
background:#9ACD32;
line-height:50px;
text-align: center;

}

*{
color:black;
}


.nav ul li:hover{
background:#EEC900;
}
.nav ul li ul li{
display:none;
}
.nav ul li:hover ul{
background: gray;
position: absolute;

}
.nav ul li:hover ul li{
display:block;
width:120px;
clear:both;


}
.nav ul li:hover ul li:hover{
background:#EEC900;
}
.b {

width:796px;
height:80px;
margin:0 auto;

}

.demo{
height:100px;
background-image: url("image/top_1.png");

}
.top_2{
width:800px;
margin:0 auto;

}
.ab,span{

font-size:large ;
font-weight: bold;

}
</style>	
 <%=countTime.currentlyTime()%>
<div class="demo"> <div class="top_2" ><img src="image/top_2.png"/></div></div>
<div class="cc">
   <div class="nav" >
         <ul>
             <li>  <a href="index.jsp" class="ab" >本站首页</a></li>
              <li> <a href="active_select.jsp" class="ab">物流动态</a></li>
              <li><span>信息查询</span>
                      <ul>
                           <li> <a href="goods_select.jsp" class="ab">货物信息</a></li>
                           <li> <a href="car_select.jsp" class="ab">车辆信息</a></li>
                           <li> <a href="enterprise_select.jsp" class="ab">企业信息</a></li>
                      </ul>
                </li>
               <li><a href="knowledge_select.jsp" class="ab">物流知识</a></li>
              <li> <a href="tool_assistant.jsp" class="ab">辅助工具</a></li>
             <li>  <a href="logout.jsp" class="ab">退出</a></li>
         </ul>
  </div>
  </div>
  			
  <!-- 
	<div class="c"><img src="image/6.jpg"></div>
   -->