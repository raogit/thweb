var curPage=1;
jQuery(document).ready(function() {
	(function($){
		$(window).load(function(){
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data);
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
		});
	})(jQuery);
	refreshTime();
	btn();
	tab();
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
        		tableData(curPage);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}
function changeSelect(val){
	$("#categoryId").val(val)
	tableData(curPage);
}
function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn(10);
	var name = $("#name").val();
	var categoryId = $("#categoryId").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();	
	$.ajax({
        url: basePath + "/storeproduct/page",
        type: 'post',
        dataType: 'json',
        data : {
        	name : name,
        	categoryId : categoryId,
        	startDate : startDate,
        	endDate : endDate,
        	curPage : pageNum
        },
        cache: false,
        success: function(data){
        	debugger;
        	if(data!=null&&data!=""){
        		initTable(data);
        		initPage(data);
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
			+"<td>"+item.name+"</td>"
			+"<td>"+item.price+"</td>"
			+"<td>"+item.picture+"</td>"
			+"<td>"+time+"</td>";
		var operation = "<td style='text-align: center;'><a href='javascript:edit("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:del("+item.id+")' class='inner_btn'>删除</a></td>"
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

function edit(id){
	$("#pop").fadeIn(10);	
	$("#popStoreProductId").val(id);
	$("#popName").val("");
	$("#picture").val("");
	$("#popPrice").val("");
	$("#picture").val("");
	$("#bannerpicture").attr("src","");
	if(id<=0){
		$("#pupTitle").html("添加");
	}else{
		$("#pupTitle").html("修改");
		$.ajax({
	        url: basePath + "/storeproduct/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		$("#popName").val(data.name);
	        		$("#popPrice").val(data.price);
	        		$("#picture").val(data.picture);
	        		$("#bannerpicture").attr("src",basePath+"/download/png?fileName="+data.picture);
	        	}
	        }
	    });
	}
}
function add(id){	
	$("#pupTitle").html("添加");
	$("#pop").fadeIn(10);	
	$("#popStoreProductId").val(0);
	$("#popName").val("");
	$("#picture").val("");
	$("#popPrice").val("");
	$("#bannerpicture").attr("src","");
}
function save(){
	var id = $("#popStoreProductId").val();
	var name = $("#popName").val();
	var picture = $("#picture").val();
	var price = $("#popPrice").val();
	var categoryId = $("#categoryId").val();
	
	if(isEmpty(name)){
		alert("请填写内容");
		return ;
	}
	$.ajax({
        url: basePath + "/storeproduct/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	name : name,
        	picture : picture,
        	price : price,
        	categoryId : categoryId
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
	        url: basePath + "/marketnews/delete",
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

function tab(){
	//tab
	$(".admin_tab li a").click(function(){
		 var liindex = $(".admin_tab li a").index(this);
		 $(this).addClass("active").parent().siblings().find("a").removeClass("active");
		 $(".admin_tab_cont").eq(liindex).fadeIn(150).siblings(".admin_tab_cont").hide();
	});
}
function refreshTime(){
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 12*30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
}

function clear(){
	$("#contentId").html("");
}
function upload(fileId){
	var file = $("#fileId").val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var url=basePath + "/upload/image";
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
        		$("#bannerpicture").attr("src",basePath+"/download/png?fileName="+reqParam);
        		$("#picture").val(reqParam);
			} else {
				alert("上传失败");
			}
        }
    });
}

function del(id){
	$.ajax({
        url: basePath + "/category/delete",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	if(data!=""&& data!=false){
        		tableData(curPage);
        	}
        }
    });
}