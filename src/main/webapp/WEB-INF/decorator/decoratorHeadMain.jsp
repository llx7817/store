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


/* .gouWuChe{ */
/*      float: right; */
/*     border: 2px solid #c33; */
/*     width: 124px; */
/*     height: 39px; */
/*     font-size: large; */
/* } */

.mallSearch-input{
    float: right;
	border: 2px solid #c33;
	margin-right: 34px;
}

.inputSearch{
	border: 2px solid #c33;
   	width: 395px;
    height: 34px;
    padding: 0 10px;
    border: none;
}
</style>
    
<div  class="headerTopAreaBox-fixed">
	<div class="container">
		<div class="headerTop">
				<div style=""> 欢迎光临！&nbsp;
						<a  class="" data-toggle="modal" data-target="#myModal" href="#" id="login">
						<span id="userName" userid="">登录&nbsp;|&nbsp;注册</span></a>
<!-- 						<span id="userName">登录&nbsp;|&nbsp;注册</span></a> -->
							<input id="userId" value="0" hidden/>						
							<a  href="javascript:void(0)"  class=""  id="userForm"> &nbsp;&nbsp;我的订单</a>
				</div>
			</div>
		</div>
</div>
<%--  <jsp:include page="decoratorHeadMainTop.jsp"/> --%>

<!-- <div class=""> -->
	<div class="container blank-container" >
	<!-- 	购物车 -->
	 <a class="mycart"  id="userCart" href="javascript:void(0)">购物车</a>
<!-- 		<div class="gouWuChe"> -->
<!-- 			<a href="#" class=""> -->
<!--                 <span>我的购物车</span> -->
<!--             </a> -->
<!-- 		</div> -->
			<div class="mallSearch-input">
		<!--             <input type="hidden" name="searchType" value="" id="searchType"> -->
		            <input class="inputSearch" type="text" name="title" autocomplete="off" value="" placeholder="快速查询">
		            <button class="searchBtn" type="button" onclick="checkSearch()"></button>
		   </div>
   </div>
<!--  </div> -->
	<div class="container blank-container" style="font-size: large;border-bottom: 2px solid #c33; "> 
	<nav class="navbar navbar-default" role="navigation" style=" background-color: white;"> 
	    <div class="container-fluid"> 
	    <div class="navbar-header"> 
	        <a class="navbar-brand" href="#">7号便利店</a> 
	    </div> 
	    <div> 
	        <ul class="nav navbar-nav navbar-right"> 
	            	<li class=""><a href="${contextPath}/main/list">首页 </a></li> 
	<%--              	<li class="active"><a href="${contextPath}/main/list">首页 </a></li>  --%>
	                <li class="dropdown"> 
	                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
	                    新品上市 <b class="caret"></b> 
	                </a> 
	                <ul class="dropdown-menu"> 
	<!--                     <li><a href="#">jmeter</a></li>  -->
	<!--                     <li><a href="#">EJB</a></li>  -->
	<!--                     <li><a href="#">Jasper Report</a></li>  -->
	<!--                     <li class="divider"></li>  -->
	                    <li><a href="#">链接</a></li> 
	                    <li class="divider"></li> 
	                    <li><a href="#">链接</a></li> 
	                </ul> 
	            </li> 
	              <li class="dropdown"> 
	                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
	                    热卖产品 <b class="caret"></b> 
	                </a> 
	                <ul class="dropdown-menu"> 
	<!--                     <li><a href="#">jmeter</a></li>  -->
	<!--                     <li><a href="#">EJB</a></li>  -->
	<!--                     <li><a href="#">Jasper Report</a></li>  -->
	<!--                     <li class="divider"></li>  -->
	                    <li><a href="#">链接</a></li> 
	                    <li class="divider"></li> 
	                    <li><a href="#">链接</a></li> 
	                </ul> 
	            </li> 
	          	 <li><a href="#">关于我们</a></li>
	        </ul> 
	    </div> 
	    </div> 
	</nav>
		</div>

<br>


<!-- 		<sitemesh:write property='body'/> -->
		<sitemesh:write property='body'></sitemesh:write> 
		 <!--底部  -->         
			<div id="footerArea" align="center">
			<br/>
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
				<div class="horizontal-line " style="margin-bottom: 31px;"></div>
				<p> Copyright © 2017 - 2018  store.com  版权所有 </p>
				<p> store</p>
		</div>
<!-- </body> -->
<!-- </html> -->
 <jsp:include page="userLogin.jsp"/>
