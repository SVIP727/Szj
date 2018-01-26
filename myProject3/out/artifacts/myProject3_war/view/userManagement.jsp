<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">

    <title>会员管理</title>
    <link rel="stylesheet" href="/LayUi/BeginnerAdmin/plugins/layui/css/layui.css" media="all">

    <%--1、JQ --%>
    <script src="/static/js/common/jquery-2.1.1.min.js"></script>
    <%--2、bootstrap组件引用--%>
    <script src="/static/bootstrap/bootstrap.min.js"></script>
    <link href="/static/bootstrap/bootstrap.min.css" rel="stylesheet"/>
    <%--3、bootstrap table组件以及中文包的引用--%>
    <script src="/static/bootstrap/bootstrap-table.min.js"></script>
    <link href="/static/bootstrap/bootstrap-table.min.css" rel="stylesheet"/>
    <script src="/static/bootstrap/bootstrap-table-zh-CN.min.js"></script>

</head>

<body>
<div style="padding: 10px 35px 5px 35px;">
    <div class="panel-body">
        <div class="panel panel-default">
            <div class="panel-heading">搜索权限（综合查询）</div>
            <div class="panel-body">
                <form id="formSearch" class="form-horizontal">
                    <div class="form-group" style="margin-top:15px;margin-right:15px">
                        <label class="control-label col-sm-1" for="search_name">昵称</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="search_name" maxlength="10"/>
                        </div>

                        <label class="control-label col-sm-1" for="search_flag">微信号</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="search_flag" maxlength="10"/>
                        </div>

                        <label class="control-label col-sm-1" for="search_Time">注册时间</label>
                        <div id="search_Time">
                            <div class="col-sm-2">
                                <input type="text" class="form-control" id="search_TimeA"/>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" class="form-control" id="search_TimeB"/>
                            </div>
                        </div>

                        <span>
                                <button type="reset" class="btn btn-default">
                                    <span class="glyphicon glyphicon-trash"></span>
                                </button>
                                <button type="button" id="btn_query" class="btn btn-info">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                        </span>
                    </div>
                </form>
            </div>
        </div>

        <div id="toolbar" class="btn-group">
            <button class="btn btn-default" id="btn_add" type="button">
                <span class="glyphicon glyphicon-plus" style="margin-right: 5px"></span>添加权限
            </button>
            <button class="btn btn-default" id="btn_delSelect" type="button">
                <span class="glyphicon glyphicon-minus" style="margin-right: 5px;"></span>批量删除
            </button>
        </div>

        <table id="tb_userList"></table>
    </div>
</div>

<%-- 余额列表  tb_balanceList balanceModal btn_refresh_balance  --%>
<div class="modal fade" id="balanceModal">
    <div class="modal-dialog"  style="min-width:900px">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">
                    <span style="font-size:x-large">余额列表</span>
                    <button type="button" class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <button type="button" id="btn_refresh_balance"  class="close" style="margin-right: 15px">
                        <span class="glyphicon glyphicon-refresh"></span>
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <table id="tb_balanceList"></table>
            </div>
        </div> <%-- /.modal-content --%>
    </div> <%-- /.modal-dialog --%>
</div> <%-- /.modal --%>

<%-- 积分列表  tb_integralList integralModal btn_refresh_integral--%>
<div class="modal fade" id="integralModal">
    <div class="modal-dialog"  style="min-width:900px">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title">
                    <span style="font-size:x-large">积分列表</span>
                    <button type="button" class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <button type="button" id="btn_refresh_integral" class="close" style="margin-right: 15px">
                        <span class="glyphicon glyphicon-refresh"></span>
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <table id="tb_integralList"></table>
            </div>
        </div> <%-- /.modal-content --%>
    </div> <%-- /.modal-dialog --%>
</div> <%-- /.modal --%>

<script src="/LayUi/BeginnerAdmin/plugins/layui/layui.js"></script>
<script src="/static/js/userManagement.js"></script>
<script>
    layui.use('form', function () {
            var form = layui.form;
        }
    );
    layui.use('laydate', function () {
        var timeA = layui.laydate;
        var timeB = layui.laydate;

        //执行一个laydate实例
        timeA.render({
            elem: '#search_TimeA' //指定元素
        });
        timeB.render({
            elem: '#search_TimeB'
        });
    });
</script>
</body>
</html>
