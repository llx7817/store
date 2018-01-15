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
				<div class="mydiv gray-background" >添加商品</div> 
				<br>
<form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/product/load/save.do"
					commandName="item" methodParam="post">
					<form:hidden path="id" />
						<br>
						<ul class="list-inline">
						<li>
						<div class="input-title-position">
								  <label for="product_name"><span class="thick label-name">产品名称</span></label>
								  <div class="my-no-br-right" >
								  <form:input path="name"   class="form-control "  size="10"/>
								  </div>
						</div> 
						</li>
						<li style=" position: relative; left: 30%;">
							<!-- 						图片上传 -->
						<div class="input-title-position">
								  <label for="product_ico"><span class="thick label-name">产品图片</span></label>
								  <div class="my-no-br-right" >
<!-- 								  用来存放item   -->
								<ul class="list-inline">
								  <li><div id="filePicker">选择图片</div>
								  <div id="thelist" class="uploader-list " value="${filename }"></div>  
								     <div id="filename" value="${filename }"></div></li>
<!-- 								  <li> -->
<!-- 								  	<button id="startUploadBtn" class="btn filePicker btn-default">开始上传</button> -->
<!-- 								  </li> -->
								  
								</ul>
<!-- 									<div id="filePicker">选择图片</div> -->
	<!-- 								<button type="button" id="filePicker" class="btn filePicker " >选择图片</button>  -->
<!-- 									<button id="ctlBtn" class="btn btn-default">开始上传</button> -->
								  </div>
							
						</div> 
						</li>
						</ul>

						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">产品分类</strong></label>
							  <div class="my-no-br-right" >
							  			       		<form:select class="form-control " style="width:280px;"  path="productCategory.id" items="${productCategoryList }" itemLabel="name" itemValue="id">
<%-- 							  			       		 <form:option value="">Please select</form:option>   --%>
							  			       		 </form:select>
<%-- 							  		 <form:textarea  class="form-control textarea-size" path="tyuyi"  /> --%>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">产品标签</strong></label>
							  <div class="my-no-br-right" >
							  	<form:select class="form-control " style="width:280px;"  path="productLabel.id" items="${productLabelList }" itemLabel="name" itemValue="id"></form:select>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="product_name " ><strong   class="label-name">产品参数</strong></label>
							  <div class="my-no-br-right" >
<%-- 							  	<form:select class="form-control " style="width:280px;"  path="productLabel.id" items="${productLabelList }" itemLabel="name" itemValue="id"></form:select> --%>
							  </div>
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