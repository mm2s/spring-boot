<#macro left>
<aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${ctx}/local/img/muraty.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>姓名</p>
                <i class="fa fa-circle text-success"></i> 在线
            </div>
        </div>
        <ul class="sidebar-menu">
            <li>
                <a href="${ctx}">
                    <i class="glyphicon glyphicon-home text-blue"></i>
                    <span> 首页</span>
                </a>
            </li>
            <li>
                <a href="${ctx}">
                    <i class="fa fa-plus-square text-green"></i>
                    <span> 目录一</span>
                </a>
            </li>
            <li>
                <a href="${ctx}">
                    <i class="glyphicon glyphicon-tasks text-gray"></i>
                    <span> 目录二</span>
                </a>
            </li>
            <li>
                <a href="${ctx}">
                    <i class="glyphicon glyphicon-ok-circle text-black"></i>
                    <span> 目录三</span>
                </a>
            </li>
        </ul>
    </section>
</aside>
<#--
<script>
    $(function () {
        var left_toggle = $('#left_toggle').val();
        if (left_toggle === 'true') {
            $.AdminLTE.pushMenu.expand();
        } else {
            $.AdminLTE.pushMenu.collapse();
        }

        $(".sidebar-toggle").click(function () {
            $.ajax({
                type: "GET",
                dataType: "JSON",
                url: $('#toggle_url').val(),
                success: function () {
                },
                error: function () {
                    layer.msg('收缩左边菜单出错!!!');
                }
            });
        });

        var $left = $('#left');

        if (BROAD.get('left') == null) {
            $.ajax({
                type: "GET",
                dataType: "JSON",
                url: $('#left_menu_url').val(),
                success: function (data) {
                    BROAD.store('left', data.leftMenu);
                    $left.empty();
                    $left.html(BROAD.get('left'));
                },
                error: function () {
                    layer.msg('左边菜单加载出错了!!!');
                }
            });
        } else {
            $left.empty();
            $left.html(BROAD.get('left'));
            $left.find('a').click(function () {
                var id = $(this).attr('id');
                var needGo = $(this).attr('href') !== '#';
                if (needGo) {
                    BROAD.store('left', $left.html());
                }
            });
        }

    });

    function reLoadLeftMenu() {
        sessionStorage.clear();
        window.location.reload();
    }

    function conditionToGo(id) {
        return true;
    }

</script>-->
</#macro>