/**
 * Created by Administrator on 2016/8/12.
 */

jQuery(document).ready(function() {
	$(function(){
	    $(".h-c-title li").eq(1).css({"border-bottom":"4px solid #f15050"});
	    $(".h-c-title li").eq(2).css({"border-bottom":"4px solid #fac32a"});
	    $(".h-c-title li").eq(3).css({"border-bottom":"4px solid #feeb1a"});
	    $(".h-c-title li").eq(4).css({"border-bottom":"4px solid #a5e700"});
	    $(".h-c-title li").eq(5).css({"border-bottom":"4px solid #40ddf9"});
	    $(".h-c-title li").eq(6).css({"border-bottom":"4px solid #0098fe"});
	    $(".h-c-title li").eq(7).css({"border-bottom":"4px solid #ff42c3"});
	});
	var imgs  = $(".fr-fin");
	for(var i=0;i<imgs.length;i++){
		var img = imgs[i];
		var p = $(img).parent();
		var textAlign = p.css("text-align");
		p.css("text-align","center");
	}
})