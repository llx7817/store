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
				<div class="mydiv gray-background" >
				<c:if test="${empty item.id }">
	        		添加新商品
	        	</c:if>
	        	<c:if test="${not empty item.id }">
	        		编辑商品
	        	</c:if></div> 
				<br>
<form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/product/load/save.do"
					commandName="item" methodParam="post">
					<form:hidden path="id" />
						<br>
						<ul class="list-inline">
						<li>
						<div class="input-title-position">
								  <label for="product_name"><span class="thick label-name">商品名称</span></label>
								  <div class="my-no-br-right" >
								  <form:input path="name"   class="form-control "  size="10"/>
								  </div>
						</div> 
						</li>
						<li style=" position: relative; left: 30%;">
							<!-- 						图片上传 -->
						<div class="input-title-position">
								  <label for="product_ico"><span class="thick label-name">商品图片</span></label>
								  <div class="my-no-br-right" >
								  	<form:hidden path="productImgIds" />
<!-- 								  用来存放item   -->
								<ul class="list-inline">
								  <li><div id="filePicker">选择图片</div>
								  		  <div id="thelist" class="uploader-list " >
<!-- 								  		  图片的位置 -->
								  		  </div>  
<!-- 								     <div id="filename" ></div> -->
								   </li>
								</ul>
							</div>
							
						</div> 
						</li>
						</ul>

						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">商品分类</strong></label>
							  <div class="my-no-br-right" >
							  			       		<form:select class="form-control " style="width:280px;"  path="productCategory.id" items="${productCategoryList }" itemLabel="name" itemValue="id">
<%-- 							  			       		 <form:option value="">Please select</form:option>   --%>
							  			       		 </form:select>
<%-- 							  		 <form:textarea  class="form-control textarea-size" path="tyuyi"  /> --%>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">商品标签</strong></label>
							  <div class="my-no-br-right" >
							  	<form:select class="form-control " style="width:280px;"  path="productLabel.id" items="${productLabelList }" itemLabel="name" itemValue="id"></form:select>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">以下是商品参数</strong></label>
							  <div class="my-no-br-right" >
<%-- 							  	<form:select class="form-control " style="width:280px;"  path="productLabel.id" items="${productParameterList }" itemLabel="name" itemValue="id"></form:select> --%>
							  </div>
						</div> 
						<div id="productParameterLists">
							<c:forEach var="itemData" items="${productParameterList}" varStatus="status">	
<%-- 								<c:if test="${item.type eq 'a' }"> --%>
									<div class="input-title-position">
											  <label for="product_name"><span class="thick label-name">${itemData.name}</span></label>
											  <div class="my-no-br-right" >
<%-- 											  <form:input path="item.id"   class="form-control "  size="10"/> --%>
											  <input  myid="${itemData.id}"  productParameterDataId="${itemData.productParameterDataId}"   value="${itemData.value}" class="form-control  inputProductParameter"  size="10"/>
											  </div>
									</div> 
<%-- 								</c:if> --%>
							</c:forEach>
						</div> 
						 <br>
				        <br><br>
				       <div class=" text-center">
							<button type="button" class="btn btn-primary savebtn" >保存</button>
							<button type="reset" class="btn btn-primary cancelbtn">取消</button>
						</div>
						<br>
				      </form:form>
</div>
</div>
<script type="text/javascript" src="${contextPath}/resources/js/manager/product/edit.js"></script>
<script type="text/javascript">
var contextPath="${contextPath}";
</script>
</body>
</html>