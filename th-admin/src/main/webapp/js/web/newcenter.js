var curPage= 1;
jQuery(document).ready(function() {	
	init();
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	refreshTime();
	refreshPopTime();
	btn();
	tableData(1);
});
function refreshTime(){
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 12*30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
}

function refreshPopTime(){
	var curDate = new Date();
	$("#popStartTime").val(curentDate(curDate.getTime()));
}
function edit(id){
	add(id);
	$("#popNewsId").val(id)
	if(id>0){
		$.ajax({
	        url: basePath + "/web/newscenter/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		refreshTime();
	        		$("#popTitle").val(data.title);
	        		$("#contentId").html(data.content);
	        		$("#popStartTime").val(curentDate(data.newsTime));
	        		$("#popSource").val(data.source);
	        		$("#popType").val(data.type);
	        		if(data.picture!=null && data.picture!=""){
	        			$("#productpicture").attr("src",basePath+"/download/png?fileName="+data.picture);
	        			$("#popPicture").val(data.picture);
	        		}
	        	}
	        }
	    });
	}
}
function add(id){	
	$("#pop").fadeIn(10);	
	$("#popTitle").val("");
	$("#contentId").html("");
	$("#productpicture").attr("src","");
	$("#popPicture").val("");
	$("#popType").val("新闻头条");
	
	refreshPopTime();
}
function save(){
	var id = $("#popNewsId").val();
	var title = $("#popTitle").val();
	var content = $("#contentId").html();
	var contentText = $("#contentId").text();
	var startTime = $("#popStartTime").val();
	var menuId = $("#menuId").val();
	var type = $("#popType").val();
	var source = $("#popSource").val();
	var picture = $("#popPicture").val();
	
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	$.ajax({
        url: basePath + "/web/newscenter/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	menuId : menuId,
        	type : type,
        	title : title,
        	source : source,
        	content : content,
        	backup1 : contentText,
        	picture : picture,
        	newsTimeStr : startTime,
        
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		alert("操作成功");
        		tableData(curPage);
        		$("#pop").fadeOut(10);
        	}else{
        		alert("操作失败");
        	}
        }
    });
}
function isEmpty(str){
	if(str==null || str==""){
		return true;
	}
}
function deleteObj(id){
	if(confirm("刪除将无法恢复?")){
		$.ajax({
	        url: basePath + "/web/newscenter/delete",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data!=null && data){
	        		alert("删除成功!");
	        		tableData(curPage);
	        	}else{
	        		alert("删除失败!");
	        	}
	        }
	    });
	}
}

function btn(){
	//弹出：确认按钮
	$("#confirm").click(function(){
		save();
	});
	//弹出：取消或关闭按钮
	$("#close").click(function(){
		 $("#pop").fadeOut(10);
	});
}

function init(){
	var menuId = $("#menuId").val();
	
	//initRich(menuId);
	initPicture(menuId);
	//initMarket();
}

function initMarket(){
	$.ajax({
        url: basePath + "/market/list",
        type: 'post',
        dataType: 'json',
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		var marketSelect = $("#marketSelect");
        		for(var i=0;i<data.length;i++){
        			var item = data[i];
        			marketSelect.append("<option value='"+item.id+"'>"+item.name+"</option>");
        			if(i==0){
        				$("#marketId").val(item.id);
        			}
        		}
        	}
        }
    });
}
function initRich(menuId){
	clear();
	$.ajax({
        url: basePath + "/content/get",
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
            	$("#title").val(data.title);
            	$("#slogan").val(data.slogan);
        	}else{
        		$("#contentId").html("");
        	}
        }
    });
}
function initPicture(menuId){
	$.ajax({
        url: basePath + "/picture/listbymenuid",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: picture
    });
}
function picture(data){
	var bannerpicture = $("#bannerpicture");
	bannerpicture.empty();
	if(data!=null && data!="" && data!=false){
		
		for(var i=0;i<data.length;i++){
			var picture = data[i];
			var html;
			if(i==0){
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else if(i==data.length-1){
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else{
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}
			bannerpicture.append(html);
		}
	}
	
}

function clear(){
	$("#contentId").html("");
}
function upload1(fileId,type){
	debugger;
	var file = $("#"+fileId).val();
	if(!file){
		alert("请选择图片");
		return;
	}
	
	var menuId = $("#menuId").val();
	var uri = $("#uri").val();
	var title = $("#picTitle").val();
	var picUrl = $("#url").val();
	var url=basePath + uri+"?type="+type+"&menuId="+menuId+"&title="+title+"&url="+picUrl;
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
        	if (reqParam == true) {
        		initPicture(menuId);	
			} else {
				alert("操作失败");
			}
        }
    });
}
function upload(fileId){
	var file = $("#"+fileId).val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var url=basePath + "/upload/filePicId";
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
            var reqParam = data;
        	if (reqParam != "" && reqParam!=false) {
        		$("#productpicture").attr("src",basePath+"/download/png?fileName="+reqParam);
        		$("#popPicture").val(reqParam);
			} else {
				alert("上传失败");
			}
        }
    });
}
function left(id){
	$.ajax({
        url: basePath + "/picture/left",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}

function right(id){
	$.ajax({
        url: basePath + "/picture/right",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}

function del(id){
	$.ajax({
        url: basePath + "/picture/delete",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}
function changeSelect(val){
	$("#type").val(val)
	tableData(curPage);
}
function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn(10);
	var title = $("#title").val();
	var type = $("#type").val();
	var menuId = $("#menuId").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();	
	$.ajax({
        url: basePath + "/web/newscenter/page",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId,
        	title : title,
        	type : type,
        	startDate : startDate,
        	endDate : endDate,
        	curPage : pageNum
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		initTable(data);
        		initPage(data);
        	}else{
        		alert(json.obj);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}

function initTable(data){
	var userlist = $("#userlist tbody");
	userlist.empty();
	var list = data.obj;
	var totalRow = data.totalRow;
	for(var i=0;i<list.length;i++){
		var item = list[i];
		var time = curentTime(item.createTime);
		var tr = "<tr>"
			+"<td>"+(i+1)+"</td>"
			+"<td>"+item.type+"</td>"
			+"<td>"+item.title+"</td>"
			+"<td>"+item.newsTimeStr+"</td>"
			+"<td>"+time+"</td>";
		var operation = "<td style='text-align: center;'><a href='javascript:edit("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:deleteObj("+item.id+")' class='inner_btn'>删除</a></td>"
		var end_tr = "</tr>";
		userlist.append(tr+operation+end_tr);
	}
}

function initPage(page){
	var paging = $(".paging");
	paging.empty();
	var prePage = page.curPage-1 < 1 ? 1 : page.curPage-1;
	var nextPage = page.curPage+1 > page.totalPage ? page.totalPage : page.curPage+1;
	paging.append("<a href='javascript:void(0);' onclick='tableData(1)' ><<</a>");
	paging.append("<a href='javascript:void(0);' onclick='tableData("+prePage+")' ><</a>");
	for(var i=0;i<page.totalPage;i++){
		if((i+1) == page.curPage){
			paging.append("<a href='javascript:void(0);' onclick='tableData("+(i+1)+")' style='background: #ff99ff;'>"+(i+1)+"</a>");
		}else{
			paging.append("<a href='javascript:void(0);' onclick='tableData("+(i+1)+")' >"+(i+1)+"</a>");
		}
	}
	paging.append("<a href='javascript:void(0);' onclick='tableData("+nextPage+")' >></a>");
	paging.append("<a href='javascript:void(0);' onclick='tableData("+(page.totalPage)+")' >>></a>");
}
