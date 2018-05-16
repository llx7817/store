var loginUrl =contextPath + "/manager/user/login.do";
var managerUrl=contextPath + "/manager/product/list.do";
var orderFormUrl=contextPath + "/user/orderForm.do";
$(document).on("click",".loginBtn",function(){
	 $("#message").html("");
	var inputAccountNumber=$("#inputAccountNumber").val();
	var inputPassword=$("#inputPassword").val();
	var param={
			accountNumber:inputAccountNumber,
			password:inputPassword
	}
	var flag=0;
	$.ajax({  
        type : "get",  
        async : false,  //同步请求  
        url : loginUrl,  
        data:param,
//        timeout:1000,  
        success:function(result){  
	       	 if(result.flag=="success"){
				 $('#myModal').modal('hide');//隐藏登录框
				 debugger 
				 $("#userName").html(result.value);
				 $("#userId").val(result.userId);//标记用户账号
			 }else if(result.flag=="wrong"){
				 $("#message").html(result.value);
			 }else if(result.flag=="administrator"){
				 $('#myModal').modal('hide');//隐藏登录框
				 flag= 1;
			 }
        }, error: function() {  
            alert("失败，请稍后再试！");  
        }  
    });
	 if( flag==1){
		 window.location.href= managerUrl;
		 }
//	 $.post(loginUrl,param,function(result){
//		 if(result.flag=="success"){
//			 $('#myModal').modal('hide');//隐藏登录框
//			 debugger 
//			 $("#userName").html(result.value);
////		     $("#login").html("欢迎你！ "+result.value);
//		 }else if(result.flag=="wrong"){
//			 $("#message").html(result.value);
//		 }else if(result.flag=="administrator"){
//			 window.location.href= managerUrl;
//		 }
//	   });
//       window.location.href= loginUrl;
});

$("#register").on('click',function(){
	 $('#myModal').modal('hide');//隐藏登录框
});
$("#orderForm").on('click',function(){
	var userId=$("#userId").attr();
	if(userId!=null){
		window.location.href= orderFormUrl;
	}
});




