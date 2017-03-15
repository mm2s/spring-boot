<#macro setting>
<div id="main_user_setting_modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">用户设置</h4>
            </div>
            <div class="modal-body">
                <form id="base_code_add_form" role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="sys_skin_color">皮肤颜色</label>
                            <select name="sysSkinColor" id="sys_skin_color" class="form-control"
                                    style="width: 100%"></select>
                        </div>
                        <div class="form-group">
                            <p class="help-block">
                                <label>说明</label><br>
                                &nbsp;&nbsp;1.皮肤颜色 : 黑/蓝/绿/灰/红/黄
                            </p>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <input id="reset" type="reset" style="display:none;"/>
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">关闭</button>
                        <button type="button" onclick="main_user_setting_save_btn()" class="btn btn-primary">保存</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<#--
<script>
    $(function () {
        $('#sys_skin_color').select2({
            minimumInputLength: 0,
            autoClear: true,
            ajax: {
                url: $('#sys_skin_color_s_url').val(),
                dataType: 'JSON',
                delay: 250,
                cache: true,
                processResults: function (data) {
                    return {
                        results: data
                    };
                }
            }
        });

        $('#main_user_setting').click(function () {
            $('#main_user_setting_modal').modal('show');
        });

    });

    /**
     * 保存用户设置
     */
    function main_user_setting_save_btn() {
        $.ajax({
            type: "POST",
            dataType: "JSON",
            url: $('#sys_skin_color_toggle_url').val() + $('#sys_skin_color').val(),
            success: function () {
                window.location.reload();
            }
        });
        window.location.reload();
    }
</script>-->
</#macro>