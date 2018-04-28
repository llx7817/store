<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html>
<head>
<title>主页</title>
</head>
<body>
	<div class="body-position">
	 
	<!-- 	图片轮播 -->
    <div class="Box">
    	<div class="content">
    		<div class="Box_con clearfix">
    			<span class="btnl btn" id="btnl"></span>
    			<span class="btnr btn" id="btnr"></span>
    			<div class="conbox" id="BoxUl" >
	    			<ul>
							<c:forEach var="itemData" items="${baseFileList}" varStatus="status">	
								<li class="cur"><img src="${contextPath}/file/downloadFromDataBase.do?id=${itemData.id}" alt=""/></li>
							</c:forEach>
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/1.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/2.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/3.jpg" alt=""/></li> --%>
	    			
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/4.jpg" alt=""/></li> --%>
	    				
<%-- 	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/5.jpg" alt=""/></li> --%>
    				</ul>
    			</div>
    			<p class="BoxSwitch" id="BoxSwitch">
    				<span class="cur"></span>
    				<span></span>
    				<span></span>
    				<span></span>
    			</p>
    		</div>
    	</div>
    </div>
    <br>
	<div class="container">
	   <div class="row">
	   <c:forEach var="itemData" items="${productList}" varStatus="status">	
		      <div class="col-md-4">
		      <div class="box" style="width: 75%;height: 70%;">
			      <div class="panel panel-default">
			      <a  href="${contextPath}/introduction/item.do?id=${itemData.id}">
<!-- 						   <div class="box"> -->
						      <img src="${contextPath}/file/downloadFromDataBase.do?id=${itemData.productImgIds}" alt=""/>
<!-- 					        </div> -->
					<div class="panel-heading">
						<h3 class="panel-title">
							${itemData.name}
						</h3>
					</div>
					</a>
				</div>
				</div>
		      </div>
	      </c:forEach>
	   </div>
<!-- 	<ul> -->
<!-- 	<li> -->
<!-- 	</li> -->
<!-- 	</ul> -->
	</div>
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
<!-- 				Please sign in -->请登录
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
			        <button class="btn btn-lg btn-primary btn-block loginBtn" type="button "  >登录</button>
			      </form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<%-- 	 <jsp:include page="registerEdit.jsp"> --%>
<%-- <jsp:param name="item" value= ${item}/>  --%>
<%-- </jsp:include>  --%>
		 <jsp:include page="registerEdit.jsp"/>
<script type="text/javascript" src="${contextPath}/resources/js/main/lunBo.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/main/list.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/main/edit.js"></script>
<script type="text/javascript">
//修改显示框大小吧
    	//滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数
LbMove('BoxUl','btnl','btnr','BoxSwitch',true,'left',true,305,1000,5000,4);
</script>
<style type="text/css">
/* 鼠标指针悬停放大效果 */
 div img{  
    cursor: pointer;  
    transition: all 0.6s;  
}  
div img:hover{  
    transform: scale(1.2);  
}  
</style>
</body>
</html>