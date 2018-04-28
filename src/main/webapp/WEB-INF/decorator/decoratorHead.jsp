<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common.jsp"%>
<style type="text/css">
</style>

<!-- </head> -->

<!-- <body> -->
<!--      	<div class="mydiv title"> -->
<!-- 	    	<h4 class="biaotou title-word"  >112233</h4> -->
<!-- 	    </div> -->

	    <nav class="navbar navbar-inverse navbar-fixed-top">
	      <div class="container-fluid">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#">Store</a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
<!-- 	            <li><a href="#">Dashboard</a></li> -->
	            <li><a href="${contextPath}/main/list.do">商店主页</a></li>
	            <li>
		            	<a  class="" data-toggle="modal" data-target="#adModal" href="#">
<!-- 							登录/注册 -->
							管理员，你好！
					</a>
				</li>
<!-- 	            <li><a href="#">Help</a></li> -->
	          </ul>
	          <form class="navbar-form navbar-right">
	            <input type="text" class="form-control" placeholder="Search...">
	          </form>
	        </div>
	      </div>
	    </nav>
	    <jsp:include page="menu.jsp"/>

		<sitemesh:write property='body'/>
<!-- </body> -->
<!-- </html> -->