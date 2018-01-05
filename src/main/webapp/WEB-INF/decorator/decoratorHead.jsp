<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html> -->
<!-- <head> -->

<style type="text/css">
.biaotou {
	text-align: center;
	letter-spacing: normal;
	vertical-align: middle;
	word-spacing: normal;
	white-space: normal;
	font-family: Tahoma, Geneva, sans-serif;
	font-weight: 600;
	color: #666;
	font-size: 20px;
	line-height: 10px;
}

.title {
    position: static;
    width: 180px;
	height: 85px; 
}
.title-word{
    position: absolute;
    left: 26px;
    top: 30px;
}
.div-head{
    position: absolute;
    left: 180px;
     top: 0px; 
    width: 78%;
    height: 38px;
}

</style>

<!-- </head> -->

<!-- <body> -->
     	<div class="mydiv title">
	    	<h4 class="biaotou title-word"  >意象映射造型</h4>
	    </div>
	        	<jsp:include page="menu.jsp"/>
        <div class="mydiv div-head" >
	         工业设计云服务平台管理系统
	         <span class="pull-right">
		         当前登录：user2  
		         <span class="blue"><a href="${contextPath }/">[退出]</a></span>
	         </span>
        </div>
        <div class="mydiv div-head"style=" top: 38px; height: 47px;"></div>

		<sitemesh:write property='body'/>
<!-- </body> -->
<!-- </html> -->