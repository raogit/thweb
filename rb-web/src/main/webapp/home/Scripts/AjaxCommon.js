//设置将来的 Ajax 请求的默认值。
$.ajaxSetup({
    //请求方式
    type: "GET",
    //请求的地址
    url: "/Ajax/AjaxCommon.aspx"
});



//在 Ajax 请求发送之前显示一条消息,用时请重写
function ajaxSend(e) { };
//当 Ajax 请求成功完成时显示一条消息,用时请重写
function ajaxSuccess(e) { };

//<div style='width:100%; text-align:center; padding-top:50px; padding-bottom:150px;display:none;' id='ajaxSend'>正在加载……</div>
/*
调用方法： (Fall);  
$(function(){ 
ReadData(action, content, pageload, pageindex, pagesize, fid, where, type) 
});
action:动作
content:替换内容区标签
pageload：是否为首次加载数据 y为是 n为否
pageindex：当前页索引
pagesize：每页显示的数据量
fid：栏目fid
where：条件（可选）
type：用余有多个Ajax分页时，进行类别区分,参数为数字
*/
function ReadData(action, content, pageload, pageindex, pagesize, fid, where, type) {
    //在 Ajax 请求发送之前显示一条消息
    ajaxSend(type);
    var data = "action=" + action + "&content=" + escape(content) + "&pageload=" + pageload + "&pageindex=" + pageindex + "&pagesize=" + pagesize + "&fid=" + fid + "&where=" + reCode(where) + "&type=" + type + "&random=" + Math.random();
    $.ajax({
        data: data,
        success: function(retdata) {
            if (retdata != "nothing") {
                $(content).html(retdata);
            } else {
                alert("加载失败！");
                return;
            }
            //当 Ajax 请求成功完成时显示一条消息
            ajaxSuccess(type);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("加载失败！");
        }
    });
};
/*
调用方法： (Fall);  
$(function(){ 
ReadData(action, content, pageload, pageindex, pagesize, fid, where, type) 
});
action:动作
content:替换内容区标签
pageload：是否为首次加载数据 y为是 n为否
pageindex：当前页索引
pagesize：每页显示的数据量
fid：栏目fid
where：条件（可选）
type：用余有多个Ajax分页时，进行类别区分,参数为数字
*/
function ReadDataForumList(action, content, pageload, pageindex, pagesize, fid, where, type) {
    //在 Ajax 请求发送之前显示一条消息
    ajaxSend(type);
    var data = "action=" + reCode(action) + "&content=" + reCode(content) + "&pageload=" + pageload + "&pageindex=" + pageindex + "&pagesize=" + pagesize + "&fid=" + fid + "&where=" + reCode(where) + "&type=" + type + "&random=" + Math.random();
    $.ajax({
        data: data,
        success: function(retdata) {
            if (retdata != "nothing") {
//                var index = retdata.toString().split("@")[0];
//                var con = retdata.toString().split("@")[1];
//                if (index == "1") {
//                    $(".content_inner_select").show();
//                 
//                }
//                else {
//                    $(".content_inner_select").hide();
//                  
//                }

                $(content).html(retdata);
            } else {

                alert("加载失败！");
                return;
            }
            //当 Ajax 请求成功完成时显示一条消息
            ajaxSuccess(type);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("加载失败！");
        }
    });
};
/*
调用方法： (Fall配图);  
$(function(){ 
ReadData(action, content, pageload, pageindex, pagesize, fid, where, type) 
});
action:动作
content:替换内容区标签
pageload：是否为首次加载数据 y为是 n为否
pageindex：当前页索引
pagesize：每页显示的数据量
ftid：栏目ftid
where：条件（可选）
type：用余有多个Ajax分页时，进行类别区分,参数为数字
*/
function ReadImageData(action, content, pageload, pageindex, pagesize, ftid, where, type) {
    //在 Ajax 请求发送之前显示一条消息
    ajaxSend(type);
    var data = "action=" + reCode(action) + "&content=" + escape(content) + "&pageload=" + pageload + "&pageindex=" + pageindex + "&pagesize=" + pagesize + "&ftid=" + ftid + "&where=" + reCode(where) + "&type=" + type + "&random=" + Math.random();
    $.ajax({
        data: data,
        success: function(retdata) {
            if (retdata != "nothing") {
                $(content).html(retdata);
            } else {
                alert("加载失败！");
                return;
            }
            //当 Ajax 请求成功完成时显示一条消息
            ajaxSuccess(type);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("加载失败！");
        }
    });
};
/*
调用方法：(Job)
$(function(){
ReadDataList(action, content, pageload, pageindex, pagesize, where, type) 
});
action:动作
content:替换内容区标签
pageload：是否为首次加载数据 y为是 n为否
pageindex：当前页索引
pagesize：每页显示的数据量
where：条件
type：用余有多个Ajax分页时。进行类别区分，参数为数字
*/
function ReadDataList(action, content, pageload, pageindex, pagesize, where, type) {
    //在 Ajax 请求发送之前显示一条消息
    ajaxSend(type);
    var data = "action=" + action + "&content=" + escape(content) + "&pageload=" + pageload + "&pageindex=" + pageindex + "&pagesize=" + pagesize + "&where=" + escape(where) + "&type=" + type + "&random=" + Math.random();
    $.ajax({
        data: data,
        success: function(retdata) {
            if (retdata != "nothing") {
                $(content).html(retdata);
            } else {
                alert("加载失败！");
                return;
            }
            //当 Ajax 请求成功完成时显示一条消息
            ajaxSuccess(type);
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("加载失败！");
        }
    });
};

