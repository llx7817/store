var uploadToFileUrl=contextPath + "/file/uploadToDataBase";
var downloadUrl=contextPath+"/file/downloadFromDataBase";
//var listUrl =contextPath + "/manager/user/list.do";
var saveUrl =contextPath + "/manager/user/load/save";
//后台传过来的图片id字符串
var olduserIconId=$('#userIconId').val();
//新图片ID数组
 var userImgList=[];
if(typeof olduserIconId !='undefined' && olduserIconId != null&& olduserIconId != ""){
	var olduserImgList=olduserIconId.split(',');//转成数组
	for(var i=0;i<olduserImgList.length;i++){
		var imgDownloadUrl=downloadUrl+'?id='+olduserImgList[i];
		//这里不知道是下载还是看大图
		$("#thelist").append(
				'<div class="file-item thumbnail upload-state-done" imgid="' + olduserImgList[i]+'"  style="	margin-bottom: 15px;margin-top: 12; display:inline-block ;margin-right:12px;width:100px">'+
				'<div style=""><a href="#" class="close deleteImgbtn" data-dismiss="alert">	×</a><a  href="'+imgDownloadUrl+'&download=true" ><img src="'+imgDownloadUrl+'&download=false" alt="图片无法显示"/>	</a></div></div>');
	}
}

$(function(){  
/*init webuploader*/  
 var $list=$("#thelist");   
 var $btn =$("#startUploadBtn");   //开始上传  
 var thumbnailWidth = 100;   //缩略图高度和宽度 （单位是像素），当宽高度是0~1的时候，是按照百分比计算，具体可以看api文档  
 var thumbnailHeight = 100;  
 filePicker();
//$("#filePicker").click(function(){
//	filePicker();
//});



//文件上传方法
	function filePicker(){  
 	 var uploader =  WebUploader.create({
 	       // 选完文件后，是否自动上传。  
 	       auto: true,  
 	       // swf文件路径  
 	       swf: contextPath+'/resources/js/lib/webuploader/Uploader.swf',  
 	       // 文件接收服务端。  
 	       server:uploadToFileUrl,  
 	       // 选择文件的按钮。可选。  
 	       // 内部根据当前运行是创建，可能是input元素，也可能是flash.  
 	       pick: '#filePicker',  
 	       // 允许选择图片文件。  
 	       accept: {  
 	           title: 'Images',  
 	           extensions: 'gif,jpg,jpeg,bmp,png,txt',  
 	          mimeTypes:'image/jpg,image/jpeg,image/png'
// 	           mimeTypes: 'image/*'  
 	       },  
 	      // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
// 	      resize: false,
 	       method:'POST'  
 	   });  
 	   // 当有文件添加进来的时候  
 	   uploader.on( 'fileQueued', function( file ) {  // webuploader事件.当选择文件后，文件被加载到文件队列中，触发该事件。等效于 uploader.onFileueued = function(file){...} ，类似js的事件定义。  
 	       debugger
 	      var str=  '<div id="' + file.id + '" imgid=""  class="file-item thumbnail" style="	margin-bottom: 15px;margin-top: 12; display:inline-block ;margin-right:12px">' +  
 	     '<a class=" " href=""> <img  alt="'+file.name+'"/></a></div>';
 	      // $list为容器jQuery实例  
 	       $list.append( str );  //追加
	      var $li = $("#" +file.id),  
	      $img = $li.find('img');  
// 	       $list.append( $li );  //追加
// 	      $list.html( $li );  
 	       // 创建缩略图  
 	       // 如果为非图片文件，可以不用调用此方法。  
 	       // thumbnailWidth x thumbnailHeight 为 100 x 100  
 	       uploader.makeThumb( file, function( error, src ) {   //webuploader方法  
 	           if ( error ) {  
 	               $img.replaceWith('<span>不能预览</span>');  
 	               return;  
 	           }  
 	           $img.attr( 'src', src );  
 	       }, thumbnailWidth, thumbnailHeight );  
 	   });  
 	   // 文件上传过程中创建进度条实时显示。  
 	   uploader.on( 'uploadProgress', function( file, percentage ) {  
 	       var $li = $( '#'+file.id ),  
 	           $percent = $li.find('.progress span');  
 	       // 避免重复创建  
 	       if ( !$percent.length ) {  
 	           $percent = $('<p class="progress"><span></span></p>')  
 	                   .appendTo( $li )  
 	                   .find('span');  
 	       }  
 	       $percent.css( 'width', percentage * 100 + '%' );  
 	   });  
 	  
 	   // 文件上传成功，给item添加成功class, 用样式标记上传成功。  
 	   uploader.on( 'uploadSuccess', function( file,response ) {  
 		   debugger
 		   var filename=response.filenName;
// 		  userImgList.Push(response.fileId);
 		 $( '#'+file.id ).attr("imgid",response.fileId);
 		 var hrefStr= downloadUrl+"?id="+response.fileId+"&download=true";
 		 $( '#'+file.id ).find("a").attr("href",hrefStr);
 	       $( '#'+file.id ).addClass('upload-state-done');  
//				$('#filename').html('<a class=" " href="'+contextPath+'/file/downloadFromDataBase?filename='+encodeURIComponent(filename)+'">'+filename+'</a>');
//				$( '#ticon' ).val(filename);  
			});  
 	  
 	   // 文件上传失败，显示上传出错。  
 	   uploader.on( 'uploadError', function( file,reason  ) {  
// 		   debugger
 	       var $li = $( '#'+file.id ),  
 	           $error = $li.find('div.error');  
 	       // 避免重复创建  
 	       if ( !$error.length ) {  
 	           $error = $('<div class="error"></div>').appendTo( $li );  
 	       }  
 	       $error.text('上传失败');  
 	   });  
 	  
 	   // 完成上传完了，成功或者失败，先删除进度条。  
 	   uploader.on( 'uploadComplete', function( file ) {  
 	       $( '#'+file.id ).find('.progress').remove();  
 	   });  
 	   //点击上传
// 	      $btn.on( 'click', function() {  
// 	        console.log("上传...");  
// 	        uploader.upload();  
// 	        console.log("上传成功");  
// 	      });  
	}
});  

//删除图片
$(document).on("click",".deleteImgbtn",function(){//修改成这样的写法
		debugger
		$(this).parents(".file-item").remove();
	});
		
//保存数据到数据库
$(document).on("click",".savebtn",function(){//修改成这样的写法
//$(".savebtn").click(function(){//这样写可能thislist找不到后代元素，因为是新生成的
//	var arrayList=$("#thelist").find("div[imgid]");
//	$.each(arrayList,function(i,val){ 
//		debugger
//		var imgid=val.attributes[1].nodeValue;
//		userImgList.push(imgid);
//		});
//	var imgids=userImgList.toString();
//	$("#userIconId").val(imgids);
	var form =$(this).parents(".editForm");
	 var params = form.serialize();
//     var action = form.attr("action");
     var action =saveUrl;
     //如果验证通过
		$.post(action, params,	function(data) {
			debugger
//			var flag=data.flag;
//			userId=data.userId;
			alert("保存成功！");
			 $('#registerModal').modal('hide');//隐藏注册框
		});
//		 window.location.href= listUrl;//返回列表界面
});
	
	
