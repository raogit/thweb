function dragAdapt(showBlock,contentBlock,contentWidth,contentHeight,widthDifference,HeightDifference){
	if(widthDifference == undefined){
		widthDifference = 0;
	}
	if(HeightDifference == undefined){
		HeightDifference = 0;
	}
	var wWidth = winWidth() - widthDifference,		//显示块宽
		wHeight = winHeight() - HeightDifference,			//显示块高
		contentWidthHeightRatio = contentWidth/contentHeight,	//内容宽高比
		contentHeightWidthRation = contentHeight/contentWidth,	//内容高宽比
		bWidth = wHeight * contentWidthHeightRatio,		//内容块宽
		bHeight = wWidth * contentHeightWidthRation,		//内容块高
		ratio = 0,		//内容块高宽比
		leftValue = 0;  //内容块向左拉动的值
	function winWidth() {
		var winWidth = 0;
		if (window.innerWidth)
			winWidth = window.innerWidth;
		else if ((document.body) && (document.body.clientWidth))
			winWidth = document.body.clientWidth;
		if (document.documentElement && document.documentElement.clientWidth)
			winWidth = document.documentElement.clientWidth;
		return winWidth;
	}
	function winHeight() {
		var winHeight = 0;
		if (window.innerHeight)
			winHeight = window.innerHeight;
		else if ((document.body) && (document.body.clientHeight))
			winHeight = document.body.clientHeight;
		if (document.documentElement && document.documentElement.clientHeight)
			winHeight = document.documentElement.clientHeight;
		return winHeight; 
	}
	//返回鼠标位置
	function getMousePos(event) { 
	      var e = event || window.event; 
	      var scrollX = document.documentElement.scrollLeft || document.body.scrollLeft; 
	      var scrollY = document.documentElement.scrollTop || document.body.scrollTop; 
	      var x = e.pageX || e.clientX + scrollX; 
	      var y = e.pageY || e.clientY + scrollY; 
	      x -= widthDifference;
	      y -= HeightDifference;
	      return { 'x': x, 'y': y }; 
    }
	//鼠标左右拉动内容
    function contentFunction(event){	
    	/*鼠标位置除于视窗宽的百分比，乘于内容宽与视窗宽的差*/    	

    	var mouseX = getMousePos(event).x,
    		hideWidth = (bWidth-wWidth),
    		NoMoveWidth = wWidth-500;
    	
    	if(mouseX > NoMoveWidth){    		
	    	leftValue = (mouseX-NoMoveWidth)/500 * - hideWidth;
	    	if((bWidth-wWidth) > 0){
	      		$(contentBlock).css({left:leftValue});
	      	}
      	}


    }
    //全屏自适应
    function webSize(){
		wWidth = winWidth() - widthDifference;
		wHeight = winHeight() - HeightDifference;	
		bHeight = wWidth * contentHeightWidthRation;	
		bWidth = wHeight * contentWidthHeightRatio;		
		$(showBlock).css({"width":wWidth,"height":wHeight});			
		$(contentBlock).css({left:0});

		ratio = parseInt(wWidth/wHeight); 
	    if(ratio > contentWidthHeightRatio){
	    	if(wWidth > 1712){
		        $(contentBlock).css({width:wWidth,height:bHeight});
	    	}
	    }else{
	    	if(wHeight > 550){
	    		bWidth = wHeight * contentWidthHeightRatio;
				bHeight = wWidth * contentHeightWidthRation;
	        	$(contentBlock).css({height:wHeight,width:bWidth});
	    	}else{
	    		bWidth = 550 * contentWidthHeightRatio;
				bHeight = 550;
	    		$(contentBlock).css({height:bHeight,width:bWidth});
	    	}
	    }

	    $(".home_showBlock").each(function(i){
		    var imgBWidth = $(this).width();
		    var imgBHeight = $(this).height();
		    var radioI = 0.863454;
		    if(i < 1){
		    	radioI = 1.32;
		    }
		    if((imgBWidth/imgBHeight) > radioI){
		       $(this).find("img").css({width:imgBWidth+1,height:"auto"});
		    }else{
		       $(this).find("img").css({height:imgBHeight+1,width:"auto"});
		    }
	    })



    }



				
	$(showBlock).bind("mousemove",function(event){				
      	contentFunction(event);
	})
	
	webSize();
	$(window).resize(function(){
		webSize();
	})

}

$(function(){
	//显示块，内容块，内容宽，内容高，显示块与屏幕宽差，显示块与屏幕高差
	dragAdapt(".indexK_bodyer",".main_bodyer",2742,948,208,10);
})
