<#include "/layouts/header.ftl"/>
<#include "/layouts/left.ftl"/>
<#include "/layouts/footer.ftl"/>
<#include "/layouts/setting.ftl"/>
<#macro layout title>
<@compress single_line=true>
    <#assign ctx=request.contextPath>
<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>
<#-- 页面编码 -->
    <meta charset="utf-8"/>
<#-- 浏览器标识 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<#-- 浏览器响应屏幕宽度 -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
<#-- logo -->
    <link href="${ctx}/local/img/icon.jpg" rel="icon" type="image/x-icon"/>
<#-- Bootstrap -->
    <link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.min.css"/>
<#-- 字体 -->
    <link rel="stylesheet" href="${ctx}/fontawesome/css/font-awesome.min.css"/>
<#-- 图标 -->
    <link rel="stylesheet" href="${ctx}/ionicons/css/ionicons.min.css"/>
<#-- iCheck -->
    <link rel="stylesheet" href="${ctx}/iCheck/flat/blue.css"/>
<#-- 时间控件 -->
    <link rel="stylesheet" href="${ctx}/datepicker/datepicker3.css"/>
<#-- 日期控件 -->
    <link rel="stylesheet" href="${ctx}/datetimepicker/bootstrap-datetimepicker.min.css"/>
<#-- editable -->
    <link rel="stylesheet" href="${ctx}/editable/css/bootstrap-editable.css"/>
<#-- bootstrapTable -->
    <link rel="stylesheet" href="${ctx}/bootstrapTable/bootstrap-table.min.css"/>
<#-- 表单验证 -->
    <link rel="stylesheet" href="${ctx}/validator/bootstrapValidator.min.css"/>
<#-- 文件上传下载 -->
    <link rel="stylesheet" href="${ctx}/fileinput/css/fileinput.min.css"/>
<#-- pace -->
    <link rel="stylesheet" href="${ctx}/pace/pace.min.css"/>
<#-- fullcalendar -->
    <link rel="stylesheet" href="${ctx}/fullcalendar/fullcalendar.min.css"/>
<#-- select控件 -->
    <link rel="stylesheet" href="${ctx}/select2/select2.min.css"/>
<#-- zTree 控件 -->
    <link rel="stylesheet" href="${ctx}/ztree/css/metroStyle/metroStyle.css"/>
<#-- admin-lte 主题 -->
    <link rel="stylesheet" href="${ctx}/admin-lte/css/AdminLTE.min.css"/>
<#-- admin-lte 皮肤 -->
    <link rel="stylesheet" href="${ctx}/admin-lte/css/skins/_all-skins.min.css"/>
<#-- 浏览器兼容 -->
    <!--[if lt IE 9]>
    <script src="${ctx}/html5shiv/html5.min.js"></script>
    <script src="${ctx}/respond/respond.min.js"></script>
    <![endif]-->
<#-- jQuery -->
    <script src="${ctx}/jQuery/jquery.min.js"></script>
<#-- bootstrap -->
    <script src="${ctx}/bootstrap/js/bootstrap.min.js"></script>
<#-- layer -->
    <script src="${ctx}/layer/layer.js"></script>
<#-- 表单验证 -->
    <script src="${ctx}/validator/bootstrapValidator.min.js"></script>
<#-- 日期控件 -->
    <script src="${ctx}/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<#-- 日期控件国际化 -->
    <script src="${ctx}/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<#-- 时间控件 -->
    <script src="${ctx}/datepicker/bootstrap-datepicker.js"></script>
<#-- 统计报表(条形图,柱状图) -->
    <script src="${ctx}/chartjs/Chart.js"></script>
<#-- FastClick -->
    <script src="${ctx}/fastclick/fastclick.min.js"></script>
<#-- editable -->
    <script src="${ctx}/editable/js/bootstrap-editable.min.js"></script>
<#-- 表格显示控件 -->
    <script src="${ctx}/bootstrapTable/bootstrap-table.min.js"></script>
<#-- 表格显示手机端适配 -->
    <script src="${ctx}/bootstrapTable/bootstrap-table-mobile.min.js"></script>
<#-- 表格显示国际化 -->
    <script src="${ctx}/bootstrapTable/bootstrap-table-zh-CN.min.js"></script>
<#-- editable 和 bootstrapTable 整合 -->
    <script src="${ctx}/bootstrapTable/extensions/bootstrap-table-editable.min.js"></script>
<#-- pace -->
    <script src="${ctx}/pace/pace.min.js"></script>
<#-- slimscroll -->
    <script src="${ctx}/slimScroll/slimScroll.min.js"></script>
<#-- AdminLTE App -->
    <script src="${ctx}/admin-lte/js/app.js"></script>
<#-- 文件上传下载 -->
    <script src="${ctx}/fileinput/js/fileinput.min.js"></script>
<#-- 文件上传下载国际化 -->
    <script src="${ctx}/fileinput/js/locales/zh.js"></script>
<#-- select 控件 -->
    <script src="${ctx}/select2/select2.full.min.js"></script>
<#-- 日期控件依赖 -->
    <script src="${ctx}/moment/moment.min.js"></script>
<#-- 日期控件依赖国际化 -->
    <#--<script src="${ctx}/moment/zh-cn.js"></script>-->
<#-- fullcalendar -->
    <script src="${ctx}/fullcalendar/fullcalendar.min.js"></script>
<#-- fullcalendar 国际化 -->
    <script src="${ctx}/fullcalendar/zh-cn.js"></script>
<#-- fullcalendar -->
    <script src="${ctx}/fullcalendar/scheduler.min.js"></script>
<#-- select 控件国际化 -->
    <script src="${ctx}/select2/i18n/zh-CN.js"></script>
<#-- zTree 树控件 -->
    <script src="${ctx}/ztree/js/jquery.ztree.all.min.js"></script>
<#-- 应用个人js -->
    <script src="${ctx}/local/js/local.js"></script>
<#-- 从后台初始化取值 -->
    <script>
        $(function () {
            $("body").addClass("skin-blue-light");
        });
    </script>
</head>
<body class="sidebar-mini">
<div class="wrapper">
    <#-- Header -->
    <@header/>
    <#-- left -->
    <@left/>
    <#-- main content -->
    <#nested>
    <#-- footer -->
    <@footer/>
    <#--header.setting-->
    <@setting/>

</div>
</body>
</html>
</@compress>
</#macro>