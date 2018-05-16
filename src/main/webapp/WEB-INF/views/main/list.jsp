<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
<title>主页</title>
</head>
<body>
	<div class="body-position">
	 
	<!-- 	图片轮播 -->
    <div class="Box">
    	<div class="content">
    		<div class="Box_con clearfix">
    			<span class="btnl btn" id="btnl"></span>
    			<span class="btnr btn" id="btnr"></span>
    			<div class="conbox" id="BoxUl" >
	    			<ul>
							<c:forEach var="itemData" items="${baseFileList}" varStatus="status">	
								<li class="cur"><img src="${contextPath}/file/downloadFromDataBase.do?id=${itemData.id}" alt=""/></li>
							</c:forEach>
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/1.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/2.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/3.jpg" alt=""/></li> --%>
	    			
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/4.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/5.jpg" alt=""/></li> --%>
    				</ul>
    			</div>
    			<p class="BoxSwitch" id="BoxSwitch">
    				<span class="cur"></span>
    				<span></span>
    				<span></span>
    				<span></span>
    			</p>
    		</div>
    	</div>
    </div>
    <br>
	<div class="container">
	   <div class="row">
	   <c:forEach var="itemData" items="${productList}" varStatus="status">	
		      <div class="col-md-4">
		      <div class="box" style="width: 75%;height: 70%;">
			      <div class="panel panel-default">
			      <a  href="${contextPath}/introduction/item.do?id=${itemData.id}">
<%-- 			      <a  href="${contextPath}/text/item.do?id=${itemData.id}"> --%>
<!-- 						   <div class="box"> -->
						      <img src="${contextPath}/file/downloadFromDataBase.do?id=${itemData.productImgIds}" alt="" class="img-adaptive"/>
<!-- 					        </div> -->
					<div class="panel-heading">
						<h3 class="panel-title">
							${itemData.name}
						</h3>
					</div>
					</a>
				</div>
				</div>
		      </div>
	      </c:forEach>
	   </div>
<!-- 	<ul> -->
<!-- 	<li> -->
<!-- 	</li> -->
<!-- 	</ul> -->
	</div>
	</div>
	

<%-- 	 <jsp:include page="registerEdit.jsp"> --%>
<%-- <jsp:param name="item" value= ${item}/>  --%>
<%-- </jsp:include>  --%>
<%-- 		 <jsp:include page="registerEdit.jsp"/> --%>
<script type="text/javascript" src="${contextPath}/resources/js/main/lunBo.js"></script>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/main/list.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/main/edit.js"></script> --%>
<script type="text/javascript">
//修改显示框大小吧
    	//滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数
LbMove('BoxUl','btnl','btnr','BoxSwitch',true,'left',true,305,1000,5000,4);
</script>
<style type="text/css">
/* 鼠标指针悬停放大效果 */
 div img{  
    cursor: pointer;  
    transition: all 0.6s;  
}  
div img:hover{  
    transform: scale(1.2);  
}  
</style>
</body>
</html>