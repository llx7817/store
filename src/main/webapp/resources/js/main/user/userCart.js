 var indexUrl=contextPath+"/main/list";
 var addFormUrl=contextPath+"/user/addForm";
 var deleteUrl=contextPath+"/user/delete";
$("#userName").html( $("#user").attr("user_name"));
$(".continue_btn").on("click",function(){
	 var userid=$("#user").attr("userid");
//		$.get(indexUrl, {userId:userid});
		window.location.href= indexUrl+"?userId="+userid;
});



 //全选或是取消全选
var flag=0;
$("#allCheck").click(function(){
	var checkbox = $("input[type='checkbox']");
	if(flag==0){
		checkbox.prop("checked", true);
		flag=1;
	}
	else{
		checkbox.prop("checked", false);
		flag=0;
	}
 });

//$(".deleteOrderItem").on("click",function(){
//	 var userid=$("#user").attr("userid");
//	 var orderId=$(this).attr("orderId");
//	$.get(deleteUrl, {userId:userid,orderId:orderId});
//		
//});

$(document).on("click",".deleteBtn",function(){//修改成这样的写法
		 var orderId= $(this).attr("myid");
		  $(".deleteOK").click(id,function(){
			  debugger
			  $.post(deleteUrl,{id:orderId});
			  location.reload([true]);
		  });
});


function multipleFun(num1,num2){
	return num1*100*num2/100;
}

//数量减去1
$(".numberMinus").click(function(){//修改成这样的写法
	var orderItemNumberSetting=$(this).siblings(".orderItemNumberSetting");
	var itemInventory=parseFloat($(this).siblings(".itemInventory").attr("myValue"));//库存
	var itemProductPrice=parseFloat($(this).siblings(".itemProductPrice").attr("myValue"));//单价
	var itemNumber=parseFloat(orderItemNumberSetting.val());//数量
	//设置数量 
	if(itemNumber>1){
		orderItemNumberSetting.val(itemNumber-1);
//		var a=(itemNumber+1)*itemProductPrice;
//		(itemNumber-1)*itemProductPrice
		$(this).parent().parent().siblings(".totalPriceTd").find(".totalPrice").html("¥ "+multipleFun(itemNumber-1,itemProductPrice));
	}
});



//数量加1
$(".numberPlus").click(function(){//修改成这样的写法
	var orderItemNumberSetting=$(this).siblings(".orderItemNumberSetting");
	var itemInventory=parseFloat($(this).siblings(".itemInventory").attr("myValue"));//库存
	var itemProductPrice=parseFloat($(this).siblings(".itemProductPrice").attr("myValue"));//单价
	var itemNumber=parseFloat(orderItemNumberSetting.val());//数量
	//设置数量 
	if(itemNumber<itemInventory){
		orderItemNumberSetting.val(itemNumber+1);
//		var a=(itemNumber+1)*itemProductPrice;
		$(this).parent().parent().siblings(".totalPriceTd").find(".totalPrice").html("¥ "+multipleFun(itemNumber+1,itemProductPrice));
	}
	else{
		alert("库存不足!");
	}
	
});



$(".check_btn").on("click",function(){
//	type="checkbox" 
	var  list=$(".checkOrder");
	var orderIds=[];
	list.each(function(cell,i) {
			if(i.checked){
				var a=$(this).attr("orderId");
				orderIds.push(a);
			}
	});
//	orderIds.toString();//数组转字符串
	 var userid=$("#user").attr("userid");
	 var orderIds=orderIds.toString();
	 var params={
	    	   userId:userid,
	    	   orderIds:orderIds
	       };
	 $.post(addFormUrl,params,function(data) {  
  	   alert(data);
  	  location.reload([true]);
     });
});
