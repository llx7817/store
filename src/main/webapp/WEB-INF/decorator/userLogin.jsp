<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
	<!-- 注册模态框（Modal） -->
<div class="modal fade" id="registerModal" tabindex="0" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="width: 620px;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title form-signin-heading" id="myModalLabel">
				新用户注册
				</h4>
			</div>
			<div class="modal-body">
<!-- 			    <div class="container"> -->
<%-- 			    <form:form id="editForm"  class="editForm"  method="post"  action="${contextPath}/manager/user/load/save.do" --%>
				<form:form id="editForm"  class="editForm"  method="post"  					
					commandName="user" methodParam="post">
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
							<!-- 						图片上传 -->
						<div class="input-title-position">
								  <label for="user_ico"><span class="thick label-name">用户头像</span></label>
								  <div class="my-no-br-right" >
<%-- 								  	<form:hidden path="userIconId" /> --%>
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
							  <label for="user_name " ><strong   class="label-name">密码</strong></label>
							  <div class="my-no-br-right" >
								  <form:input path="password"   class="form-control "  size="10" type="password"/>
							  </div>
						</div> 
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
							<button type="button" class="btn btn-primary savebtn" >注册</button>
							<button type="reset" class="btn btn-primary cancelbtn">取消</button>
						</div>
						<br>
				      </form:form>
<!-- 			    </div> /container -->
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

	<!-- 模态框（Modal） -->
<!-- 	用户登录弹出框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog"  style="width: 320px;">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title form-signin-heading" id="myModalLabel">
<!-- 				Please sign in -->欢迎登录
<!-- 					 <h3 class="form-signin-heading">Please sign in</h3> -->
				</h4>
			</div>
			<div class="modal-body">
			      <form class="form-signin">
			      <div id="message" style="text-align: center;">  </div>
			        <label for="inputEmail" class="sr-only">账号</label>
			        <input type="text"  id="inputAccountNumber" class="form-control" placeholder="账号" required autofocus>
			          <br>
			        <label for="inputPassword" class="sr-only">密码</label>
			        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
			          <br>
<!-- 			        <div class="checkbox"> -->
			          <div class="">
			          <label>
			            <input type="checkbox" value="remember-me"> 记住我
						 <a  class="" data-toggle="modal" data-target="#registerModal"  id="register">
								注册新账号
						</a>
			          </label>
			        </div>
			        <button class="btn btn-lg btn-primary btn-block loginBtn"   >登录</button>
			      </form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript" src="${contextPath}/store/resources/js/decorator/userLogin/edit.js"></script>
<script type="text/javascript" src="${contextPath}/store/resources/js/decorator/userLogin/list.js"></script>
