var curPage=1;
jQuery(document).ready(function() {	
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
	btn();
	tableData(curPage);
	
});

function save(){
	var menuId = $("#menuId").val();
	var title = $("#poptitle").val();
	var source = $("#popsource").val();
	var content = $("#contentId").html();
	var id = $("#id").val();
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	if(isEmpty(source)){
		alert("请填写来源");
		return ;
	}
	if(isEmpty(title)){
		alert("请填写标题");
		return ;
	}
	$.ajax({
        url: basePath + "/rich/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	menuId : menuId,
        	title : title,
        	source : source,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data==true){
        		alert("操作成功");
        		tableData(curPage);
        		$("#pop_obj").fadeOut();
        	}else{
        		alert(json.obj);
        	}
        }
    });
}

function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn();
	var menuId = $("#menuId").val();
	var title = $("#title").val();
	var source = $("#source").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();
	
	$.ajax({
        url: basePath + "/cultrue/page",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId,
        	title : title,
        	source : source,
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
			+"<td style='text-align: center;'><a href='javascript:showPop("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:del("+item.id+")' class='inner_btn'>删除</a></td>"
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

function showPop(id){
	$("#pop_obj").fadeIn();
	$("#id").val(id);
	$("#poptitle").val("");
	$("#popsource").val("");
	clear();
	if(id>0){
		$.ajax({
	        url: basePath + "/cultrue/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		$("#poptitle").val(data.title);
	        		$("#popsource").val(data.source);
	        		$("#contentId").html(data.content);
	        	}
	        }
	    });
	}
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

function btn(){
	//弹出:保存
	$("#savePop").click(function(){
		save();
	});
	//弹出：清空
	$("#clearPop").click(function(){
		clear();
	});
	//弹出：关闭
	$("#closePop").click(function(){
		 $("#pop_obj").fadeOut();
	});
}

function clear(){
	$("#contentId").html("");
}
