<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<!-- CSS -->
<link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/basic_style.css"/>
<%-- <link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/style.css"/> --%>
<link type="text/css" rel="stylesheet" href="${contextPath}/resources/js/lib/bootstrap3/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/lunBo.css"/>

<link type="text/css" rel="stylesheet" href="${contextPath}/resources/js/lib/bootstrap3/css/bootstrap-theme.min.css">
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/webuploader/webuploader.css"/>  
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/DataTables-1.10.15/media/css/jquery.dataTables.min.css"/>  
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/DataTables-1.10.15/media/css/dataTables.bootstrap.min.css"/>  
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/jquery-easyui-1.5.4/themes/default/easyui.css"/>  
<link type="text/css" rel="stylesheet" href="${contextPath }/resources/js/lib/jquery-easyui-1.5.4/themes/icon.css"/>  


<%-- <script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-1.8.2.min.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-1.11.2.min.js"></script> --%>
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-3.2.1.min.js"></script>
<!--[if lte IE 9]>
<script type="text/javascript" src="${contextPath}/resources/js/lib/bootstrap3/js/respond.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/lib/bootstrap3/js/html5shiv.min.js"></script>
<![endif]-->
<%-- <script type="text/javascript" src="${contextPath}/resources/js/lib/bootstrap/js/bootstrap.min.js"></script> --%>
<script type="text/javascript" src="${contextPath}/resources/js/lib/bootstrap3/js/bootstrap.js"></script>
<script type="text/javascript" src="${contextPath }/resources/js/lib/webuploader/webuploader.js"></script>  
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery.form.js"></script>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/lib/SpryAssets/SpryCollapsiblePanel.js"></script> --%>
<%-- <script type="text/javascript" src="${contextPath}/resources/js/lib/SpryAssets/SpryTabbedPanels.js"></script> --%>
<script type="text/javascript" src="${contextPath}/resources/js/lib/DataTables-1.10.15/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/lib/DataTables-1.10.15/media/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-easyui-1.5.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/lib/jquery-easyui-1.5.4/locale/easyui-lang-zh_CN.js"></script>

 <script type="text/javascript">
    var contextPath = '${contextPath}';
</script >



