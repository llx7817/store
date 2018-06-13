<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ include file="../../common.jsp"%> --%>
<style>
 .panel-default > .panel-heading {
    color: #333;
    background-color: #fff;
/*     border-color: #ccc; */
    border: 1px solid #ccc; 
}
.panel-group {
    /* margin-bottom: 20px; */
    border: 1px solid #ccc;
    padding: 7px;
    border-radius: 5px;
    margin-top: -24px;
}
.list-group .list-group-item {
    padding-left: 29px;
}
</style>
	<div class="container" style="margin-left: 30px;width: 20%; margin-top: 102px;">
		<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading" style=" background-color: #337ab7;">
				<h4 class="panel-title" style="color:white ;">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseOne">
						商品管理
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
<%-- 						<li class="list-group-item  active" ><a href="${contextPath}/store/manager/product/edit" >添加商品</a></li> --%>
						<li class="list-group-item  " ><a href="${contextPath}/store/manager/product/edit" >添加商品</a></li>
<!-- 						<li class="list-group-item" ><button type="button" myid="" class="btn btn-link addbtn">添加商品</button> </li> -->
						<li class="list-group-item" ><a href="${contextPath}/store/manager/product/list" >管理商品</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productParameter/list" >管理商品参数</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productCategory/list" >管理商品分类</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/productLabel/list" >管理商品标签</a></li>
						</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading " >
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseTwo">
						用户信息管理
					</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item" ><a href="${contextPath}/store/manager/user/list" >用户信息列表</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/user/edit" >增加新账号</a></li>
					
					</ul>
				</div>
			</div>
		</div>		
		<div class="panel panel-default">
			<div class="panel-heading " >
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
						网站页面管理
					</a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item" ><a href="${contextPath}/store/manager/picture/lunBo" >首页轮播图片</a></li>
						<li class="list-group-item" ><a href="${contextPath}/store/manager/picture/lunBo" >网站说明文案</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</div>


