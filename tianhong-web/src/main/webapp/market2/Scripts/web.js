$(function(){
	var wWidth = $(window).width(),
		wHeight = $(window).height();
	var resize = function(){
		wWidth = $(window).width();
		wHeight = $(window).height();
		$(".bg_mk").css({"height":wHeight-40});
		$(".c-in-cont").css({"height":wHeight-98});
	}	
	resize();
	$(window).resize(function(){
		resize();
	})
})