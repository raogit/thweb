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
	initMarket();
});
 
function initMarket(){
	$(".loading_area").fadeIn(10);
	var marketSelect = $("#marketSelect");
	marketSelect.html("");
	$.ajax({
        url: basePath + "/market/list",
        type: 'post',
        dataType: 'json',
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		for(var i=0; i<data.length;i++){
        			var item = data[i];
        			marketSelect.append('<option value="'+item.id+'">'+item.name+'</option>');
        			if(i==0){
        				$("#marketId").val(item.id);
        			}
        		}
        		tableData(curPage);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}
function changeSelect(val){
	$("#marketId").val(val);
	tableData(curPage);
}
function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn(10);
	var name = $("#name").val();
	var type = $("#type").val();
	var marketId = $("#marketId").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();	
	$.ajax({
        url: basePath + "/marketnews/page",
        type: 'post',
        dataType: 'json',
        data : {
        	name : name,
        	type : type,
        	marketId : marketId,
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
			+"<td>"+item.title+"</td>"
			+"<td>"+item.path+"</td>"
			+"<td>"+time+"</td>";
		var operation = "<td style='text-align: center;'><a href='javascript:showObj("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:deleteObj("+item.id+")' class='inner_btn'>删除</a></td>"
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

function showObj(id){
	$("#pop_user").fadeIn(10);
	$("#marketNewsId").val(id);
	$("#popName").val("");
	$("#popIntroduce").val("");
	$("#popLink").val("");
	$("#popUrl").val("");
	initPicture(id);
	if(id<=0){
		$("#pupTitle").html("添加");
	}else{
		$("#pupTitle").html("修改");
		$.ajax({
	        url: basePath + "/marketnews/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		$("#marketId").val(data.marketId);
	        		$("#marketNewsId").val(data.id);
	        		$("#contentId").html(data.content);
	        		$("#title").val(data.title);
	        	}
	        }
	    });
	}
}
function add(marketNewsId){
	$("#bannerpicture").empty();
	$("#pupTitle").html("添加");
	$("#pop_user").fadeIn(10);
	$("#marketNewsId").val(0);
	$("#popName").val("");
	$("#popIntroduce").val("");
	$("#popLink").val("");
	$("#popUrl").val("");
}
function addOrEdituser(){
	var marketId = $("#marketId").val();
	var marketNewsId = $("#marketNewsId").val();
	var content = $("#contentId").html();
	var title = $("#title").val();
	var type = $("#type").val();
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	$.ajax({
        url: basePath + "/marketnews/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : marketNewsId,
        	type : type,
        	title : title,
        	marketId : marketId,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		alert("操作成功");
        		tableData(curPage);
        		$("#pop_user").fadeOut(10);
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

function loading(){
	$("#loading").click(function(){
//		$(".loading_area").fadeIn(10);
//		$(".loading_area").fadeOut(10);
	});
}

function btn(){
	//弹出文本性提示框
	$("#showPopTxt").click(function(){
		$("#pop_user").fadeIn(10);
	});
	//弹出：确认按钮
	$("#saveContent").click(function(){
		addOrEdituser();
		
	});
	//弹出：取消或关闭按钮
	$("#close_user").click(function(){
		 $("#pop_user").fadeOut(10);
	});
	//弹出：取消或关闭按钮
	$("#close_tree").click(function(){
		 $("#pop_tree").fadeOut(10);
	});
	$("#confirm_tree").click(function(){
		saveUserRoleAndMenu();
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

function initPicture(marketNewsId){
	$.ajax({
        url: basePath + "/marketnews/get",
        type: 'post',
        dataType: 'json',
        data : {
        	id : marketNewsId
        },
        cache: false,
        success: picture
    });
}
function picture(data){
	var bannerpicture = $("#bannerpicture");
	bannerpicture.empty();
	if(data!=null && data!="" && data!=false){
		
		var picture = data;
		$("#marketNewsId").val(data.id);
		if(data.path!=null){
			var html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			bannerpicture.append(html);
		}
	}
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
	var marketId = $("#marketId").val();
	var marketNewsId = $("#marketNewsId").val();
	var type = $("#type").val();
	var uri = $("#uri").val();
	var url=basePath + uri+"?type="+type+"&marketId="+marketId+"&marketNewsId="+marketNewsId;
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
        	if (reqParam != "" && reqParam!=false) {
        		initPicture(reqParam.id);	
			} else {
				alert("操作失败");
			}
        }
    });
}

function del(id){
	$.ajax({
        url: basePath + "/marketnews/deletepicture",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}
