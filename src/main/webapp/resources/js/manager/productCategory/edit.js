//var delUrl =contextPath + "/manager/productCategory/load/delete.do";
var saveUrl =contextPath + "/manager/productCategory/load/save.do";
//var editUrl =contextPath + "/manager/productCategory/edit.do";
var listUrl =contextPath + "/manager/productCategory/list.do";
var treeUrl =contextPath + "/tree/load/category.do";

//var item=$("#item").val();
//if(typeof item.parentProductCategoryId !='undefined' && value != null&& value != ""){
//	 parentProductCategoryId=item.parentProductCategoryId;
//}

$("#tree").tree({  
	 url:treeUrl,  
	 method: 'GET',  
	 animate: true,  
	 checkbox: true,  
	 cascadeCheck:false,//层叠选中  
	 lines:true,//显示虚线效果  
	 onLoadSuccess:function(node,data){  
//		 	var nodes = $('#tree').tree('getChecked');
//		 	for(var i=0;i<nodes.length;i++){
//		 		 $('#tree').tree('uncheck',i.target);
//		 	}
//			  var nodeDep = $('#tree').tree('find',checkeid);  
//			  if (null != nodeDep && undefined != nodeDep)  
//			  {  
//			      $('#tree').tree('check',nodeDep.target);  
//			  }  
			 },  
	 onCheck:function(node, checked){  
		 debugger
			  if (checked) {  
				  parentProductCategoryId=node.id;
			      }   
			}   
	});  

$(document).on("click",".cancelbtn",function(){
	 window.location.href= listUrl;
});  
$(document).on("click",".savebtn",function(){
	debugger
//		  var encodeUrl = encodeURI(saveUrl); 
		  params={
				  id:id,
				  name:name,
				  parentProductCategoryId:parentProductCategoryId
		  };
		  $.post(saveUrl, params,function(data) {
				var flag=data;
//				alert("保存成功！");
			});
//		  location.reload([true]);
       window.location.href= listUrl;
});