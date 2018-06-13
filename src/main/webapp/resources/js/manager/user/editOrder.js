var listUrl =contextPath + "/manager/user/orderList";
//保存数据到数据库
$(document).on("click",".savebtn",function(){//修改成这样的写法
	var form =$(this).parents(".editForm");
	 var params = form.serialize();
     var action = form.attr("action");
     var userid=$("#userId").val();
     //如果验证通过
		$.post(action, params,	function(data) {
			debugger
//			var flag=data.flag;
//			userId=data.userId;
//			alert("保存成功！");
		});
		 window.location.href= listUrl+"?userid="+userid;//返回列表界面
//		 window.history.back();
});

$(document).on("click",".cancelbtn",function(){
	window.history.back();//返回上一页
});
	
