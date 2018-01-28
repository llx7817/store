<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div class="main-body-position">
		<div class="container-position">
				<div class="">
								  <label for="product_ico"><span class="thick label-name">轮播图片</span></label>
								  <div class="my-no-br-right" >
								  	<input id="pictureIds"  value="${pictureIds}"  hidden/>
<!-- 								  用来存放item   -->
				</div>
				<ul class="list-inline">
						  <li><div id="filePicker">选择图片</div>
						  		  <div id="thelist" class="uploader-list " >
<!-- 								  		  图片的位置 -->
						  		  </div>  
						   </li>
						   <li>								  		  
						   		<button type="button" id="startUploadBtn"  class="btn btn-primary">开始上传 </button>
						   </li>
				</ul>
			</div> 
</div>
</div>
<script type="text/javascript" src="${contextPath}/resources/js/manager/picture/lunBo.js"></script>
</body>
</html>