var githubTable;
    $(document).ready(function () {

        //配置DataTables默认参数
        $.extend(true, $.fn.dataTable.defaults, {
            "language": {
                "url": "/assets/Chinese.txt"
            },
            "dom": "l<'#toolbar'>frtip"
        });

        //issue表格初始化
        githubTable = $("#issueTable").DataTable({
            //调用github api 获取issues 数据
            ajax: {
                url: "https://api.github.com/repos/ssy341/datatables-cn/issues",
                dataSrc: ""
            },
            //默认最后一列（最后更新时间）降序排列
            order: [[4, "desc"]],
            //行被创建回调
            createdRow: function (row, data, dataIndex) {
                var updated_at = new Date(Date.parse(data.updated_at)).Format("yyyy-MM-dd hh:mm:ss");
                updated_at = new Date(updated_at).getTime();
                var current = new Date().getTime();
                var bl = current - updated_at;
                var s = 5 * 24 * 60 * 60 * 1000;
                //最后更新日期在最近5天则突出显示
                if (bl < s) {
                    $(row).addClass('unread');
                }
            },
            //行创建完成后回调
            rowCallback: function (row, data, index) {
                var tags = $(row).find("td:eq(1)");
                if (tags.text().indexOf("置顶") > 0) {
                    var title = $(row).find("td:eq(0)");
                    var hot = "";
                    title.html(title.html() + hot);
                }
            },
            columnDefs: [
                {
                    targets: 4,
                    data: "updated_at",
                    title: "",
                    render: function (data, type, row, meta) {
                        return new Date(Date.parse(data)).Format("yyyy-MM-dd hh:mm:ss");
                    }
                },
                {
                    targets: 3,
                    data: null,
                    title: "",
                    render: function (data, type, row, meta) {
                        return "" + row.user.login + "";
                    }
                },
                {
                    targets: 2,
                    data: "comments",
                    title: "",
                    render: function (data, type, row, meta) {
                        var comments = data + "";
                        return comments;
                    }
                },
                {
                    targets: 1,
                    data: null,
                    title: "",
                    render: function (data, type, row, meta) {
                        var labels = "";
                        if (row.labels.length) {
                            for (var j = 0, labelslen = row.labels.length; j < labelslen; j++) {
                                labels += "" +
                                        row.labels[j].name + "";
                                if (j != labelslen - 1) {
                                    labels += ",";
                                }
                            }
                        }
                        return labels;
                    }
                },
                {
                    targets: 0,
                    data: "title",
                    title: "",
                    render: function (data, type, row, meta) {
                        var title = "" + row.title + "";
                        return title;
                    }
                }
            ],
            initComplete: function () {
                //表格加载完毕，手动添加按钮到表格上
                $("#toolbar").css("width", "100px").css("display", "inline").css("margin-left", "10px");
                $("#toolbar").append("我有问题");
                $("#toolbar").append("DIY");
                $("#toolbar").append("查看已解决问题");
                $("#toolbar").append("查看本实例代码");

                //加载已经关闭的问题
                $(".closedIssue").clickToggle(function () {
                    //调用url方法切换dt的数据源
                    githubTable.ajax.url("https://api.github.com/repos/ssy341/datatables-cn/issues?state=closed").load();
                    $(this).text("查看未解决问题").css("color", "#FF0000");
                }, function () {
                    githubTable.ajax.url("https://api.github.com/repos/ssy341/datatables-cn/issues").load();
                    $(this).text("查看已解决问题").css("color", "#009900");
                });

                //查看本例子代码
                $(".viewCode").click(function(){
                    //显示模态框展示代码
                    $("#issueTableCode").modal("show");
                    $("#issueTableCodeContent").html($("#issueTableScript").html());
                });
            }
        });
    });

    //时间格式化
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1,
            //月份
            "d+": this.getDate(),
            //日
            "h+": this.getHours(),
            //小时
            "m+": this.getMinutes(),
            //分
            "s+": this.getSeconds(),
            //秒
            "q+": Math.floor((this.getMonth() + 3) / 3),
            //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    };

    //事件来回切换方法
    //solve this
    //reference http://stackoverflow.com/questions/4911577/jquery-click-toggle-between-two-functions
    (function ($) {
        $.fn.clickToggle = function (func1, func2) {
            var funcs = [func1, func2];
            this.data('toggleclicked', 0);
            this.click(function () {
                var data = $(this).data();
                var tc = data.toggleclicked;
                $.proxy(funcs[tc], this)();
                data.toggleclicked = (tc + 1) % 2;
            });
            return this;
        };
    }(jQuery));
