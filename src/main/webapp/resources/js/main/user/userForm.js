 var indexUrl=contextPath+"/main/list";
$("#userName").html( $("#user").attr("user_name"));
 $(".continue_btn").on("click",function(){
	 var userid=$("#user").attr("userid");
//		$.get(indexUrl, {userId:userid});
		window.location.href= indexUrl+"?userId="+userid;
});
 
 var itemProductPrice=parseFloat($(".totalPrice").attr("myProductPrice"));//单价
var itemNumber=parseFloat($(".totalPrice").attr("myNumber"));//数量
$(".totalPrice").html("¥ "+itemProductPrice*100*itemNumber/100);