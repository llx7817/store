<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登陆</title>
<link rel="stylesheet" href="${contextPath}/resources/js/lib/iCheck/skins/flat/blue.css" />
<style type="text/css">
.panel-body>.list-group>.list-group-item{
	border: 0px solid #fff;
/*     float:center; */
	text-align: center;
}
</style>
	<script type="text/javascript" src="${contextPath }/resources/js/lib/iCheck/icheck.min.js"></script>  

<script type="text/javascript">
$(document).ready(function(){
	  $("#hide").click(function(){
	    $("p").hide();
	  });
	});
$(function(){
	//设置checkbox的样式，就是美化
	$("input[type='checkbox']").iCheck({
	    checkboxClass: 'icheckbox_flat-blue'
	});
});
</script>
</head>
<body>

	<input type="checkbox" class="form-control" placeholder="twitterhandle">
	<div class="container">
	<p>如果你点击“隐藏” 按钮，我将会消失。</p>
									<button id="hide">隐藏</button>
		<button type="button" class="btn btn-primary btn-lg">
		  <span class="glyphicon glyphicon-user"></span> User
		</button>
	</div>
	<div class="container">
		<div ></div>
	</div>
	<!-- 	输入框 -->
<!-- 	向 .input-group 添加相对表单大小的 class（比如 .input-group-lg、input-group-sm）来改变输入框组的大小。输入框中的内容会自动调整大小。 -->
	<div class="container">
		<form class="bs-example bs-example-form" role="form">
			<div class="input-group">
				<span class="input-group-addon">@</span>
				<input type="text" class="form-control" placeholder="twitterhandle">
			</div>
			<br>
			<div class="input-group input-group-sm">
				<input type="text" class="form-control">
				<span class="input-group-addon">.00</span>
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon">$</span>
				<input type="text" class="form-control">
				<span class="input-group-addon">.00</span>
			</div>
		</form>
	</div>
	
	
	
	
	<div class="container">
		<h2>创建模态框（Modal）</h2>
		<!-- 按钮触发模态框 -->
		<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			开始演示模态框
		</button>
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							模态框（Modal）标题
						</h4>
					</div>
					<div class="modal-body">
						在这里添加一些文本
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary">提交更改</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	</div>

	<div class="container">
	      <h4>表格</h4>
	      <div class="well">您好，我在 Well 中！</div>
	      <p>创建响应式表格 (将在小于768px的小型设备下水平滚动)。另外：添加交替单元格的背景色：</p>      
	      <div class="table-responsive">          
	       <table class="table table-striped table-bordered">
	         <thead>
	           <tr>
	             <th></th>
	             <th>Name</th>
	             <th>Street</th>
	           </tr>
	         </thead>
	         <tbody>
	           <tr>
	             <td>1</td>
	             <td>Anna Awesome</td>
	             <td>Broome Street</td>
	           </tr>
	           <tr>
	             <td>2</td>
	             <td>Debbie Dallas</td>
	             <td>Houston Street</td>
	           </tr>
	           <tr>
	             <td>3</td>
	             <td>John Doe</td>
	             <td>Madison Street</td>
	           </tr>
	         </tbody>
	       </table>
	      </div>
	</div>
	
	<div class="container">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active">
				<a href="#home" data-toggle="tab">菜鸟教程	</a>
			</li>
			<li ><a href="#ios" data-toggle="tab">iOS</a></li>
			<li ><a href="#jmeter" data-toggle="tab">iOS2</a></li>
			<li ><a href="#ejb" data-toggle="tab">ejb</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
				<p>菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
			</div>
			<div class="tab-pane fade" id="ios">
				<p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
					TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
			</div>
			<div class="tab-pane fade" id="jmeter">
				<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
			</div>
			<div class="tab-pane fade" id="ejb">
				<p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				</p>
			</div>
		</div>
	</div>
	<p class="text-left">
	向左对齐文本
	<input type="text" class="form-control " id="type12" value="阔口型" />
	</p>
	
	
	<div class="container">
			<div class="list-group-item">免费域名注册</div>
	
		<ul class="list-group">
		<div class="list-group-item">免费域名注册<input type="text" class="form-control " id="type12" value="阔口型" /></div>
		<li class="list-group-item">免费 Window 空间托管<button type="button" class="btn pull-right"> 单个切换</button><button type="button" class="btn pull-right"> 单个切换</button></li>
		<li class="list-group-item"><button type="button" class="btn btn-primary pull-right" data-toggle="button"> 单个切换</button>图像的数量</li>
		</ul>
	</div>
	
	<div class="container">
		<div class="btn-group">
		<button type="button" class="btn btn-default">按钮 1</button>
		<button type="button" class="btn btn-default">按钮 2</button>
		<button type="button" class="btn btn-default">按钮 3</button>
		<button type="button" class="btn btn-primary" data-toggle="button"> 单个切换</button>
		</div>
	</div>
	
	<div class="container">
		<small>本行内容是在标签内</small><br>
		<strong>本行内容是在标签内</strong><br>
		<em>本行内容是在标签内，并呈现为斜体</em><br>
		<p class="text-left">向左对齐文本</p>
		<p class="text-center">居中对齐文本</p>
		<p class="text-right">向右对齐文本</p>
		<p class="text-muted">本行内容是减弱的</p>
		<p class="text-primary">本行内容带有一个 primary class</p>
		<p class="text-success">本行内容带有一个 success class</p>
		<p class="text-info">本行内容带有一个 info class</p>
		<p class="text-warning">本行内容带有一个 warning class</p>
		<p class="text-danger">本行内容带有一个 danger class</p>
	</div>
	<div class="container" style="width:20%">
		<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
