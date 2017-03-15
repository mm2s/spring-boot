<@compress single_line=true>
<#assign ctx=request.contextPath>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <#-- 页面编码 -->
    <meta charset="utf-8"/>
    <#-- 浏览器标识 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <#-- 浏览器响应屏幕宽度 -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <#-- logo -->
    <link href="${ctx}/local/img/logo.jpg" rel="icon" type="image/x-icon"/>
    <#-- Bootstrap -->
    <link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.min.css"/>
    <#-- 字体 -->
    <link rel="stylesheet" href="${ctx}/fontawesome/css/font-awesome.min.css"/>
    <#-- 图标 -->
    <link rel="stylesheet" href="${ctx}/ionicons/css/ionicons.min.css"/>
    <#-- admin-lte 主题 -->
    <link rel="stylesheet" href="${ctx}/admin-lte/css/AdminLTE.min.css"/>
    <#-- iCheck -->
    <link rel="stylesheet" href="${ctx}/iCheck/square/blue.css"/>
    <#-- 浏览器兼容 -->
    <!--[if lt IE 9]>
    <script src="${ctx}/html5shiv/html5.min.js"></script>
    <script src="${ctx}/respond/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">

    <div class="login-logo">
        <a href="#"><b>Admin</b>LTE</a>
    </div>

    <div class="login-box-body">
        <p class="login-box-msg">登录</p>

        <form action="#" method="post">
            <div class="form-group has-feedback">
                <input name="username" type="text" class="form-control" placeholder="卡号">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> 记住密码
                        </label>
                    </div>
                </div>

                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
            </div>
        </form>

        <a href="#" onclick="$('#forgetModal').modal('show')">忘记密码</a><br>

        <div id="forgetModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">忘记密码</h4>
                    </div>
                    <div class="modal-body">
                        <p>1. 密码修改请联系互联网+部 : 6622</p>
                        <p>2. 初始化密码后,密码为默认密码: 1111</p>
                        <p>3. 密码初始化后,请及时修改密码</p>
                        <p>4. 推荐使用 英文+数字修改密码,不建议使用默认密码</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#-- jQuery -->
<script src="${ctx}/jQuery/jquery.min.js"></script>
<#-- Bootstrap -->
<script src="${ctx}/bootstrap/js/bootstrap.min.js"></script>
<#-- iCheck -->
<script src="${ctx}/iCheck/icheck.js"></script>
<script>

    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });

</script>
</body>
</html>
</@compress>