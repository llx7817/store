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
		<h4 class="my-list-header">商品标签列表</h4>
<!-- 				<div class="mydiv gray-background" >商品标签列表</div>  -->
				<br>
				<!-- 					这是列表 -->
				<table id="myTable" class="table table-striped table-bordered table-hover table-text-center"></table> 
		</div>
	</div>
		<!-- 按钮触发模态框 -->
	<div class="modal fade" id="myModalDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
			<!-- 按钮触发模态框2 -->
		<div class="modal fade" id="myModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content" style="width: 65%;height: 211px;">
						<div class="mydiv gray-background "  style="width: 100%;" id="editTitle">
						</div>
						<div class="mydiv  text-center" style=" height: 130px; width: 100%;">
						<div class="text-center" style="  padding-top: 11%;">
								  <label for="productLabel_name"><span class="thick label-name">名称</span></label>
								  <div class="my-no-br-right" >
								  <input id="name"   class="form-control "  size="10"/>
								   <input id="id"  hidden/>
								  </div>
						</div> 
<!-- 				       <div class=" text-center"> -->
<!-- 							<button type="button" class="btn btn-primary deleteOK" >保存</button> -->
<!-- 								<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button> -->
<!-- 						</div> -->
						<div  style=" padding-top: 33px;" class=" text-center">
							<button type="button" class="btn btn-primary  deleteOK">确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
						</div>
				</div>
				</div>
			</div>
<script type="text/javascript" src="${contextPath}/resources/js/manager/productLabel/list.js"></script>
<script type="text/javascript">
// var contextPath="${contextPath}";
</script>
</body>
</html>