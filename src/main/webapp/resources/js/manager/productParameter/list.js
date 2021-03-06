//var ClassName=""
var searchUrl =contextPath + "/manager/productParameter/load/search";
var delUrl =contextPath + "/manager/productParameter/load/delete";
var saveUrl =contextPath + "/manager/productParameter/load/save";
var editUrl =contextPath + "/manager/productParameter/edit";
var listUrl =contextPath + "/manager/productParameter/list";
$(document).ready(function(){
	//配置DataTables默认参数
//    $.extend(true, $.fn.dataTable.defaults, {
//        "dom": "l<'#toolbar'>frtip"
//    });
    $('#myTable').DataTable({
    	iDisplayLength: 10,	
    	bFilter : true, //搜索框
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
//        initComplete: function () {
            //表格加载完毕，手动添加按钮到表格上
//            $("#toolbar").css("width", "100px").css("display", "inline").css("margin-left", "10px");
//            $("#toolbar").append("我有问题");
//            $("#toolbar").append("DIY");
//            $("#toolbar").append("查看已解决问题");
//            $("#toolbar").html( '<button type="button" myid="" class="btn  btn-primary ml20 editbtn" data-toggle="modal"'+
//            		' data-target="#myModalEdit" style=" float: right;">新增</button>');

//            //加载已经关闭的问题
//            $(".closedIssue").clickToggle(function () {
//                //调用url方法切换dt的数据源
//                githubTable.ajax.url("https://api.github.com/repos/ssy341/datatables-cn/issues?state=closed").load();
//                $(this).text("查看未解决问题").css("color", "#FF0000");
//            }, function () {
//                githubTable.ajax.url("https://api.github.com/repos/ssy341/datatables-cn/issues").load();
//                $(this).text("查看已解决问题").css("color", "#009900");
//            });
//
//            //查看本例子代码
//            $(".viewCode").click(function(){
//                //显示模态框展示代码
//                $("#issueTableCode").modal("show");
//                $("#issueTableCodeContent").html($("#issueTableScript").html());
//            });
//        },
        aoColumns: [
//        	{					//设置自定义列
//            title: "<input type='checkbox' value='option1' name='b' id='selectAll'>",
//            sWidth: '10px',
//            mData: 'id',
//            mRender: function (value) {
//                return "<input type='checkbox' value='" + value + "' name='ids' style='margin-left: 8px;'>";
//            }
//        },
        	  {
        		  sTitle: '序号',
        		  sWidth:'50px',
        		  "data": null ,//此列不绑定数据源，用来显示序号'
        		  "targets": 0
      	},{
			sTitle: '名称',
			sWidth:'200px',
			mData: 'name'
		}, {
            title: '操作',
            mData: 'id',
            sWidth:'200px',
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
            	var string= '<button type="button" myid="'+value+'" class="btn btn-link editbtn" data-toggle="modal" data-target="#myModalEdit">编辑</button>'+
                '<button type="button" myid="'+value+'" class="btn btn-link deletebtn" data-toggle="modal" data-target="#myModalDelete" >删除</button>';
            	 return string;
            }  
        }],
        bServerSide: true,
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
    //在搜索框后面追加新增按钮
    var str='<span><button type="button" myid="" class="btn  btn-primary editbtn ml20" data-toggle="modal"'+
    ' data-target="#myModalEdit" style=" float: right;">新增</button></span>';
    $("#myTable_filter").find("label").append( str);
  });







$(document).on("click",".editbtn",function(){
	debugger
	var id= $(this).attr("myid");
	var loadUrl = editUrl + "?id=" + id;
	var string="编辑";
	if(id=="")string="新增";
	$("#editTitle").html(string);
    $.ajax({  
        type : "get",  
        async : false,  //同步请求  
        url : loadUrl,  
//        timeout:1000,  
        success:function(data){  
        	var length=data.length;
        	if(data!=null){
        		$("#id").val(data.id);
        		$("#name").val(data.name);
        	}
        }, error: function() {  
            alert("失败，请稍后再试！");  
        }  
    }); 
	  $(".deleteOK").click(id,function(){
//		  var params = form.serialize();
//		     var action = form.attr("action");
//			$.post(action, params,	function(data) {
//				debugger
//				var flag=data;
//				alert("保存成功！");
//			});
		  var name =$("#name").val();
		  var url = saveUrl + "?id=" + id+"&name="+name;
		  var encodeUrl = encodeURI(url); 
		  $.post(encodeUrl);
		  location.reload([true]);
	  });
//       window.location.href= url;
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








