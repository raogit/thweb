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
};

$(function(){
	var href = window.location.href;
	var aboutUs = new RegExp("/aboutUs/");
	var buss = new RegExp("/Business.html");
	var culture = new RegExp("/culture/");
	var staff = new RegExp("/staff/");
	var business = new RegExp("/business/");
	var news = new RegExp("/news/");
	var investor = new RegExp("/investor/");
	//一级导航选中
	if(aboutUs.test(href)){
		$(".header_liBlock").eq(1).addClass("current");
	}else if(buss.test(href)){
		$(".header_liBlock").eq(2).addClass("current");
	}else if(culture.test(href)){
		$(".header_liBlock").eq(3).addClass("current");
	}else if(staff.test(href)){
		$(".header_liBlock").eq(4).addClass("current");
	}else if(business.test(href)){
		$(".header_liBlock").eq(5).addClass("current");
	}else if(news.test(href)){
		$(".header_liBlock").eq(6).addClass("current");
	}else if(investor.test(href)){
		$(".header_liBlock").eq(7).addClass("current");
	}else{
		$(".header_liBlock").eq(0).addClass("current");
	}

	var p = $UrlParameter("p");
	if(p==null||p==undefined){
		p=0
	}
	$(".nav_ulBlock a").eq(p).addClass("current");
});
//	//栏目内页选中
//	var Intro = new RegExp("/aboutUs/Intro.html");
//	var Business = new RegExp("/aboutUs/Business.html");
//	var History = new RegExp("/aboutUs/History.html");
//	var Strategy = new RegExp("/aboutUs/Strategy.html");
//	var Awards = new RegExp("/aboutUs/Awards.html");
//	var Brand = new RegExp("/aboutUs/Brand.html");
//	if(Business.test(href)){
//		$(".nav_liBlock").eq(1).addClass("current");
//	}else if(History.test(href)){
//		$(".nav_liBlock").eq(2).addClass("current");
//	}else if(Strategy.test(href)){
//		$(".nav_liBlock").eq(3).addClass("current");
//	}else if(Awards.test(href)){
//		$(".nav_liBlock").eq(4).addClass("current");
//	}else if(Brand.test(href)){
//		$(".nav_liBlock").eq(5).addClass("current");
//	}else{
//		$(".nav_liBlock").eq(0).addClass("current");
//	}
//
//	var Trailer = new RegExp("/Trailer.html");
//	var Ejournals = new RegExp("/Ejournals.html");
//	var Video = new RegExp("/Video.html");
//	var Public = new RegExp("/Public.html");
//	if(Trailer.test(href)){
//		$(".nav_liBlock").eq(1).addClass("current");
//	}else if(Ejournals.test(href)){
//		$(".nav_liBlock").eq(2).addClass("current");
//	}else if(Video.test(href)){
//		$(".nav_liBlock").eq(3).addClass("current");
//	}else if(Public.test(href)){
//		$(".nav_liBlock").eq(4).addClass("current");
//	}else{
//		$(".nav_liBlock").eq(0).addClass("current");
//	}


function webSize(){
	var winW = $(window).width();
	var winH = $(window).height();
	var head = $(".Header").height();
	var foot = $(".Footer").height();
	var middle = $("#middle").height();
    var sum = winH - head - foot;
	$(".i-center").css({width:winW,height:sum})
}

$(function(){
	webSize();
	$(window).resize(function(){
		webSize();
	})
})

$(function(){
$(".nav_liBlock").bind("click",function(){
	$(this).addClass("current").siblings().removeClass("current");
})
})