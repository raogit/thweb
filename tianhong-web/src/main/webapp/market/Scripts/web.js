var basePath = $("#basePath").val();

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

function search(){
	var searchName = $("#searchName").val();
	if(searchName==null || searchName=="" || searchName.trim()==""){
		alert("请输入门店名字");
		return;
	}
	$("#formId").submit();
}
function changeMarket(){
	$("#formId").submit();
}
function newDetail(id){
	$.ajax({
        url: basePath + "/marketnews/get",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		$("#newDetailTitle").html(data.title);
        		$("#newDetailContent").html(data.content);
        		$("#newDetailPicture").attr("src",basePath+"/download/png?fileName="+data.path);
        		$("#newsDetailTime").html(data.createTimeStr.substr(0,10));
        	}else{
        		alert(json.obj);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}


function activityDetail(id){
	$.ajax({
        url: basePath + "/marketnews/get",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		$("#activityDetailTitle").html(data.title);
        		$("#activityDetailContent").html(data.content);
        		$("#activityDetailPicture").attr("src",basePath+"/download/png?fileName="+data.path);
        		$("#activityDetailTime").html(data.createTimeStr.substr(0,10));
        	}else{
        		alert(json.obj);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}
