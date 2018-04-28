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
<!-- 				<div class="mydiv gray-background" >商品列表</div>  -->
				<h4 class="my-list-header">用户列表</h4>
				<br>
				<!-- 					这是列表 -->
				<table id="myTable" class="table table-bordered table-striped table-hover"></table> 
		</div>
	</div>
		<!-- 按钮触发模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content" style=" width: 65%;">
						<div class="mydiv gray-background "  style="width: 100%;">
							警告  
						</div>
						<div class="mydiv  text-center" style=" height: 130px; width: 100%;">
							您确定需要删除吗？ 
						<div  style="padding: 28px;    text-align: right;">
							<button type="button" class="btn btn-primary  deleteOK">确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
						</div>
				</div>
				</div>
			</div>
<script type="text/javascript" src="${contextPath}/resources/js/manager/user/list.js"></script>
<script type="text/javascript">
</script>
</body>
</html>