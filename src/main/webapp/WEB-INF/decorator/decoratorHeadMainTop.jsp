<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common.jsp"%>
<style>
.headerTopAreaBox-fixed {
    width: 100%; 
    height: 38px; 
    background: #f7f7f7;
    border-bottom: 1px solid #ccc;
    color: #808080;
/*     暂时取消固定头部 */
/*     position: fixed; */
/*     top: 0; */
/*      z-index:100;  */
}

.headerTop {
    line-height: 40px;
    float: right;
/*     margin-right: 50px; */
}

</style>
    
<div  class="headerTopAreaBox-fixed">
	<div class="container">
		<div class="headerTop">
				<div style=""> 欢迎光临！&nbsp;
<!-- 						<span id="loginText"> -->
						<a  class="" data-toggle="modal" data-target="#myModal" href="#" id="login">
						<span id="userName" userid="0">登录&nbsp;|&nbsp;注册</span></a>
						  	<input id="userId" value="0" hidden/>
<!-- 						<a  class="" data-toggle="modal" data-target="#myModal" href="#" id="login">登录&nbsp;|&nbsp;注册</a> -->
<!-- 						</span> -->
						<a href="javascript:void(0)"  class=""  id="userForm"> &nbsp;&nbsp;我的订单</a>
				</div>
			</div>	
		</div>
</div>

<br>


<!-- 		<sitemesh:write property='body'/> -->
		<sitemesh:write property='body'></sitemesh:write> 
		 <!--底部  -->      
			<div id="footerArea" align="center">
			<div class="horizontal-line"></div>
			<div class="slogen container">
			<ul>
				<li >
				      <img alt="" src="${contextPath}/resources/img/slogen/1.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/2.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/3.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/4.jpg"  height="50">
				</li>
			</ul>
			</div>
				<div class="horizontal-line" style="margin-bottom: 31px;"></div>
				
				<p> Copyright © 2017 - 2018  store.com  版权所有 </p>
				<p> store</p>
		</div>
<!-- </body> -->
<!-- </html> -->
 <jsp:include page="userLogin.jsp"/>

