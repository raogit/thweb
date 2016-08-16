$(document).ready(function(){
    $(".slide dd").hide();
    $(".slide dt").click(function(){
         $(".slide dd").slideUp();
         $(this).addClass("current").siblings().removeClass("current");
        var $_conten = $(this).next("dd");
        if($_conten.is(":hidden")){
            $_conten.slideDown("slow",function(){
                //var top = $(this).prev("dt").offset().top;
                //$("body,html").animate({scrollTop:top},"slow");
            });
            
        }else{
            $(this).removeClass("current");
            $_conten.slideUp("slow");
        }
    })
})