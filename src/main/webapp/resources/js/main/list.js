//var ClassName=""
//var searchUrl =contextPath + "/main/load/search.do";
//var delUrl =contextPath + "/main/load/delete.do";
//var editUrl =contextPath + "/main/edit.do";
//var listUrl =contextPath + "/main/list.do";



$(document).on("click",".editbtn",function(){
	debugger
	var id= $(this).attr("myid");
	 var url = editUrl + "?tt=" + Math.random(0, 100);
       debugger;
       if(id != ""){
       	 url += "&id=" + id;
       }
       window.location.href= url;
});

$(document).on("click",".deletebtn",function(){//修改成这样的写法
	//$(".deletebtn").click(function(){
		 var id= $(this).attr("myid");
		  $(".deleteOK").click(id,function(){
			  debugger
			  var url = delUrl + "?id=" + id;
			  $.post(url);
//			  window.location.href= listUrl;
			  location.reload([true]);
		  });
	});



function getLunBoImg() {
	
    for (var i = 0, len = aoData.length; i < len; i++) {
        var data = aoData[i];
        if (data.name == prop) {
            return data.value;
        }
    }
    return null;
}








