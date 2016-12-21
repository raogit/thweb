jQuery(document).ready(function() {
	var imgs  = $(".fr-fin");
	for(var i=0;i<imgs.length;i++){
		var img = imgs[i];
		var p = $(img).parent();
		var textAlign = p.css("text-align");
		p.css("text-align","center");
	}
});
$(function(){	
	//二级导航
  var i = 0;
  $(".nav_box .nav li").hover(function(){
    i = $(this).index();
    
      $(".nav_content").eq(i).stop().animate({left:220},300);
         
  },function(){
    i = $(this).index();
    $(".nav_content").eq(i).stop().animate({left:30},300);
  })
  $(".nav_content").hover(function(){
    $(this).stop().animate({left:220},300);
  },function(){
    $(this).stop().animate({left:30},300);
  })

  //导航选中状态
  var href = window.location.href;
  var index_shop = new RegExp("/index_shop.html");
  var news = new RegExp("/news.html");
  var ShopBrand = new RegExp("/ShopBrand.html");
  var ShopFloor = new RegExp("/ShopFloor.html");
  var specia_shop = new RegExp("/specia_shop.html");
  var specia_food = new RegExp("/specia_food.html");
  var ServeCenter = new RegExp("/ServeCenter.html");
  var brand = new RegExp("/brand.html");
  var aboutUs = new RegExp("/aboutUs.html");

  if(index_shop.test(href)){
    $(".nav li").eq(0).addClass("current");
  }else if(news.test(href)){
    $(".nav li").eq(1).addClass("current");
  }else if(ShopBrand.test(href)||ShopFloor.test(href)||specia_shop.test(href)){
    $(".nav li").eq(2).addClass("current");
  }else if(specia_food.test(href)){
    $(".nav li").eq(3).addClass("current");
  }else if(ServeCenter.test(href)){
    $(".nav li").eq(4).addClass("current");
  }else if(brand.test(href)){
    $(".nav li").eq(5).addClass("current");
  }else if(aboutUs.test(href)){
    $(".nav li").eq(6).addClass("current");
  }

  
  
  /*table   切换*/
  var page = parseInt(window.location.href.split("page=")[1])?parseInt(window.location.href.split("page=")[1]):0;
  var showPage = function(){
    $('.head ul li').eq(page).addClass('current').siblings().removeClass('current');
    $('.content>div').eq(page).show().siblings().hide();
  }
//  showPage();
  $('.head ul li').bind("click", function(){
     page = $(this).index();
     showPage();
  }); 


	

	

	//鼠标离开后 shopping_SelectList 列表下拉收缩
	$(".shopping_SelectList").bind("mouseleave",function(){
    		$(this).hide().stop(true,true).slideUp(200);
    });

	

	
});
