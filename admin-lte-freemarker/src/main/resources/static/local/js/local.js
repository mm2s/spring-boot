if (typeof BROAD !== "object") {
    BROAD = {};
    var AdminLTEOptions = {}
}

/**init*/
if (typeof jQuery === 'undefined') {
    throw new Error('Bootstrap\'s JavaScript requires jQuery')
}
+(function ($,$B) {
    "use strict";



    /*初始化bootstrapTable参数*/
    if (typeof $().bootstrapTable === "function") {
        $.extend($.fn.bootstrapTable.defaults, {
            searchTimeOut: 1000,
            pageSize: 10,
            pageList: [5, 10, 20, 30],
            ajaxDataType: "json",
            dataType: "json",
            sidePagination: "server",
            buttonsAlign: "right",
            toolbarAlign: "left"
        });
    } else console.warn('bootstrapTable did not import');

    // 获取上下文路径
    $B.ctx = $('#ctx').val();

    /*初始化select2参数*/
    if (typeof $().select2 === "function") {
        $.extend($.fn.select2.defaults.defaults, {
            placeholder: '--请选择--',
            language: 'zh-CN'
        });
    } else console.warn('select2 did not import');

    /*初始化 amin-lte 参数*/
    if (typeof $.AdminLTE !== "undefined") {
        AdminLTEOptions ={
            enableFastclick: true,
            sidebarExpandOnHover: false
        };
        $("body").addClass('sidebar-collapse');
    }


    /**public**/
    Date.prototype.Format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1,  //月份
            "d+": this.getDate(),       //日
            "h+": this.getHours(),      //小时
            "m+": this.getMinutes(),    //分
            "s+": this.getSeconds(),    //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    };

    /**弹出框整合*/
    $B.alert = function (msg) {
        if ( typeof layer !== 'undefined') {
            layer.msg(msg);
        }else {
            console.warn('layer did not import');
            alert(msg);
        }
    };



    $B.isEmpty =
        /**
         * @param s 判断字符串是否为空
         * @returns {boolean}
         */
        function (s) {
        return s == null || s == undefined || s == '';
    };
    $B.isNotEmpty =
        function (s) {
        return !$B.isEmpty(s);
    };


    /** 时间格式化 */
    //yyyy-MM-dd hh:mm:ss
    $B.nowTime = function () {
        return new Date().Format('yyyy-MM-dd hh:mm:ss');
    };
    //yyyy-MM-dd hh:mm:ss
    $B.fmtTime = function (val) {
        return new Date(val).Format('yyyy-MM-dd hh:mm:ss');
    };
    //yyyy-MM-dd
    $B.nowDate = function () {
        return new Date().Format('yyyy-MM-dd');
    };
    //yyyy-MM-dd
    $B.fmtDate = function (val) {
        return new Date(val).Format('yyyy-MM-dd');
    };

    $B.store = function store(name, val) {
        try {
            sessionStorage.setItem(name, val);
        } catch (e) {
            console.error(e);
        }
    };

    $B.get = function get(name) {
        try {
            return sessionStorage.getItem(name);
        } catch (e) {
            console.error(e);
            return null;
        }
    };

    $B.initSelect =
        /**
         * @param id 需要绑定的标签id
         * @param codeRule 绑定的编码规则
         * @param coding 绑定的编码
         * @param multiple 是否多选
         */
        function initSelect(id,codeRule,coding,multiple) {
        try {
            var url = $B.ctx + 'base_code/all_code/'+codeRule;
            var control = $('#'+id);
            control.select2({
                minimumResultsForSearch: -1,
                minimumInputLength: 0,
                multiple: multiple,
                autoClear: true,
                ajax: {
                    url: url,
                    dataType: 'JSON',
                    delay: 250,
                    cache: false,
                    processResults: function (data) {
                        return {
                            results: data
                        };
                    }
                }
            });

            if ($B.isNotEmpty(coding)) {
                var init_url = url + '/' + coding;
                $.getJSON(init_url, function (data) {
                    control.empty();//清空下拉框
                    $.each(data, function (i, item) {
                        control.append(new Option(item.text, item.id, false, true));
                    });
                });
                control.val(null).trigger('change');
            }

        } catch (e) {
            console.error(e);
            return null;
        }
    };

    $B.checkIDCard =
        /**
         * @param code 身份证校验方法
         * @returns {boolean}
         */
        function checkIDCard(code) {
        var city = {
            11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林",
            23: "黑龙江", 31: "上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西",
            37: "山东", 41: "河南", 42: "湖北 ", 43: "湖南", 44: "广东", 45: "广西", 46: "海南",
            50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏 ", 61: "陕西", 62: "甘肃",
            63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外 "
        };
        var tip = "";
        var pass = true;

        if (!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(code)) {
            tip = "身份证号格式错误";
            pass = false;
        } else if (!city[code.substr(0, 2)]) {
            tip = "身份证号地址编码错误";
            pass = false;
        } else {
            //18位身份证需要验证最后一位校验位
            if (code.length == 18) {
                code = code.split('');
                var factor = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];//∑(ai×Wi)(mod 11)   //加权因子
                var parity = [1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2];     //校验位
                var sum = 0, ai = 0, wi = 0;
                for (var i = 0; i < 17; i++) {
                    ai = code[i];
                    wi = factor[i];
                    sum += ai * wi;
                }
                if (parity[sum % 11] != code[17]) {
                    tip = "身份证号校验位错误";
                    pass = false;
                }
            }
        }
        if (!pass) $B.alert(tip);
        return pass;
    }

}(jQuery,BROAD));
