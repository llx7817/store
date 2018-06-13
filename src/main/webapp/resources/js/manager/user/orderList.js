 var userid=$("#user").attr("userid");
var searchUrl =contextPath + "/manager/user/load/orderList?userid="+userid;
var delUrl =contextPath + "/manager/user/load/deleteOrder";
var editUrl =contextPath + "/manager/user/editOrder";
$(document).ready(function(){
    $('#myTable').DataTable({
    	iDisplayLength: 10,	
    	bFilter : true, //去掉搜索框
    	bStateSave:true,
    	bDestroy:true,
        bSort: false,//排序功能
        bAutoWidth:false,
//        serverSide: true,
        language: {  
            "sProcessing": "处理中...",  
            "sLengthMenu": "显示 _MENU_ 项结果",  
            "sZeroRecords": "没有匹配结果",  
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",  
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",  
            "sInfoPostFix": "",  
            "sSearch": "快速搜索:",  
            "sUrl": "",  
            "sEmptyTable": "表中数据为空",  
            "sLoadingRecords": "载入中...",  
            "sInfoThousands": ",",  
            "oPaginate": {  
                "sFirst": "首页",  
                "sPrevious": "上页",  
                "sNext": "下页",  
                "sLast": "末页"  
            },  
            "oAria": {  
                "sSortAscending": ": 以升序排列此列",  
                "sSortDescending": ": 以降序排列此列"  
            }  
        } ,
        aoColumns: [
        	  {
        		  sTitle: '序号',
        		  sWidth:'50px',
        		  "data": null ,//此列不绑定数据源，用来显示序号'
        		  "targets": 0
      	},{
			sTitle: '名称',
			sWidth:'150px',
			mData: 'name'
        },{
			sTitle: '数量',
			sWidth:'100px',
			mData: 'number'
		},{
			sTitle: '单价',
			sWidth:'100px',
			mData: 'productPrice'
		  },{
				sTitle: '收货地址',
				sWidth:'200px',
				mData: 'address'
		},{
			sTitle: '下单时间',
			sWidth:'100px',
			mData: 'updateTime'
		},{
			sTitle: '状态',
			sWidth:'100px',
			mData: "flag"
//			,mRender: function (value,f,row,rowcols) {
//				 debugger
//				 if(typeof value =='undefined' || value== null|| value == ""){
//	           		 value="1111";
//	           	 }
//                return value;
//           }
		}, {
            title: '操作',
            mData: 'id',
            sWidth:'100px',
            mRender: function (value) {
            	var string= '<button type="button" myid="'+value+'" class="btn btn-link editbtn">编辑</button>'+
                '<button type="button" myid="'+value+'" class="btn btn-link deletebtn" data-toggle="modal" data-target="#myModal" >删除</button>';
            	 return string;
            }
        }],
//        bServerSide: true,
        sAjaxSource: searchUrl,
        sAjaxDataProp: 'rows',
//      利用行回调函数在表格的第一列显示序号
        fnRowCallback : function(nRow, aData, iDisplayIndex){  
            jQuery("td:first", nRow).html(iDisplayIndex +1);  
              return nRow;  
           }, 
        fnServerData: function (sSource, aoData, fnCallback) {//查询
//        	debugger
        	var type="";
            aodata = aoData;
            var userid=$("#user").attr("userid");
            var begin = getElement(aoData, 'iDisplayStart'),
                pageSize = getElement(aoData, 'iDisplayLength'),
                pageNumber = Math.floor(begin / pageSize) + 1;
            //额外参数
            var condition;
			condition = null;
            var serverParams = {
//            	userid:userid,
                begin: begin,
                pageSize: pageSize,
                pageNumber:pageNumber,
//                regionId:curNode==null?null:curNode.id,
//                type:type,
//                filterWords:$('input[name=filterWords]').val(),
            };
            
            $.getJSON(sSource, serverParams, function (json, retFlag) {//数据交换，传递参数，返回数据
            	if (retFlag == 'success') {
                	window.rowsLen = json.rows.length;
                    json.iTotalDisplayRecords = json.iTotalRecords = json.total;
                    fnCallback(json);
                }
            });
        },

    });
  } );







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


function getElement(aoData, prop) {
    for (var i = 0, len = aoData.length; i < len; i++) {
        var data = aoData[i];
        if (data.name == prop) {
            return data.value;
        }
    }
    return null;
}








