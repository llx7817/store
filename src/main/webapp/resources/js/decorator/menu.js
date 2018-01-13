var editUrl =contextPath + "/manager/product/add";
$(document).on("click",".addbtn",function(){
	debugger
//	var id= $(this).attr("myid");
	 var url = editUrl + "?tt=" + Math.random(0, 100);
       debugger;
//       if(id != ""){
//       	 url += "&id=" + id;
//       }
       window.location.href= url;
});