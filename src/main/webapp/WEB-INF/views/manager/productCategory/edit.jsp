<%-- <%@ page language="java" contentType="text/html; UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
    <%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
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
		<h4 class="my-list-header">商品类别编辑</h4>
<!-- 				<div class="mydiv gray-background" >商品类别编辑</div>  -->
				<br>
				<!-- 					这是列表 -->
<!-- 				<table id="myTable" class="table table-bordered table-striped table-hover"></table>  -->
				<ul id="tree" ></ul>
				<input id="name" value=${item.name}  hidden/>
			  	<input id="parentProductCategoryId" value=${item.parentProductCategoryId}   hidden/>
			   	<input id="id" value=${item.id}  hidden/>
		       	<div class=" text-center" style="margin-top: 135px">
					<button type="button" class="btn btn-primary mr20 savebtn" >保存</button>
					<button type="button" class="btn btn-primary ml20 cancelbtn" >取消</button>
				</div>
		</div>
	</div>
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-easyui-1.5.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-easyui-1.5.4/locale/easyui-lang-zh_CN.js"></script>
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/jquery-easyui-1.5.4/themes/default/easyui.css"/>  
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/jquery-easyui-1.5.4/themes/icon.css"/>  
<script type="text/javascript" src="${contextPath}/resources/js/manager/productCategory/edit.js"></script>
<script type="text/javascript" >
var id=$("#id").val();
var name =$("#name").val();
var parentProductCategoryId=$("#parentProductCategoryId").val();
</script>
</body>
</html>