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
				<c:if test="${empty item.id }">
		        	添加新用户账号
	        	</c:if>
	        	<c:if test="${not empty item.id }">
	        		编辑用户账号
	        	</c:if>
			</h4>
<!-- 				<div class="mydiv gray-background" > -->
<%-- 				<c:if test="${empty item.id }"> --%>
<!-- 	        		添加新用户账号 -->
<%-- 	        	</c:if> --%>
<%-- 	        	<c:if test="${not empty item.id }"> --%>
<!-- 	        		编辑用户账号 -->
<%-- 	        	</c:if></div>  --%>
				<br>
<form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/user/load/save"
					commandName="item" methodParam="post">
					<form:hidden path="id" />
						<br>
						<ul class="list-inline">
						<li>
						<div class="input-title-position">
								  <label for="user_name"><span class="thick label-name">账号</span></label>
								  <div class="my-no-br-right" >
								  <form:input path="name"   class="form-control "  size="10"/>
								  </div>
						</div> 
						</li>
						<li style=" position: relative; left: 30%;">
							<div class="input-title-position">
								  <label for="user_name"><span class="thick label-name">是否管理员</span></label>
								  <div class="my-no-br-right" >
										<form:select class="form-control " style="width:200px;"  path="label">
											<option value="user">普通用户</option>
   											<option value="administrator">管理员</option>
						  				</form:select>
								  </div>
							</div> 
						</li>
						</ul>
						<ul class="list-inline">
						<li>
							<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">密码</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="password"   class="form-control "  size="10" type="password"/>
							  </div>
							</div> 
						</li>
						<li style=" position: relative; left: 30%;">
							<!-- 						图片上传 -->
						<div class="input-title-position">
								  <label for="user_ico"><span class="thick label-name">用户头像</span></label>
								  <div class="my-no-br-right" >
								  	<form:hidden path="userIconId" />
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
							  <label for="user_name " ><strong   class="label-name">再次输入密码</strong></label>
							  <div class="my-no-br-right" >
								  <input id="passwordCheck"   class="form-control "  size="10" type="password"/>
							  </div>
						</div> 
						<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">邮件地址</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="email"   class="form-control "  size="10"/>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">地址</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="address"   class="form-control "  size="10"/>
							  </div>
						</div> 	
						<div class="input-title-position">
							  <label for="user_name " ><strong   class="label-name">联系电话</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="phoneNumber"   class="form-control "  size="10"/>
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
<script type="text/javascript" src="${contextPath}/resources/js/manager/user/edit.js"></script>
</body>
</html>