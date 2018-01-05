<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div  style="width:13.2%">
<div id="CollapsiblePanel1" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang basefont1">产品类型维护</span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/list.jsp" id="choose1" class="blue">产品类型维护</a></p>
  </div>
</div>
<div id="CollapsiblePanel2" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang"><span class="basefont1">语义库管理</span></span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp" id="choose2">基础意象语义库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp"  id="choose3">降维词汇库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp"  id="choose4">问卷调查与检验</a></p>
  </div>
</div>
<div id="CollapsiblePanel3" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang"><span class="basefont1">外观库管理</span></span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp"  id="choose5">底层案例库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp"  id="choose6">编码案例库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/edit.jsp"  id="choose7">新造型库</a></p>
  </div>
</div>
</div>
<p class="sidebar_xuanxiang">&nbsp; </p>
<script type="text/javascript">
var CollapsiblePanel1 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel1");
var CollapsiblePanel2 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel2", {contentIsOpen:false});
var CollapsiblePanel3 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel3", {contentIsOpen:false});
</script>

<script type="text/javascript">
var temp = "choose1";
$("#choose1").click(function(){
	if(temp!="choose1"){
		$("#"+temp).css("color","black");
		temp="choose1"; 
		$("#choose1").css("color","#39F");
}
});

$("#choose2").click(function(){
	if(temp!="choose2"){
		$("#"+temp).css("color","black");
		temp="choose2"; 
		$("#choose2").css("color","#39F");
}
});
$("#choose3").click(function(){
	if(temp!="choose3"){
		$("#"+temp).css("color","black");
		temp="choose3"; 
		$("#choose3").css("color","#39F");
}
});
$("#choose4").click(function(){
	if(temp!="choose4"){
		$("#"+temp).css("color","black");
		temp="choose4"; 
		$("#choose4").css("color","#39F");
}
});
$("#choose5").click(function(){
	if(temp!="choose5"){
		$("#"+temp).css("color","black");
		temp="choose5"; 
		$("#choose5").css("color","#39F");
}
});
$("#choose6").click(function(){
	if(temp!="choose6"){
		$("#"+temp).css("color","black");
		temp="choose6"; 
		$("#choose6").css("color","#39F");
}
});
$("#choose7").click(function(){
	if(temp!="choose7"){
		$("#"+temp).css("color","black");
		temp="choose7"; 
		$("#choose7").css("color","#39F");
}
});
</script>