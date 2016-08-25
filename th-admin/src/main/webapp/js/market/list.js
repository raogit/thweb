var curPage=1;
jQuery(document).ready(function() {
	(function($){
		$(window).load(function(){
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
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
	loading();
	btn();
	tab();
	tableData(curPage);
});

function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn(10);
	var name = $("#name").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();	
	$.ajax({
        url: basePath + "/market/page",
        type: 'post',
        dataType: 'json',
        data : {
        	name : name,       	
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
			+"<td>"+item.name+"</td>"
			+"<td>"+time+"</td>";
		var operation = "<td style='text-align: center;'><a href='javascript:showObj("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:deleteObj("+item.id+")' class='inner_btn'>删除</a></td>"
		
		var end_tr = "</tr>";
		userlist.append(tr+operation+end_tr);
	}
}

function subMenu(menuId){
	$("#parentMenuId").val(menuId);
	tableData(1);
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
	$("#popMarketId").val(id);
	$("#popName").val("");
	$("#popIntroduce").val("");
	$("#popLink").val("");
	$("#popUrl").val("");
	if(id<=0){
		$("#pupTitle").html("添加");
	}else{
		$("#pupTitle").html("修改");
		$.ajax({
	        url: basePath + "/market/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		$("#popMarketId").val(data.id);
	        		$("#popName").val(data.name);
	        		$("#popIntroduce").val(data.introduce);
	        	}
	        	
	        }
	    });
	}
}
function add(){
	$("#pupTitle").html("添加");
	$("#pop_user").fadeIn(10);
	$("#popMarketId").val(0);
	$("#popName").val("");
	$("#popIntroduce").val("");
	$("#popLink").val("");
	$("#popUrl").val("");
}
function addOrEdituser(){
	var id = $("#popMarketId").val();
	var name = $("#popName").val();
	var introduce = $("#popIntroduce").val();
	debugger;
	
	if(isEmpty(name)){
		alert("请输入门店名");
		return ;
	}
	var url = basePath + "/market/save";
	
	$.ajax({
        url: url,
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	name : name,
        	introduce : introduce
        },
        cache: false,
        success: function(data){
        	if(data){
        		refreshTime();
        		alert("操作成功!");
        		tableData(curPage);
            	$("#pop_user").fadeOut(200);
        	}else{
        		alert("操作失败!");
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
	        url: basePath + "/market/delete",
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
	$("#confirm_user").click(function(){
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
