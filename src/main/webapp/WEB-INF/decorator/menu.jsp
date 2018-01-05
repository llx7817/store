<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div  style="width:180px;">
<div id="CollapsiblePanel1" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang basefont1">产品类型维护</span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/productMaintenance/list" id="choose1" >产品类型维护</a></p>
  </div>
</div>
<div id="CollapsiblePanel2" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang"><span class="basefont1">语义库管理</span></span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/basicSemantic/list" id="choose2">基础意象语义库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/dimense/list"  id="choose3">降维词汇库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/question/list"  id="choose4">问卷调查与检验</a></p>
  </div>
</div>
<div id="CollapsiblePanel3" class="CollapsiblePanel">
  <div class="CollapsiblePanelTab" tabindex="0"><span class="sidebar_xuanxiang"><span class="basefont1">外观库管理</span></span></div>
  <div class="CollapsiblePanelContent">
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/bottom/list"  id="choose5">底层案例库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/code/list"  id="choose6">编码案例库</a></p>
    <p class="CollapsiblePanelContent sidebar_xuanxiang"><a href="${contextPath}/art/manager/newcase/list"  id="choose7">新造型库</a></p>
  </div>
</div>
</div>
<p class="sidebar_xuanxiang">&nbsp; </p>
<script type="text/javascript">
var CollapsiblePanel1 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel1", {contentIsOpen:false});
var CollapsiblePanel2 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel2", {contentIsOpen:false});
var CollapsiblePanel3 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel3", {contentIsOpen:false});
</script>

