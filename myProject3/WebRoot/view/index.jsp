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
    <title>水管维修服务管理系统</title>
    <link rel="stylesheet" href="/LayUi/BeginnerAdmin/plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/LayUi/BeginnerAdmin/build/css/app.css" media="all">
</head>

<body>
<div class="layui-layout layui-layout-admin kit-layout-admin" >
    <div class="layui-header">
        <a class="layui-logo" href="javascript:location.reload();">Sue ZhiJun</a>

        <%--<ul class="layui-nav layui-layout-left kit-nav">
            <li class="layui-nav-item"><a href="javascript:;">首页</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">邮件管理</a></dd>
                    <dd><a href="javascript:;">消息管理</a></dd>
                    <dd><a href="javascript:;">授权管理</a></dd>
                </dl>
            </li>
        </ul>--%>
        <ul class="layui-nav layui-layout-right kit-nav">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://m.zhengjinfan.cn/images/0.jpg" class="layui-nav-img"> Van
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">基本资料</a></dd>
                    <dd><a href="javascript:;">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="javascript:;" style="margin-right: 15px"><i class="layui-icon" aria-hidden="true"></i>【注销】</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black kit-side">
        <div class="layui-side-scroll" >
            <div class="kit-side-fold">
                <i class="layui-icon" aria-hidden="true">&#xe600;</i>
            </div>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" kit-navbar >
               <li class="layui-nav-item layui-nav-itemed">
                    <a style="cursor:pointer"><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe735;</i><span>用户管理</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a style="cursor:pointer" data-url="view/userManagement.jsp" data-icon="&#xe613;" data-title="会员管理" kit-target
                               data-id='101'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe613;</i><span>会员管理</span></a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a style="cursor:pointer"><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe659;</i><span>资金管理</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a style="cursor:pointer" data-url="view/cashManagement.jsp" data-icon="&#xe60e;" data-title="提现管理" kit-target
                               data-id='201'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe60e;</i><span>提现管理</span></a>
                        </dd>
                        <dd>
                            <a  style="cursor:pointer" data-url="view/rechargeManagement.jsp" data-icon="&#xe608;" data-title="充值管理" kit-target
                               data-id='202'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe608;</i><span>充值管理</span></a>
                        </dd>
                        <dd>
                            <a style="cursor:pointer" data-url="view/receivablesManagement.jsp" data-icon="&#xe63c;" data-title="收款管理" kit-target
                               data-id='203'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe63c;</i><span> 收款管理</span></a>
                        </dd>
                        <dd>
                            <a style="cursor:pointer" data-url="view/balanceManagement.jsp" data-icon="&#xe65e;" data-title="余额管理" kit-target
                               data-id='204'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe65e;</i><span>余额管理</span></a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a style="cursor:pointer"><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe614;</i><span>系统设置</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a style="cursor:pointer" data-url="view/noticeManagement.jsp" data-icon="&#xe63a;" data-title="公告" kit-target
                               data-id='301'><i class="layui-icon" aria-hidden="true" style="margin-right: 7px">&#xe63a;</i><span>公告</span></a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-body" id="container">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">主体内容加载中,请稍等...</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        2018 &copy;
        <a href="http://www.baidu.com/">www.szj.com/</a> Szj license

    </div>
</div>
<script language="javascript">
    var BASE_PATH = "<%=basePath%>/";
</script>
<script src="/LayUi/BeginnerAdmin/plugins/layui/layui.js"></script>
<script>
    var message;
    layui.config({
        base: BASE_PATH+'LayUi/BeginnerAdmin/build/js/'
    }).use(['app', 'message'], function () {
        var app = layui.app,
            $ = layui.jquery,
            layer = layui.layer;
        //将message设置为全局以便子页面调用
        message = layui.message;
        //主入口
        app.set({
            type: 'iframe'
        }).init();
        $('#pay').on('click', function () {
            layer.open({
                title: false,
                type: 1,
                content: '<img src="/build/images/pay.png" />',
                area: ['500px', '250px'],
                shadeClose: true
            });
        });
    });
</script>
</body>

</html>
