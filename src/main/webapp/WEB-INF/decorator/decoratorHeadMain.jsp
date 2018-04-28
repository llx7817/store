<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common.jsp"%>

<!-- </head> -->

<!-- <body> -->
<!--      	<div class="mydiv title"> -->
<!-- 	    	<h4 class="biaotou title-word"  >112233</h4> -->
<!-- 	    </div> -->

<!-- <table class="mainTitle"> -->
<!-- 	<tbody> -->
<!-- 		<tr> -->
<!-- 			<td style=" width: 48%;"> -->
<!-- 			Food112233 -->
<!-- 			</td> -->
<!-- 			<td> -->
<!-- 			首页 -->
<!-- 			</td> -->
<!-- 			<td> -->
<!-- 			新品上市 -->
<!-- 			</td> -->
<!-- 			<td> -->
<!-- 			热卖产品 -->
<!-- 			</td> -->
<!-- 			<td> -->
<!-- 			关于我们 -->
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 	</tbody> -->
<!-- 	</table> -->

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
<!--           <a class="navbar-brand" href="#">Store</a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
<!--             <li><a href="#">Dashboard</a></li> -->
<!--             <li><a href="#">Settings</a></li> -->
            <li>
<!--             	<a href="#"> -->
<!--             	 type="button"  -->
	            	<a  class="" data-toggle="modal" data-target="#myModal" href="#" id="login">
						登录/注册
<!-- 					</a> -->
				</a>
			</li>
<!--             <li><a href="#">Help</a></li> -->
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>
<div class="mainTitle" style="margin-top: 51px;">  
<nav class="navbar navbar-default" role="navigation"> 
    <div class="container-fluid"> 
    <div class="navbar-header"> 
        <a class="navbar-brand" href="#">Food112233</a> 
    </div> 
    <div> 
        <ul class="nav navbar-nav navbar-right"> 
            <li class="active"><a href="#">首页 </a></li> 
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
		<sitemesh:write property='body'/>
<!-- </body> -->
<!-- </html> -->