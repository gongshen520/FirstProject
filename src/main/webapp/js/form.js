
/*自定义表单验证*/
$.extend($.fn.validatebox.defaults.rules, {
     number: {
        validator: function(value){
            // 验证整数
            function isNum(number) {
                var pattern =/^[1-9]{1,}[\d]*$/;
                return pattern.test(number);
            }
            return isNum($.trim(value)) == true;
        },
        message: '请输入数字'
    },
    select: {
        validator: function(value, param) {
           /* console.info($(param[0]).find("option:contains('"+value+"')").val());*/
            return $('select').find("option:selected").val() != " ";
        },
        message: "该选项为必选项！"
    },
    /*文本框内容长度*/
    lengths: {

        validator: function(value,num) {
                String.prototype.len = function()
                {
                    return this.replace(/[^\x00-\xff]/g, "aa").length;
                };
            var arr= $.trim(value).len();
            return arr<=num==true;
        },
        message: "录入的信息过长！"
    },

//身份证验证
    cardid: {
        validator: function(value, param){
           /* function isCardNo(card) {
                /!*var pattern =/^[1-9]\d{5}(18|19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;*!/
                var pattern =/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
                return pattern.test(card);
            }*/


            function isCardNo(code) {
                var city={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外 "};
                var tip = "";
                var pass= true;

               /* if(!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(code)){*/
                if(!code || !/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/i.test(code)){
                    tip = "身份证号格式错误";
                    pass = false;
                }

                else if(!city[code.substr(0,2)]){
                    tip = "地址编码错误";
                    pass = false;
                }
                else{
                    //18位身份证需要验证最后一位校验位
                    if(code.length == 18){
                        code = code.split('');
                        //∑(ai×Wi)(mod 11)
                        //加权因子
                        var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ];
                        //校验位
                        var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
                        var sum = 0;
                        var ai = 0;
                        var wi = 0;
                        for (var i = 0; i < 17; i++)
                        {
                            ai = code[i];
                            wi = factor[i];
                            sum += ai * wi;
                        }
                        var last = parity[sum % 11];
                        if(parity[sum % 11] != code[17]){
                            tip = "校验位错误";
                            pass =false;
                        }
                    }
                }
               /* if(!pass) alert(tip);*/
                return pass;

               /* return pattern.test(card);*/

            }
           /* var c = '445322198610194955';
            var res= isCardNo(c);
            alert(res);*/

            return isCardNo($.trim(value)) == true;
        },
        message: '身份证不对'
    },
    //中文名字
    cnname: {
        validator: function(value){
            function isChinaName(name) {
                var pattern = /^[\u4E00-\u9FA5]{2,6}$/;
                return pattern.test(name);
            }
            return isChinaName($.trim(value)) == true;
        },
        message: '中文姓名不符合要求'


    },
    //手机号码验证
    phone: {
        validator: function(value){
            // 验证手机号
            function isPhoneNo(phone) {

                var pattern =/^1[34578]\d{9}$|^(?:(?:0\d{2,3})-)?(?:\d{7,8})(-(?:\d{3,}))?$/;

              /*  var pattern =  /^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/|/^((\(\d{3}\))|(\d{3}\-))?(1[34578]\d{9})$/*/
               /* var pattern = /^1[34578]\d{9}$/;*/
                return pattern.test(phone);
            }
            return isPhoneNo($.trim(value)) == true;
        },
        message: '手机号错误'

    },
    //经度验证
    longitude: {
        validator: function(value){
            // 经度验证
            function islongitude(num) {

                /*var pattern =/^-?((0|1?[0-7]?[0-9]?)(([.][0-9]{1,4})?)|180(([.][0]{1,4})?))$/;*/
                var pattern = /^-?((0|[1-9]\d?|1[1-7]\d)(\.\d{1,8})?|180(\.0{1,8})?)?$/;

                return pattern.test(num);
            }
            return islongitude($.trim(value)) == true;
        },
        message: '错误'

    },
    //纬度验证
    latitude: {
        validator: function(value){
            // 纬度验证
            function islatitude(num) {

               /* var pattern =/^-?((0|[1-8]?[0-9]?)(([.][0-9]{1,4})?)|90(([.][0]{1,4})?))$ /;*/
                var pattern =/^-?((0|[1-8]\d|)(\.\d{1,8})?|90(\.0{1,8})?)?$/;

                return pattern.test(num);
            }
            return islatitude($.trim(value)) == true;
        },
        message: '错误'

    }


});
/*民族选择*/
var national = [
    "汉族", "壮族", "满族", "回族", "苗族", "维吾尔族", "土家族", "彝族", "蒙古族", "藏族", "布依族", "侗族", "瑶族", "朝鲜族", "白族", "哈尼族",
    "哈萨克族", "黎族", "傣族", "畲族", "傈僳族", "仡佬族", "东乡族", "高山族", "拉祜族", "水族", "佤族", "纳西族", "羌族", "土族", "仫佬族", "锡伯族",
    "柯尔克孜族", "达斡尔族", "景颇族", "毛南族", "撒拉族", "布朗族", "塔吉克族", "阿昌族", "普米族", "鄂温克族", "怒族", "京族", "基诺族", "德昂族", "保安族",
    "俄罗斯族", "裕固族", "乌孜别克族", "门巴族", "鄂伦春族", "独龙族", "塔塔尔族", "赫哲族", "珞巴族"
];
var nation=function(id){
    var nat = document.getElementById (id);
    for ( var i = 0; i < national.length; i++)
    {
        var option = document.createElement ('option');
        option.value = i;
        var txt = document.createTextNode (national[i]);
        option.appendChild (txt);
        nat.appendChild (option);
    }
};
/*执行民族选择函数*/
nation("national");
// 搜索提交
function submitForm(){
    $('#search_one').form('submit');
};
function clearForm(){
    $('#search_one').form('clear');
};

/*模态框背景禁止点击*/
var model=function(id){
    $(id).dialog({
        closed:false,
        modal:true
    });
};
(function (){
    $("input").attr("autocomplete","off");
})();