/*
调用方法：(公共)
$(function(){
AjaxCommon(action, method, data) ;
});
action:动作
method:自定义方法来外理反回结果
data:Url参数
*/
function AjaxCommon(action, method, data) {
    //在 Ajax 请求发送之前显示一条消息
    ajaxSend(true);
    $.ajax({
        data: "action=" + reCode(action) + (data == "" ? "" : "&" + data) + "&random=" + Math.random(),
        success: function(retdata) {
            if (retdata != "nothing") {
                //自定义验证方法,如果存在并且是function,则调用
                if (typeof method === 'function') {  //存在且是function
                    method(retdata);
                }
            } else {
                alert("加载失败！");
                return;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("加载失败！");
        }
    });
};

/*
Ajax提交表单
调用方法:AjaxForm(action, method, form)
action:动作
method:自定义方法来外理反回结果
form:表单
data:Url参数(可选),用余需要进行其它操作时使用
*/
function AjaxForm(action, form, method, data) {
    //alert($Form(form));
    $.ajax({
        data: "action=" + reCode(action) + $Form(form) + (data == "" ? "" : "&" + data) + "&random=" + Math.random(),
        success: function(retdata) {
            if (retdata != "nothing") {
                //自定义验证方法,如果存在并且是function,则调用
                if (typeof method === 'function') {  //存在且是function
                    method(retdata);
                } else { alert(retdata); }
                $(form + " input:text," + form + " textarea").val("");  //提交成功后清空文本框
            } else {
                alert("提交失败！");
                return;
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            //alert("提交失败！");
        }
    });
};

/*
表单序列化  
调用方法:$Form("form")
结果：&a=1&b=2
*/
function $Form(form) {
    var _FormVal = "";
    var x = $(form).serializeArray();  //序列化表单值
    $.each(x, function(i, field) {
        if (field.name != "__VIEWSTATE") {
            _FormVal += "&" + field.name + "=" + reCode(field.value);
        }
    });
    return _FormVal;
}
/*
表单验证-非空     
用法：
$("#btn").click(function() {
$ValForm(form,method);   //form:表单   method:自定义验证方法
});

<input type="text"  name="Contact" nullmsg="姓名不能为空哦" />

//自定义验证方法  
function XXXX() {
var _msg = "";
if ($("input[name='XXX']").val() == "") { _msg += "XXXXXXXXX\n"; }
return _msg;
}
*/
function $ValForm(form, method) {
    var _msg = "";
    var $input = $(form + " input:text," + form + " textarea");
    $.each($input, function(i, e) {
        var _val = $(e).val();              //表单元素值               
        var _nullmsg = $(e).attr("nullmsg");  //表单元素值为空的提示
        if (_nullmsg != undefined) {
            if (_val == "") {
                _msg += _nullmsg + "\n";
            }
        }
    });
    //自定义验证方法,如果存在并且是function,则调用
    if (typeof method === 'function') {  //存在且是function
        _msg += method();
    }

    if (_msg != "") {
        _msg = "保存失败!\n可能是以下原因造成:\n" + _msg;
        alert(_msg);
        return false;
    } else {
        if (confirm("确定信息完整了吗?发送之后不可更改哦.请认真核对下!!!")) {
            return true;
        } else {
            return false;
        }
    }
};

/* 给必填加*号
用法： class='nullmsg'
*/
$(function() {
    $("form .nullmsg").after("<b style='margin-left: 8px;line-height: 25px;height: 25px;overflow: hidden;color: rgb(248, 16, 62);font-size: 12px;position: absolute;font-weight: normal;font-style:normal;'>*</b>");
});


//字符编码
function reCode(s) {
    //特殊字符
    s = s.replace(/\+/g, "%2B");   // +
    s = s.replace(/\=/g, "%3D");   // =
    s = s.replace(/\!/g, "%21");   // !
    s = s.replace(/\'/g, "%27");   // '
    s = s.replace(/\(/g, "%28");   // (
    s = s.replace(/\)/g, "%29");   // )
    s = s.replace(/\*/g, "%2A");   // *
    s = s.replace(/\-/g, "%2D");   // -
    s = s.replace(/\./g, "%2E");   // .
    s = s.replace(/\_/g, "%5F");   // _
    s = s.replace(/\~/g, "%7E");   // ~
    //小写 
    s = s.replace(/a/g, "%61");   // 
    s = s.replace(/b/g, "%62");   // 
    s = s.replace(/c/g, "%63");   // 
    s = s.replace(/d/g, "%64");   // 
    s = s.replace(/e/g, "%65");   // 
    s = s.replace(/f/g, "%66");   // 
    s = s.replace(/g/g, "%67");   // 
    s = s.replace(/h/g, "%68");   // 
    s = s.replace(/i/g, "%69");   // 
    s = s.replace(/j/g, "%6a");   // 
    s = s.replace(/k/g, "%6b");   // 
    s = s.replace(/l/g, "%6c");   // 
    s = s.replace(/m/g, "%6d");   // 
    s = s.replace(/n/g, "%6e");   // 
    s = s.replace(/o/g, "%6f");   // 
    s = s.replace(/p/g, "%70");   // 
    s = s.replace(/q/g, "%71");   // 
    s = s.replace(/r/g, "%72");   // 
    s = s.replace(/s/g, "%73");   // 
    s = s.replace(/t/g, "%74");   // 
    s = s.replace(/u/g, "%75");   // 
    s = s.replace(/v/g, "%76");   // 
    s = s.replace(/w/g, "%77");   // 
    s = s.replace(/x/g, "%78");   // 
    s = s.replace(/y/g, "%79");   // 
    s = s.replace(/z/g, "%7a");   // 
    //大写
    s = s.replace(/A/g, "%41");   // 
    s = s.replace(/B/g, "%42");   //
    s = s.replace(/C/g, "%43");   // 
    s = s.replace(/D/g, "%44");   // 
    s = s.replace(/E/g, "%45");   // 
    s = s.replace(/F/g, "%46");   // 
    s = s.replace(/G/g, "%47");   // 
    s = s.replace(/H/g, "%48");   // 
    s = s.replace(/I/g, "%49");   // 
    s = s.replace(/J/g, "%4a");   // 
    s = s.replace(/K/g, "%4b");   // 
    s = s.replace(/L/g, "%4c");   // 
    s = s.replace(/M/g, "%4d");   // 
    s = s.replace(/N/g, "%4e");   // 
    s = s.replace(/O/g, "%4f");   // 
    s = s.replace(/P/g, "%50");   // 
    s = s.replace(/Q/g, "%51");   // 
    s = s.replace(/R/g, "%52");   // 
    s = s.replace(/S/g, "%53");   // 
    s = s.replace(/T/g, "%54");   // 
    s = s.replace(/U/g, "%55");   // 
    s = s.replace(/V/g, "%56");   // 
    s = s.replace(/W/g, "%57");   // 
    s = s.replace(/X/g, "%58");   // 
    s = s.replace(/Y/g, "%59");   //
    s = s.replace(/Z/g, "%5a");   //    
    //中文编码
    s = encodeURIComponent(s);
    s = encodeURIComponent(s);
    return s;
}

//字符解码
function deCode(s) {
    return decodeURIComponent(decodeURIComponent(s));
}
