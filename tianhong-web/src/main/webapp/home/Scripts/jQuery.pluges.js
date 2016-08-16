//banner slider
(function($) {
    $.fn.bannerSlider = function(options) {
        var defaultVal = {
            speed: 3500,
            play:false
        }
        var self = $.extend(defaultVal, options, {});
        return this.each(function() {
            var that = $(this); //获取当前对象 
            var list = that.find('.list');
            var leng = list.children().length;
            var count = 0;
            var autoPlay;
            //添加分页按钮 
            var botn = "<div class='botn'>";
            for (var i = 0; i < leng; i++) {
                botn += "<span>" + i + "</span>";
            }
            botn += "</div>";
            that.append(botn); 
            //初始显示第一个
            list.children().eq(0).show(); 
            //分页按钮事件
            that.find(".botn span").bind('click', function() {
                count = that.find(".botn span").index(this);
                picShow(count);
            }).eq(0).trigger('click');  
            if(self.play==true){ 
               that.hover(function(){
                    clearInterval(autoPlay);  
                },function(){
                    autoPlay = setInterval(function() { 
                       picShow(count);
                       count++;
                       if(count==leng){ count = 0 };  
                    },self.speed);;  
                }).trigger("mouseleave");
            } 
            else{
               setInterval(function() {
                    picShow(count);
                    count++;
                    count = count > leng - 1 ? 0 : count; 
                }, self.speed + 500);
            } 
            function picShow(count) {
                list.children().eq(count).fadeIn(1000).siblings().fadeOut(1000);
                that.find(".botn span").eq(count).addClass('current').siblings().removeClass('current'); 
                //console.log(count);
            } 
        })
        //this end
    }
})(jQuery);
//判断浏览器是否支持 placeholder
(function($){
	$.fn.formTip = function(options){
		var defaults = {};
		var J = $.extend(defaults,options,{});
		//判断浏览器是否支持 placeholder
		var hasPlaceholderSupport = function(){
			var attr = "placeholder";
			var input = document.createElement("input");
			return attr in input;
		}
		return this.each(function(){
			var that = $(this);
			var ui_init = that.find('.ui-input');
			var support  = hasPlaceholderSupport();
			if(!support){
				ui_init.each(function(element) {
					var str = ui_init.eq(element).attr('placeholder');
					var ids = ui_init.eq(element).attr('id'); 
					if(str==""||str==undefined||str==null){
					   return true	
					} 
					else{
						ui_init.eq(element).parent().append("<p class='ui-hint "+ ids +"'>"+ str +"</p>");
						ui_init.eq(element).wrap("<div class='ui-input-box'></div>");
					}  
					ui_init.eq(element).keydown(function(event){
						var keyCode = event.keyCode;
						if(8<=keyCode&&keyCode<=31||33<=keyCode&&keyCode<=46) return ;
						$('p.'+ids).text("");
					}).keyup(function(){
						var strin = $(this).val();
						if(strin==""&&strin.length>=0){
							$('p.'+ids).text($(this).attr('placeholder'));
						}
					})  
				});
			} 
		})
	}
})(jQuery);
(function($){
	$.fn.slideList = function(options){
		var defaults = {
			speed:560,     //移动速度
			start:0,       //起始位置
			visible:3,    //可视个数，每组为多少个
			btnPage:false,
			btnButton:true
		}
		var o = $.extend(defaults,options||{});
		return this.each(function(){
			var that = $(this),
				$ul = $('ul',that),
			    $li = $('li',that),
				l = $li.length,
				v = o.visible,
				index = 0,   
				btnPrev = $(o.btnPrev,that),
				btnNext = $(o.btnNext,that),
				wid= $li.outerWidth(true); 
			var btn="<div class='btnButton'>";
			for(var i=0;i<Math.ceil(l/v);i++){
			    btn +="<span>"+i+"</span>";
			}
			btn +="</div>";
			if(o.btnButton){
			   that.append(btn); 
			}
			if(o.loop){
			   $ul.preend($li.slice(l-v-1+1).clone()).append($li.slice(0,v).clone());
			   o.start += v;
			}
			var _li = $('li',$ul);
			var len = _li.length;
			var btnButton = $(".btnButton",that);
			var count = o.start; 
			$ul.css({width:len*wid});
			$("span",btnButton).click(function(){
			   count = $("span",btnButton).index(this);
			   go(count);
			}).eq(o.start).trigger('click');			
			function go(count){
			   var sun = count * v * wid;
			   index = count;
			   $ul.stop().animate({marginLeft:-sun},o.speed);
			   $("span",btnButton).eq(index).addClass('curr').siblings().removeClass('curr');
			}
		})
	}
})(jQuery); 