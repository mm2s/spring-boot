<#macro header>
<header class="main-header">

    <a href="#" class="logo">
        <span class="logo-mini">
            <img src="${ctx}/local/img/logo.jpg">
        </span>
        <span class="logo-lg">
            <img src="${ctx}/local/img/logo.jpg">远大集团
        </span>
    </a>

    <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">切换按钮</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!--  -->
                <li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="label label-success">1</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">您有1条消息</li>
                        <li>
                            <ul class="menu">
                                <li>
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="${ctx}/admin-lte/img/user2-160x160.jpg"
                                                 class="img-circle" alt="User Image"/>
                                        </div>
                                        <h4>
                                            技术支持
                                            <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                                        </h4>
                                        <p>为毛你不搞个好点的主题</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="#">查看所有消息</a></li>
                    </ul>
                </li>

                <li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-warning">2</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">你有2条通知</li>
                        <li>
                            <ul class="menu">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-users text-aqua"></i> 今天有5个小伙子加入咱团队
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-warning text-yellow"></i>
                                        很长的描述可能导致排版不是很美观哟! 比如你就看不到这段文字了 ^o^
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="#">显示所有</a></li>
                    </ul>
                </li>

                <li class="dropdown tasks-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-flag-o"></i>
                        <span class="label label-danger">3</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">您有3条待办</li>
                        <li>
                            <ul class="menu">
                                <li>
                                    <a href="#">
                                        <h3>
                                            升级下按钮控件
                                            <small class="pull-right">20%</small>
                                        </h3>
                                        <div class="progress xs">
                                            <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                 role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                 aria-valuemax="100">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer">
                            <a href="#">查看所有的待办</a>
                        </li>
                    </ul>
                </li>

                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${ctx}/local/img/muraty.jpg" class="user-image" alt="User Image"/>
                        <span class="hidden-xs">姓名</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="user-header">
                            <img src="${ctx}/local/img/muraty.jpg" class="img-circle" alt="User Image"/>
                            <p>
                                姓名 - 职务
                                <small>入职时间</small>
                            </p>
                        </li>
                        <!-- Menu Body -->
                        <li class="user-body">
                            <div class="row">
                                <div class="col-xs-4 text-center">
                                    <a href="#">赞</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">业绩</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">好友</a>
                                </div>
                            </div>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a id="main_user_setting" href="#" class="btn btn-default btn-flat">设置</a>
                            </div>
                            <div class="pull-right">
                                <a href="#" class="btn btn-default btn-flat">登出</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
</#macro>