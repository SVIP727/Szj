<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">

    <title>单页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="//res.layui.com/layui/rc/css/layui.css?t=20180108" media="all">
    <script>
        /^http(s*):\/\//.test(location.href) || alert('请先部署到 localhost 下再访问');
    </script>
</head>
<body>
<div id="LAY_app"></div>
<script src="/LayUi/BeginnerAdmin/plugins/layui/layui.js"></script>
<script>
    layui.config({
        base: './dist/' //指定 layuiAdmin 项目路径
        ,version: '1.0.0-beta5'
    }).use('index');
</script>
</body>
</html>
