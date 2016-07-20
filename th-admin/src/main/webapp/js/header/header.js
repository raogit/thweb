var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera; //判断是否IE浏览器
//	var isFF = userAgent.indexOf("Firefox") > -1; //判断是否Firefox浏览器
//	var isSafari = userAgent.indexOf("Safari") > -1; //判断是否Safari浏览器
//	var isChrome = userAgent.indexOf("Chrome") > -1;//判断是否Chrome浏览器
if(isIE){
	var IE5 = IE55 = IE6 = IE7 = IE8 = false;
    var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
    reIE.test(userAgent);
    var fIEVersion = parseFloat(RegExp["$1"]);
    IE55 = fIEVersion == 5.5;
    IE6 = fIEVersion == 6.0;
    IE7 = fIEVersion == 7.0;
    IE8 = fIEVersion == 8.0;
    if (IE55 || IE6 || IE7 || IE8) {
    	alert("please use IE10/Firefox/Chrome .");
    }
}
var basePath;
var urlPath;
jQuery(document).ready(function() {
	var location = (window.location+'').split('/'); 
	basePath = location[0]+'//'+location[2]+'/'+location[3]; 
	urlPath = $("#path").val();
	basePath = $("#basePath").val();
});
function clearCache(){
	$.ajax({
    	url: $("#path").val() + "/cache/clear",
        type: 'GET',
        dataType: 'json',
        timeout: 30000,
        cache: false,     
        success: function(data){
        	if(data.flag=="success"){
        		alert("success");
        	}else{
        		alert("cache refresh failed.");
        	}
        }
    });
}