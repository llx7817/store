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
    			
    			<div class="conbox" id="BoxUl">
	    			<ul>
	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/1.jpg" alt=""/></li>
	    				
	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/2.jpg" alt=""/></li>
	    				
	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/3.jpg" alt=""/></li>
	    			
	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/4.jpg" alt=""/></li>
	    				
	    				<li class="cur"><img src="${contextPath}/resources/img/lunBoImg/5.jpg" alt=""/></li>
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
	</div>
<script type="text/javascript" src="${contextPath}/resources/js/main/lunBo.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/main/list.js"></script>
<script type="text/javascript">
//修改显示框大小吧
    	//滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数
LbMove('BoxUl','btnl','btnr','BoxSwitch',true,'left',true,305,1000,5000,4);
</script>
</body>
</html>