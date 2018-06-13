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
			<h4 class="my-list-header">
	        		编辑用户订单
			</h4>
<!-- 				<div class="mydiv gray-background" > -->
<%-- 				<c:if test="${empty item.id }"> --%>
<!-- 	        		添加新用户订单 -->
<%-- 	        	</c:if> --%>
<%-- 	        	<c:if test="${not empty item.id }"> --%>
<!-- 	        		编辑用户订单 -->
<%-- 	        	</c:if></div>  --%>
				<br>
<form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/user/load/saveOrder"
					commandName="item" methodParam="post">
					<form:hidden path="id" />
						<form:hidden path="userId" />
							<form:hidden path="productId" />
								<form:hidden path="orderNumber" />
						<br>
						<div class="input-title-position">
								  <label for="user_name"><span class="thick label-name">商品数量</span></label>
								  <div class="my-no-br-right" >
								  <form:input path="number"   class="form-control "  size="10"/>
								  </div>
						</div> 
						<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">商品单价</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="productPrice"   class="form-control "  size="10" />
							  </div>
						</div> 
						<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">收货地址</strong></label>
							  <div class="my-no-br-right" >
								  <input id="address"   class="form-control "  size="10" type="password"/>
							  </div>
						</div> 
							<div class="input-title-position">
								  <label for="user_name"><span class="thick label-name">订单状态</span></label>
								  <div class="my-no-br-right" >
										<form:select class="form-control " style="width:200px;"  path="flag">
											<option value="未付款">未付款</option>
											<option value="未发货">未发货</option>
											<option value="确认收货">确认收货</option>
   											<option value="订单已完成">订单已完成</option>
						  				</form:select>
								  </div>
							</div> 
						<br>
				        <br>
				        <br>
				       <div class=" text-center">
							<button type="button" class="btn btn-primary savebtn" >保存</button>
							<button type="reset" class="btn btn-primary cancelbtn">取消</button>
						</div>
						<br>
				      </form:form>
</div>
</div>
<script type="text/javascript" src="${contextPath}/resources/js/manager/user/editOrder.js"></script>
</body>
</html>