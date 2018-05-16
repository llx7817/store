

//var loginUrl =contextPath + "/manager/user/login.do";
//
//$(document).on("click",".loginBtn",function(){
//	debugger
//	 $("#message").html("");
//	var inputAccountNumber=$("#inputAccountNumber").val();
//	var inputPassword=$("#inputPassword").val();
//	var param={
//			accountNumber:inputAccountNumber,
//			password:inputPassword
//	}
//	 $.post(loginUrl,param,function(result){
//		 if(result.flag=="success"){
//			 $('#myModal').modal('hide');//隐藏登录框
//		     $("#login").html("欢迎你！ "+result.value);
//		 }else if(result.flag=="wrong"){
//			 $("#message").html(result.value);
//		 }
//			 
//	    });
////       window.location.href= loginUrl;
//});

var downloadUrl=contextPath+"/file/downloadFromDataBase.do";
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

//introductionImgs
//后台传过来的图片id字符串
//var oldpictureIds=$('#introductionImgs').val();
//var oldpictureList=[];
////新图片ID数组
//// var pictureList=[];
//if(typeof oldpictureIds !='undefined' && oldpictureIds != null&& oldpictureIds != ""){
//	oldpictureList=oldpictureIds.substring(1).split(',');//转成数组
//	for(var i=0;i<oldpictureList.length;i++){
//		var imgDownloadUrl=downloadUrl+'?id='+oldpictureList[i];
//		//这里不知道是下载还是看大图
//		$("#thelist").append(
//				'<div class="file-item thumbnail upload-state-done" imgid="' + oldpictureList[i]+'"  style="	margin-bottom: 15px;margin-top: 12; display:inline-block ;margin-right:12px;width:100px">'+
//				'<div style=""><a href="#" class="close deleteImgbtn" data-dismiss="alert">	×</a><a  href="'+imgDownloadUrl+'&download=true" ><img src="'+imgDownloadUrl+'&download=false" alt="图片无法显示"/>	</a></div></div>');
//	}
//}





