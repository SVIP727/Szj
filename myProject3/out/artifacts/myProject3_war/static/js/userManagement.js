/* ---------------------------- 表格配置 ---- 开始 -------------------------- */
// tb_balanceList balanceModal  tb_integralList integralModal
$(function () {
    //1.初始化Table
    var uTable = new uTableInit();
    uTable.Init();
    var bTable = new bTableInit();
    bTable.Init();
    var iTable = new iTableInit();
    iTable.Init();
});

// 积分 列表
var iTableInit = function () {
    $("#tb_integralList").bootstrapTable('destroy');
    var iTableInit = new Object();
    // 初始化 Table
    iTableInit.Init = function () {
        $('#tb_integralList').bootstrapTable({
            url: '/user/userData.do',
            method: 'post',
            uniqueId: "id",
            striped: true,
            cache: true,                       //设置为 true 禁用 AJAX 数据缓存
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: iTableInit.queryParams,//传递参数（*）
            queryParamsType:'',
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 5,                       //每页的记录行数（*）
            pageList: [5, 10, 25, 100, "All"],        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            contentType: "application/x-www-form-urlencoded",
            //strictSearch: true,
            showColumns: false,                  //是否显示所有的列
            showRefresh: false,                  //是否显示刷新按钮
            columns: [{
                field: 'nickName',
                title: '标题',
                align: 'center'
            }, {
                field: 'weiXin',
                title: '金额',
                align: 'center'
            }, {
                field: 'openID',
                title: '余额',
                align: 'center'
            }, {
                field: 'tel',
                title: '时间',
                align: 'center'
            }]
        });

    };
    return iTableInit;
};

// 余额 列表
var bTableInit = function () {
    $("#tb_balanceList").bootstrapTable('destroy');
    var bTableInit = new Object();
    // 初始化 Table
    bTableInit.Init = function () {
        $('#tb_balanceList').bootstrapTable({
            url: '/user/userData.do',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            striped: true,                      //是否显示行间隔色
            cache: true,                       //设置为 true 禁用 AJAX 数据缓存
            pagination: true,                   //是否显示分页（*）
            sortOrder: "asc",                   //排序方式
            queryParams: bTableInit.queryParams,//传递参数（*）
            queryParamsType:'',
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 5,                       //每页的记录行数（*）
            contentType: "application/x-www-form-urlencoded",
            columns: [ {
                field: 'nickName',
                title: '类型',
                align: 'center'
            }, {
                field: 'weiXin',
                title: '金额',
                align: 'center'
            }, {
                field: 'openID',
                title: '余额',
                align: 'center'
            }, {
                field: 'tel',
                title: '备注',
                align: 'center'
            }, {
                field: 'tel',
                title: '时间',
                align: 'center'
            }]
        });

    };
    return bTableInit;
};

// 用户 列表
var uTableInit = function () {
    $("#tb_userList").bootstrapTable('destroy');
    var uTableInit = new Object();
    // 初始化 Table
    uTableInit.Init = function () {
        $('#tb_userList').bootstrapTable({
            url: '/user/userData.do',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            uniqueId: "id",                     //每一行的唯一标识，一般为主键列
            striped: true,                      //是否显示行间隔色
            cache: true,                       //设置为 true 禁用 AJAX 数据缓存
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: uTableInit.queryParams,//传递参数（*）
            queryParamsType:'',
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       //初始化加载第一页，默认第一页
            pageSize: 5,                       //每页的记录行数（*）
            pageList: [5, 10, 25, 100, "All"],        //可供选择的每页的行数（*）
            search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            contentType: "application/x-www-form-urlencoded",
            //strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 3,             //最少允许的列数
            singleSelect: false,                //开启单选，默认为多选
            //clickToSelect: true,                //是否启用点击选中行
            //     height: 450,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns: [{
                checkbox: true
            }, {
                field: 'photo',
                title: '头像',
                align: 'center'
            }, {
                field: 'nickName',
                title: '昵称',
                align: 'center'
            }, {
                field: 'weiXin',
                title: '微信号',
                align: 'center'
            }, {
                field: 'openID',
                title: 'openID',
                align: 'center'
            }, {
                field: 'tel',
                title: 'Tel',
                align: 'center'
            }, {
                title: '余额列表',
                formatter: moneyFormatter,
                align: 'center'
            }, {
                title: '订单列表',
                formatter: orderListFormatter,
                align: 'center'
            }, {
                title: '积分列表',
                formatter: integralListFormatter,
                align: 'center'
            }, {
                title: '操作',
                formatter: operateFormatter,
                align: 'center'
            }]
        });

    };

    //得到查询的参数
    uTableInit.queryParams = function (params) {
        //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
        return {
            pageNumber: params.pageNumber,
            pageSize: params.pageSize
        };
    };
    return uTableInit;

    // 格式   '"+row.id+"'
    function moneyFormatter(value,row) {
        var moneyStr = "<a href=\"javascript:balanceModalOpen();\"><span class='layui-icon' aria-hidden='true' style='margin-right: 5px' title='查看余额列表'>&#xe65e;</span></a>";
        return moneyStr+row.money;
    }
    function operateFormatter(value,row) {
        var delStr = "<a href=\"javascript:delOpen();\"><span class='glyphicon glyphicon-remove' title='删除'></span></a>";
        return delStr;
    }
    function orderListFormatter(value,row) {
        var delStr = "<a href=\"javascript:orderListOpen();\"><span class='glyphicon glyphicon-search' title='查看'></span></a>";
        return delStr;
    }
    function integralListFormatter(value,row) {
        var delStr = "<a href=\"javascript:integralModalOpen();\"><span class='glyphicon glyphicon-search' title='查看'></span></a>";
        return delStr;
    }

};
/* ---------------------------- 表格配置 ---- 结束 -------------------------- */
// tb_balanceList balanceModal  tb_integralList integralModal
// 搜索绑定
$("#btn_query").bind("click",function () {
    $("#tb_userList").bootstrapTable('refreshOptions', {pageNumber: 1});
});
$("#btn_refresh_balance").bind("click",function () {
    $("#tb_balanceList").bootstrapTable('refreshOptions', {pageNumber: 1});
});
$("#btn_refresh_integral").bind("click",function () {
    $("#tb_integralList").bootstrapTable('refreshOptions', {pageNumber: 1});
});

//
function balanceModalOpen() {
    $("#tb_balanceList").bootstrapTable('refresh');
    $("#balanceModal").modal("show").css({"padding-top":'70px'});
}
function integralModalOpen() {
    $("#tb_integralList").bootstrapTable('refresh');
    $("#integralModal").modal("show").css({"padding-top":'70px'});
}