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
//		$(".header_liBlock").eq(3).addClass("current");
	}else if(staff.test(href)){
		$(".header_liBlock").eq(4).addClass("current");
	}else if(business.test(href)){
		$(".header_liBlock").eq(5).addClass("current");
	}else if(news.test(href)){
		$(".header_liBlock").eq(6).addClass("current");
	}else if(investor.test(href)){
		$(".header_liBlock").eq(7).addClass("current");
	}else{
//		$(".header_liBlock").eq(0).addClass("current");
	}

	var p = $UrlParameter("p");
	if(p==null||p==undefined){
		p=0
	}
//	$(".nav_ulBlock a").eq(p).addClass("current");
});
function webSize(){
	var winW = $(window).width();
	var winH = $(window).height();
	var head = $(".Header").height();
	var foot = $(".Footer").height();
    var sum = winH - ( head + foot);
    $(".banners").css({width:winW,height:sum})
	$(".banners .Header_content").css({width:winW,height:sum})
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


$(function(){
	$(".header_onList").eq(1).css({"right":"-39px"});
	$(".header_onList").eq(2).css({"right":"60px"});
	$(".header_onList").eq(3).css({"right":"56px"});
	$(".header_onList").eq(4).css({"right":"154px"});
	$(".header_onList").eq(5).css({"right":"56px"});

	var tOn=0;
	function showBlock(){
		$(".header_onBlockBg").eq(tOn).stop(true,true).fadeIn().siblings().hide();
	}
	showBlock();
	$(".header_ulBlock a").bind("mouseover",function(){
		tOn = $(this).index();
		showBlock();
	})
	$(".header_onBlockBg").bind("mouseover",function(){
		$(this).show();
	})
	$(".header_onBlockBg").bind("mouseout",function(){
		$(this).hide();
	})
})