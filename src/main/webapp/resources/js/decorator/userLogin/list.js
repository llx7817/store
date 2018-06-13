var loginUrl =contextPath + "/manager/user/login";
var managerUrl=contextPath + "/manager/product/list";
var userFormUrl=contextPath + "/user/userForm";
var userCartUrl=contextPath + "/user/userCart";
//$(document).on("click",".loginBtn",function(){


$(".loginBtn").on("click",function(){
	 $("#message").html("");
	var inputAccountNumber=$("#inputAccountNumber").val();
	var inputPassword=$("#inputPassword").val();
	var param={
			accountNumber:inputAccountNumber,
			password:inputPassword
	}
	var flag=0;
//	debugger
	$.ajax({  
//		type: "POST",
//	    dataType: "json",
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
				 $("#user").attr("userid",result.userId);//标记用户账号id
//				 $("#userName").attr("userid",result.userId);//标记用户账号
//				 $("#userCart").attr("userid",result.userId);//标记用户账号
//				 $("#userForm").attr("userid",result.userId);//标记用户账号
			 }else if(result.flag=="wrong"){
				 $("#message").html(result.value);
			 }else if(result.flag=="administrator"){
				 $('#myModal').modal('hide');//隐藏登录框
				 window.location.href= managerUrl;
//				 flag= 1;
			 }
        }, error: function() {  
            alert("失败，请稍后再试！");  
        }  
    });
});

$("#register").on('click',function(){
	 $('#myModal').modal('hide');//隐藏登录框
});
$("#userForm").on('click',function(){
//	var userId=$("#userId").val();
	var userId=$("#user").attr("userid");
	if(userId!=null&&userId!="0"){
		window.location.href= userFormUrl+"?userId="+userId;
	}
	else{
		$("#login").click();
//		 $('#myModal').modal('show');//弹出登录框
	}
});
$("#userCart").on('click',function(){
	var userId=$("#user").attr("userid");
	if(userId!=null&&userId!="0"){
		window.location.href= userCartUrl+"?userId="+userId;
	}else{
		$("#login").click();
	}
});




