<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="../../common.jsp"%> --%>
	<div class="container" style="margin-left: 0px;width: 20%;">
		<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseOne">
						商品管理
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item  active" ><a href="${contextPath}/store/manager/product/edit.do" >添加商品</a></li>
<!-- 						<li class="list-group-item" ><button type="button" myid="" class="btn btn-link addbtn">添加商品</button> </li> -->
						<li class="list-group-item" ><a href="${contextPath}/store/manager/product/list.do" >管理商品</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productParameter/list.do" >管理商品参数</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productCategory/list.do" >管理商品分类</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productLabel/list.do" >管理商品标签</a></li>
						</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseTwo">
						网站页面管理
					</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item" >首页图片更新</li>
						<li class="list-group-item">首页文字更新</li>
						<li class="list-group-item">图像的数量</li>
						<li class="list-group-item">24*7 支持</li>
						<li class="list-group-item">每年更新成本</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</div>


