$(function(){
	var wWidth = $(window).width() - 220;
	var wHeight = $(window).height();
	var resize = function(){
		wWidth = $(window).width() - 220;
		wHeight = $(window).height();
		$(".indexK_bodyer").css({"width":wWidth,"height":wHeight});

	}
	resize();
	$(window).resize(function(){
		resize();
	})
})