<!-- 				<h4 class="panel-title"> -->
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseOne">
						点击我进行展开，再次点击我进行折叠。第 1 部分
					</a>
<!-- 				</h4> -->
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item" >免费域名注册</li>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" 
					   href="#collapseTwo">
						点击我进行展开，再次点击我进行折叠。第 2 部分
					</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item" >免费域名注册</li>
						<li class="list-group-item">免费 Window 空间托管</li>
						<li class="list-group-item">图像的数量</li>
						<li class="list-group-item">24*7 支持</li>
						<li class="list-group-item">每年更新成本</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"   href="#collapseThree">
						<button type="button" class="btn btn-info btn-lg">大的信息按钮</button>
					</a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body" style="padding: 0px;">
					<ul class="list-group" style="margin-bottom: 0px;">
						<li class="list-group-item">免费域名注册</li>
						<li class="list-group-item">免费 Window 空间托管</li>
						<li class="list-group-item">图像的数量</li>
						<li class="list-group-item">24*7 支持</li>
						<li class="list-group-item">每年更新成本</li>
					</ul>

				</div>
			</div>
		</div>
	</div>
	</div>
	
	<div class="container">
		<div class="btn-group-vertical">
			
		</div>
	</div>
	
	<div class="container">
		<div class="btn-group-vertical">
		<button type="button" class="btn btn-default">按钮 1</button>
		<button type="button" class="btn btn-default">按钮 2</button>
		<button type="button" class="btn btn-default btn-lg">大的默认按钮</button>
		<button type="button" class="btn btn-info btn-lg">大的信息按钮</button>  
		</div>
	</div>
	<div class="container">
	   	<div class="row">
	        <div class="col-xs-3" id="myScrollspy">
	            <ul class="nav nav-tabs nav-stacked" >
	                <li class="active">
	                <a href="#section-1">第一部分</a></li>
	                <li><a href="#section-2">第二部分</a></li>
	                <li><a href="#section-3">第三部分</a></li>
	                <li><a href="#section-4">第四部分</a></li>
	                <li><a href="#section-5">第五部分</a></li>
	            </ul>
	        </div>
	   	</div>
	</div>
</body>
<style>
/* Custom Styles */
/*     ul.nav-tabs{ */
/*         width: 140px; */
/*         margin-top: 20px; */
/*         border-radius: 4px; */
/*         border: 1px solid #ddd; */
/*         box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067); */
/*     } */
/*     ul.nav-tabs li{ */
/*         margin: 0; */
/*         border-top: 1px solid #ddd; */
/*     } */
/*     ul.nav-tabs li:first-child{ */
/*         border-top: none; */
/*     } */
/*     ul.nav-tabs li a{ */
/*         margin: 0; */
/*         padding: 8px 16px; */
/*         border-radius: 0; */
/*     } */
/*     ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{ */
/*         color: #fff; */
/*         background: #0088cc; */
/*         border: 1px solid #0088cc; */
/*     } */
/*     ul.nav-tabs li:first-child a{ */
/*         border-radius: 4px 4px 0 0; */
/*     } */
/*     ul.nav-tabs li:last-child a{ */
/*         border-radius: 0 0 4px 4px; */
/*     } */
/*     ul.nav-tabs.affix{ */
/*         top: 30px; /* Set the top position of pinned element */ 
/*     } */
</style>
</html>








