//请求连接参数分割
$UrlParameter = function(_key) {
    //debugger
    var _url = window.location.search;
    //如果不等于空表示存在参数
    if (_url.length != 0) {
        //清除问号字符
        _params = _url.replace('?', "").split('&');
        for (var i = 0; _p = _params[i]; i++) {
            _params[_p.split('=')[0]] = _p.split('=')[1];
        }
        //是否返回固定参数值
        if (_key && _key.length != 0) {
            return _params[_key];
        }
        //否则返回对象集合
        return _params;
    }
} 
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
    //中文编码
    s = encodeURIComponent(s);
    s = encodeURIComponent(s);
    return s;
}

//字符解码
function deCode(s) {
    return decodeURIComponent(decodeURIComponent(s));
} 
//占位符  alert("{0}|{1}".format(1,2));
String.prototype.format = function() {
    if (arguments.length == 0) return this;
    for (var s = this, i = 0; i < arguments.length; i++)
        s = s.replace(new RegExp("\\{" + i + "\\}", "g"), arguments[i]);
    return s;
}; 
/***** menu *****/
//Navigate the current state
$(function() {
    function navCurrent() {
        var fullUrl = window.location.href;
        var About = new RegExp("\/case\/", "i");  
        var Region = new RegExp("\/project\/", "i"); 
        var News = new RegExp("\/item\/", "i"); 
        var Overall = new RegExp("\/contact\/", "i"); 
        if(About.test(fullUrl))
            current(1);   
        else if (Region.test(fullUrl))
            current(2);
        else if (News.test(fullUrl))
            current(3);
        else if (Overall.test(fullUrl))
            current(4); 
        else{
          current(0);
        }
        function current(n) {
            $("ul#nav li").eq(n).addClass("curr");
        }
    }
    navCurrent(); 
}); 
//正则判断表单认证
var verify={
  txt1:"用户名必须为1-20字母或中文",
  txt2:"密码必须为6-20字母或数字",
  txt3:"两个密码不一致",
  txt4:"邮箱格式不对",  
  txt5:"电话号码格式不对",
  isUserName:function isRegisterUserName(s,id){
	var patrn=/^[a-zA-Z0-9\u4e00-\u9fa5]{4,20}$/; 
	if (patrn.exec(s)){ 
		return true;
	}else if(!patrn.exec(s)){ 
		return false; 
	} 
  },
  isPasswd:function(s,id){
	var patrn=/^[\w]{6,20}$/; 
    if(patrn.exec(s)){
	   return true 
    }else if(!patrn.exec(s)){
	   return false;
    } 
  },
  isPasswd2:function(s,id){
	var patrn=/^[\w]{6,20}$/; 
	if(patrn.exec(s)){
	   return true 
    }else if(!patrn.exec(s)){
	   return false;
    } 
  },
  isEmail:function(s,id){
	var patrn = /^([a-zA-Z0-9_\.\-])+@([a-zA-Z0-9_\.\-])+(.[a-zA-Z]){2,5}&/;
	if(patrn.exec(s)){
	   return true 
    }else if(!patrn.exec(s)){
	   return false;
    } 
  },
  isPhone:function(s,id){
	var patrn = /^([\d]{7,15})+&/;
	if(patrn.exec(s)){
	   return true 
    }else if(!patrn.exec(s)){
	   return false;
    }  
  },
  submitTrue:function(){ 
	  this.isUserName($("#uid").val(),$("#uid"));
	  this.isPasswd($("#psw1").val(),$("#psw1"));
	  this.isPasswd2($("#psw2").val(),$("#psw2"));
	  this.isEmail($("#email").val(),$("#email"));
	  this.isUserName($("#nickname").val(),$("#nickname"));
	  this.isPhone($("#telephone").val(),$("#telephone"))
  }
}
/* web Resize */
function webSize(){
   var winW = $(window).width();
   var winH = $(window).height();
   var Header = $("#Header").outerHeight(true);
   
   $("#banner").css({height:winH - Header})
}

$(function(){
    webSize();
    $(window).resize(function(){
        webSize();
    });
    
    //menu-left
    $("#item-menu li a.f").bind('click',function(){
        if(!$(this).hasClass('active')){
            $(this).addClass('active').parent().siblings().find('.f').removeClass('active');
            $(this).next().stop().slideDown().parent().siblings().find('dl').stop().slideUp();
        }
        else{
            $(this).removeClass('active');
            $(this).next().stop().slideUp();
        }
    })
})