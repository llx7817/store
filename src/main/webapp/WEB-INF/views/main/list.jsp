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
<!-- 	<div class="body-position"> -->
<input id="user"  userid="${user.id}" user_name="${user.name}"  hidden/>
	<div class="container">
	 <div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	
	<div class="carousel-inner">
		<div class="item active">
				<img src="${contextPath}/file/downloadFromDataBase?id=${baseFile_First.id}"  alt="">
			</div>
		<c:forEach var="itemData" items="${baseFileList}" varStatus="status">	
			<div class="item">
				<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.id}"  alt="">
			</div>
		</c:forEach>
<!-- 		<div class="item active"> -->
<%-- 			<img src="${contextPath}/resources/img/lunBoImg/11.png" alt="First slide"> --%>
<!-- 		</div> -->
<!-- 		<div class="item"> -->
<%-- 			<img src="${contextPath}/resources/img/lunBoImg/22.png" alt="Second slide"> --%>
<!-- 		</div> -->
<!-- 		<div class="item"> -->
<%-- 			<img src="${contextPath}/resources/img/lunBoImg/33.png" alt="Third slide"> --%>
<!-- 		</div> -->
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
<!-- 		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> -->
			<span class="arrow-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
<!-- 		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> -->
		<span class="arrow-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div> 
	<!-- 	图片轮播 -->
<!--     <div class="Box"> -->
<!--     	<div class="content"> -->
<!--     		<div class="Box_con clearfix"> -->
<!--     			<span class="btnl btn" id="btnl"></span> -->
<!--     			<span class="btnr btn" id="btnr"></span> -->
<!--     			<div class="conbox" id="BoxUl" > -->
<!-- 	    			<ul> -->
<%-- 							<c:forEach var="itemData" items="${baseFileList}" varStatus="status">	 --%>
<%-- 								<li class="cur"><img src="${contextPath}/file/downloadFromDataBase?id=${itemData.id}" alt=""/></li> --%>
<%-- 							</c:forEach> --%>
<!--     				</ul> -->
<!--     			</div> -->
<!--     			<p class="BoxSwitch" id="BoxSwitch"> -->
<!--     				<span class="cur"></span> -->
<!--     				<span></span> -->
<!--     				<span></span> -->
<!--     				<span></span> -->
<!--     			</p> -->
<!--     		</div> -->
<!--     	</div> -->
<!--     </div> -->
    <br>
	<div class="container">
	   <div class="row">
	   <c:forEach var="itemData" items="${productList}" varStatus="status">	
		      <div class="col-md-4">
		      <div class="box" style="width: 75%;height: 70%;">
			      <div class="panel panel-default">
			      <a  href="javascript:void(0);" class="item_introduction"  itemid="${itemData.id}">
<%-- 			      <a  href="${contextPath}/text/item?id=${itemData.id}"> --%>
<!-- 						   <div class="box"> -->
						      <img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}" alt="" class="img-adaptive"/>
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
<%-- <script type="text/javascript" src="${contextPath}/resources/js/main/lunBo.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/main/list.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/main/edit.js"></script> --%>
<script type="text/javascript">
if($("#user").attr("userid")!="0"){
	$("#userName").html( $("#user").attr("user_name"));
}
$(".item_introduction").on("click",function(){
	 var userid=$("#user").attr("userid");
	 var itemId=$(this).attr("itemid");
//		$.get(indexUrl, {userId:userid});
	var url= contextPath+"/introduction/item?id="+itemId;
	if(userId!="0")
		url= url+"&userId="+userid;
	window.location.href=url;
});


</script>
<style type="text/css">
/* 鼠标指针悬停放大效果 */
 div .panel img{  
    cursor: pointer;  
    transition: all 0.6s;  
}  
div .panel img:hover{  
    transform: scale(1.2);  
}  
</style>
</body>
</html>