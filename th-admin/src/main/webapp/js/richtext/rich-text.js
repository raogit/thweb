
jQuery(document).ready(function() {	
	init();
	//弹出文本性提示框
	$("#saveContent").click(function(){
		save();
	});
	//弹出：确认按钮
	$("#clearContent").click(function(){
		clear();
	});
});

function init(){
	var menuId = $("#menuId").val();
	$.ajax({
        url: basePath + "/rich/get",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		$("#contentId").html(data.content);
            	$("#id").val(data.id);
        	}else{
        		$("#contentId").html("");
        	}
        }
    });
}

function save(){
	var menuId = $("#menuId").val();
	var content = $("#contentId").html();
	var id = $("#id").val();
	$.ajax({
        url: basePath + "/rich/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	menuId : menuId,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data==true){
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
function upload(fileId){
	var url=basePath + "/upload/png";
	//执行上传文件操作的函数
    $.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	data = data.replace(/<pre.*">/, '');
            data = data.replace("<PRE>", ''); //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", '');
            var reqParam = eval("(" +data+ ")");
        	if (reqParam.status == 'success') {
        		$("#"+bar).css("width","100%");
        		if(flag=='zip'){
        			$("#zipFontId").html("Upload success");
        		}else{
        			$("#exeFontId").html("Upload success");
        		}
			} else {
				$(".filename").val("No file selected...");
				alert(reqParam.msg);
			}
//        	$(".filename").val("No file selected...");
        	window.clearInterval(intId);  
        },
        error:function(data, status, e){ //服务器响应失败时的处理函数
        	alert("Upload failed, please try again");
//        	$(".filename").val("No file selected...");
        	window.clearInterval(intId);  
        }
    });
}