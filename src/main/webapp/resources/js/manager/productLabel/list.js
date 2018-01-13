//var ClassName=""
var searchUrl =contextPath + "/manager/productLabelLabel/load/search.do";
var delUrl =contextPath + "/manager/productLabelLabel/load/delete.do";
var editUrl =contextPath + "/manager/productLabelLabel/edit.do";
var listUrl =contextPath + "/manager/productLabelLabel/list.do";
$(document).ready(function(){
    $('#myTable').DataTable({
    	iDisplayLength: 10,	
    	bStateSave:true,
    	bDestroy:true,
        bSort: false,
        bAutoWidth:false,
        serverSide: true,
        aoColumns: [{					//设置自定义列
            title: "<input type='checkbox' value='option1' name='b' id='selectAll'>",
            sWidth: '10px',
            mData: 'id',
            mRender: function (value) {
                return "<input type='checkbox' value='" + value + "' name='ids'>";
            }
        },{
			sTitle: '名称',
			sWidth:'100px',
			mData: 'name'
		}, {
            title: '操作',
            mData: 'id',
            sWidth:'250px',
            mRender: function (value) {
//            	var json = {
//            			"编辑":{
//            				clazz:ClassName,
//            				value:value,
//    						relid:'edit'
//    					},
//    					"删除":{
//    						clazz:ClassName,
//    						value:value,
//    						relid:'delete'
//    					}
//                	};
            	var string= '<button type="button" myid="'+value+'" class="btn btn-link editbtn">编辑</button>'+
                '<button type="button" myid="'+value+'" class="btn btn-link deletebtn" data-toggle="modal" data-target="#myModal" >删除</button>';
            	 return string;
            }
        }],
        bServerSide: true,
        sAjaxSource: searchUrl,
        sAjaxDataProp: 'rows',
        fnServerData: function (sSource, aoData, fnCallback) {//查询
//        	debugger
        	var type="";
            aodata = aoData;
            var begin = getElement(aoData, 'iDisplayStart'),
                pageSize = getElement(aoData, 'iDisplayLength'),
                pageNumber = Math.floor(begin / pageSize) + 1;
            //额外参数
            var condition;
			condition = null;
            var serverParams = {
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








