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
<form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/productLabel/load/save.do"
					commandName="item" methodParam="post">
					<form:hidden path="id" />
						<br>
						<div class="input-title-position">
								  <label for="productLabel_name"><span class="thick label-name">产品名称</span></label>
								  <div class="my-no-br-right" >
								  <form:input path="name"   class="form-control "  size="10"/>
								  </div>
						</div> 
<!-- 						图片上传 -->
<!-- 						<div class="input-title-position"> -->
<!-- 								  <label for="productLabel_ico"><span class="thick label-name">产品图</span></label> -->
<!-- 								  <div class="my-no-br-right" > -->
<!-- 								  用来存放item   -->
<!-- 								     <button id="filePicker" class="btn filePicker " style=" padding: 0;">选择图片</button>  -->
<%-- 								     <div id="thelist" class="uploader-list " value="${filename }"></div>   --%>
<%-- 								     <div id="filename" value="${filename }"></div> --%>
<!-- 								  </div> -->
<!-- 						</div>  -->
						<div class="input-title-position">
							  <label for="productLabel_name " ><strong   class="label-name">产品分类</strong></label>
							  <div class="my-no-br-right" >
							  			       		<form:select class="form-control " style="width:280px;"  path="productLabelParameter.id" items="${productLabelParameterList }" itemLabel="name" itemValue="id"></form:select>
<%-- 							  		 <form:textarea  class="form-control textarea-size" path="tyuyi"  /> --%>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="productLabel_name " ><strong   class="label-name">产品标签</strong></label>
							  <div class="my-no-br-right" >
							  	<form:select class="form-control " style="width:280px;"  path="productLabelLabel.id" items="${productLabelLabelList }" itemLabel="name" itemValue="id"></form:select>
							  
<%-- 							  		 <form:textarea  class="form-control textarea-size" path="tyuyi"  /> --%>
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
<script type="text/javascript" src="${contextPath}/resources/js/manager/productLabel/edit.js"></script>
<script type="text/javascript">
var contextPath="${contextPath}";
</script>
</body>
</html>