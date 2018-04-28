<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
<title>主页</title>
</head>
<body>
	<div class="body-position">
    <br>
	<div class="mainTitle">
<!-- 	      <div class="row"> -->
<!-- 		      <div class="col-md-2"> -->
<!-- 		      <div class="box" style="width: 75%;height: 70%;"> -->
<!-- 			      <div class="panel panel-default"> -->
<%-- 			         <img class="enlarge-img" src="${contextPath}/file/downloadFromDataBase.do?id=${item.productImgIds}" alt=""/> --%>
<!-- 				</div> -->
<!-- 				</div> -->
<!-- 		      </div> -->
<!-- 		      <div class="col-md-2"> -->
<!-- 		      <div class="box" style="width: 75%;height: 70%;"> -->
<!-- 			      <div class="panel panel-default"> -->
<%-- 			     产品名称： ${item.name} --%>
<!-- 				</div> -->
<!-- 				</div> -->
<!-- 		      </div> -->
<!-- 	   </div> -->
			<div class="" style="width:40%;float:left;">
				         <img class="" style="width: 100%;height:100%;"  src="${contextPath}/file/downloadFromDataBase.do?id=${item.productImgIds}" alt=""/>
			</div>
		    <div class="" style="width: 40%;float:right;">
			     	 <div class="thick"style="  text-align: left;">  产品名称： ${item.name}</div>
					 <div id="productParameterLists"  style="  text-align: left;">
							<c:forEach var="itemData" items="${productParameterList}" varStatus="status">	
							  		<div class="thick">${itemData.name}: ${itemData.value}  </div>
<%-- 							    	<div  Parameteid="${itemData.id}"     class=""> --%>
<%-- 										     ${itemData.value} --%>
<!-- 									</div> -->
							</c:forEach>
						</div> 
			</div>
<!-- 			商品详细介绍，以图片的方式 -->
			<input id="detailIds"  value="${item.detailIds}"  hidden/>
			<div id="detailImgs" class="" style="">
			  
<!-- 			图片的位置 -->
			</div>
	</div>
	</div>
	
<script type="text/javascript" src="${contextPath}/resources/js/main/introduction/list.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
/* 鼠标指针悬停放大效果 */
.enlarge-img{  
    cursor: pointer;  
    transition: all 0.6s;  
}  
.enlarge-img:hover{  
    transform: scale(1.2);  
}  
</style>
</body>
</html>