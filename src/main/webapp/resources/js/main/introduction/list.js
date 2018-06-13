var downloadUrl=contextPath+"/file/downloadFromDataBase";
var addCartUrl=contextPath+"/user/addCart";


var detailIds=$('#detailIds').val();
var detailList=[];
detailList=detailIds.split(',');//转成数组
for(var i=0;i<detailList.length;i++){
	var imgDownloadUrl=downloadUrl+'?id='+detailList[i];
	$("#detailImgs").append(
	'<div class="" imgid="' + detailList[i]+'"  >'+
	'<a  href="'+imgDownloadUrl+'&download=true" ><img src="'+imgDownloadUrl+
	'&download=false" class="img-adaptive" alt="图片无法显示"/>	</a></div>');
}
if($("#user").attr("userid")!="0"){
	$("#userName").html( $("#user").attr("user_name"));//设置头部用户登录状态
}

$(".addCartBtn").on('click',function(){
	var userId=$("#user").attr("userid");
	var productId=$(this).attr("product_id");
	var number=$("#product_Number").val();
	var params={
			userId:userId,
			productId:productId,
			number:number
	};
	debugger
	if(userId!=null&&userId!=""){
		 $.ajax({
		       url: addCartUrl,
		       type: "get",
		       dataType: "json",
		       async:false,
		       contentType : 'application/json;charset=utf-8', //设置请求头信息
		       data: params, 
		       success:function(data, textStatus) {  
		    	   alert(data);
		       }
		 });
	}else{
		$("#login").click();//提示用户先登录
	}
});





