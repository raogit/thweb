var curPage=1;
jQuery(document).ready(function() {	
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
	tableData(curPage);
	
});


function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn();
	var menuId = $("#menuId").val();
	var title = $("#title").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();
	debugger;
	$.ajax({
        url: basePath + "/cultrue/page",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId,
        	title : title,
        	endDate : endDate,
        	curPage : pageNum
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		initTable(data.obj);
        		initPage(data);
        	}else{
        		alert(json.obj);
        	}
        	$(".loading_area").fadeOut();
        }
    });
}

function initTable(list){
	var datalist = $("#datalist tbody");
	datalist.empty();
	for(var i=0;i<list.length;i++){
		var item = list[i];
		var time = curentTime(item.createTime);
		var tr = "<tr>"
			+"<td>"+(i+1)+"</td>"
			+"<td>"+item.title+"</td>"
			+"<td>"+item.source+"</td>"
			+"<td>"+time+"</td>"
			+"<td style='text-align: center;'><a href='javascript:del("+item.id+")' class='inner_btn'>删除</a></td>"
			+"</tr>";
		datalist.append(tr);
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

function del(id){
	if(confirm("刪除将无法恢复?")){
		$.ajax({
	        url: basePath + "/cultrue/delete",
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

function upload(fileId){
	var file = $("#fileId").val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var menuId = $("#menuId").val();
	var uri = $("#uri").val();
	var url=basePath + uri+"?menuId="+menuId;
	//执行上传文件操作的函数
	$.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	debugger;
        	data = data.replace(/<pre.*">/, '');
            data = data.replace("<PRE>", ''); //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", '');
            var reqParam = eval("(" +data+ ")");
        	if (reqParam == true) {
        		tableData(curPage);
			} else {
				alert("操作失败");
			}
        }
    });
}