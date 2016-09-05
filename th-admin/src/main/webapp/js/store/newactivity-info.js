
jQuery(document).ready(function() {	
	
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	initSelect("categoryId");
});

function initSelect(id){
	$(".loading_area").fadeIn(10);
	var categoryId = $("#"+id);
	categoryId.html("");
	var menuId = $("#menuId").val();
	$.ajax({
        url: basePath + "/category/list",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		for(var i=0; i<data.length;i++){
        			var item = data[i];
        			categoryId.append('<option value="'+item.id+'">'+item.name+'</option>');
        		}
        		initRich($("#categoryId").val());
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}

function initRich(categoryId){
	debugger;
	clear();
	$.ajax({
        url: basePath + "/newactivity/get",
        type: 'post',
        dataType: 'json',
        data : {
        	categoryId : categoryId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		$("#contentId").html(data.content);
            	$("#id").val(data.id);
            	$("#title").val(data.title);
            	$("#slogan").val(data.slogan);
        	}else{
        		$("#contentId").html("");
        	}
        }
    });
}

function save(){
	var categoryId = $("#categoryId").val();
	var content = $("#contentId").html();
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	var id = $("#id").val();
	$.ajax({
          url: basePath + "/newactivity/save",
        type: 'post',
        dataType: 'json',
        data : {
        	categoryId : categoryId,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		alert("操作成功");
        	}else{
        		alert(json.obj);
        	}
        }
    });
}

function clear(){
	$("#contentId").html("");
}

function changeSelect(val){
	$("#categoryId").val(val)
	initRich($("#categoryId").val());
}
