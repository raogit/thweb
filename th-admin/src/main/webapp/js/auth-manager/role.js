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
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
	loading();
	btn();
	tab();
	tableData(curPage);
});

function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn();
	var roleName = $("#rolename").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();
	
	$.ajax({
        url: basePath + "/role/page",
        type: 'post',
        dataType: 'json',
        data : {
        	roleName : roleName,
        	startDate : startDate,
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
	 
	var userlist = $("#userlist tbody");
	userlist.empty();
	for(var i=0;i<list.length;i++){
		var item = list[i];
		var time = curentTime(item.createTime);
		var tr = "<tr>"
			+"<td>"+item.id+"</td>"
			+"<td>"+item.roleName+"</td>"
			+"<td>"+item.roleDescription+"</td>"
			+"<td>"+time+"</td>"
			+"<td style='text-align: center;'><a href='javascript:showUser("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:treePop("+item.id+")' class='inner_btn'>权限</a><a href='javascript:deleteUser("+item.id+")' class='inner_btn'>删除</a></td>"
			+"</tr>";
		userlist.append(tr);
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

function showUser(id){
	$("#pop_user").fadeIn(200);
	$("#popRoleId").val(id);
	$("#popRoleName").val("");
	$("#popDescription").val("");
	if(id<=0){
		$("#pupTitle").html("添加角色");
	}else{
		$("#pupTitle").html("修改角色");
		$.ajax({
	        url: basePath + "/role/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	 
	        	if(data){
	        		$("#popRoleName").val(data.roleName);
		        	$("#popDescription").val(data.roleDescription);
	        	}
	        	
	        }
	    });
	}
}

function addOrEdituser(){
	var id = $("#popRoleId").val();
	var roleName = $("#popRoleName").val();
	var roleDescription = $("#popDescription").val();
	if(isEmpty(roleName)){
		alert("请输入角色名");
		return ;
	}
	
	var url = basePath + "/role/add";
	if(id>0){
		url = basePath + "/role/edit";
	}
	$.ajax({
        url: url,
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	roleName : roleName,
        	roleDescription : roleDescription
        },
        cache: false,
        success: function(data){
        	if(data){
        		alert("操作成功!");
        	}else{
        		alert("操作失败!");
        	}
        	tableData(curPage);
        	$("#pop_user").fadeOut(200);
        }
    });
}
function isEmpty(str){
	if(str==null || str==""){
		return true;
	}
}
function deleteUser(id){
	if(confirm("刪除将无法恢复?")){
		$.ajax({
	        url: basePath + "/role/delete",
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
		$(".loading_area").fadeIn();
		$(".loading_area").fadeOut(1500);
	});
}

function btn(){
	//弹出文本性提示框
	$("#showPopTxt").click(function(){
		$("#pop_user").fadeIn();
	});
	//弹出：确认按钮
	$("#confirm_user").click(function(){
		addOrEdituser();
		 $("#pop_user").fadeOut();
	});
	//弹出：取消或关闭按钮
	$("#close_user").click(function(){
		 $("#pop_user").fadeOut();
	});
	//弹出：取消或关闭按钮
	$("#close_tree").click(function(){
		 $("#pop_tree").fadeOut();
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
