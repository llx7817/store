//var ClassName=""
var searchUrl =contextPath + "/manager/productCategory/load/search.do";
var delUrl =contextPath + "/manager/productCategory/load/delete.do";
var saveUrl =contextPath + "/manager/productCategory/load/save.do";
var editUrl =contextPath + "/manager/productCategory/edit.do";
var listUrl =contextPath + "/manager/productCategory/list.do";
var editRelationUrl=contextPath + "/manager/productCategory/editRelation.do";
$(document).ready(function(){
	//配置DataTables默认参数
    $.extend(true, $.fn.dataTable.defaults, {
        "dom": "l<'#toolbar'>frtip"
    });
    $('#myTable').DataTable({
    	iDisplayLength: 10,	
    	bFilter : false, //去掉搜索框
    	bStateSave:true,
    	bDestroy:true,
        bSort: false,//排序功能
        bAutoWidth:false,
        serverSide: true,
        language: {  
            "sProcessing": "处理中...",  
            "sLengthMenu": "显示 _MENU_ 项结果",  
            "sZeroRecords": "没有匹配结果",  
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",  
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",  
            "sInfoPostFix": "",  
            "sSearch": "搜索:",  
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
        initComplete: function () {
            //表格加载完毕，手动添加按钮到表格上
//            $("#toolbar").css("width", "100px").css("display", "inline").css("margin-left", "10px");
//            $("#toolbar").append("我有问题");
//            $("#toolbar").append("DIY");
//            $("#toolbar").append("查看已解决问题");
        	var str='<button type="button" myid="" class="btn  btn-primary editbtn" data-toggle="modal"'+
    		' data-target="#myModalEdit" style=" float: right;">新增</button>';
            $("#toolbar").html(str);

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
        },
        aoColumns: [{					//设置自定义列
            title: "<input type='checkbox' value='option1' name='b' id='selectAll'>",
            sWidth: '10px',
            mData: 'id',
            mRender: function (value) {
                return "<input type='checkbox' value='" + value + "' name='ids' style='margin-left: 8px;'>";
            }
        },{
			sTitle: '名称',
			sWidth:'100px',
			mData: 'name'
        },{
			sTitle: '上一级',
			sWidth:'100px',
			mData: 'parentProductCategory'
			,mRender: function (value,f,row,rowcols) {
				debugger
		           	 var myValue=" ";
		           	 if(typeof value !='undefined' && value != null&& value != ""){
		           		 myValue=value.name;
		           	 }
		                return myValue;
		           }
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
            	var string= '<button type="button" myid="'+value+'" class="btn  btn-link editRelationbtn" '+
        		' >编辑关联</button>'+'<button type="button" myid="'+value+'" class="btn btn-link editbtn" data-toggle="modal" data-target="#myModalEdit">编辑</button>'+
                '<button type="button" myid="'+value+'" class="btn btn-link deletebtn" data-toggle="modal" data-target="#myModalDelete" >删除</button>';
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
        		$("#parentProductCategoryId").val(data.parentProductCategoryId);
        	}
        }, error: function() {  
            alert("失败，请稍后再试！");  
        }  
    }); 
	  $(".deleteOK").click(id,function(){
		  var name =$("#name").val();
		  var parentProductCategoryId=$("#parentProductCategoryId").val();
//		  var url = saveUrl + "?id=" + id+"&name="+name;
		  var encodeUrl = encodeURI(saveUrl); 
		  params={
				  id:id,
				  name:name,
				  parentProductCategoryId:parentProductCategoryId
		  };
		  $.post(encodeUrl, params,	function(data) {
//				debugger
				var flag=data;
//				alert("保存成功！");
			});
//		  $.post(encodeUrl);
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
$(document).on("click",".editRelationbtn",function(){//修改成这样的写法
		 var id= $(this).attr("myid");
		 var url = editRelationUrl + "?id=" + id;
		 window.location.href= url;
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








