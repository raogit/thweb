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
	$("#startDate").val(curentTime(curDate.getTime() - 24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()));
	loading();
	btn();
	tab();
	getUser(1);
});

function getUser(pageNum){
	$(".loading_area").fadeIn();
	debugger;
	var userName = $("#username").val();
	var type = $("#type option:selected").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();
	
	$.ajax({
        url: basePath + "/user/page",
        type: 'post',
        dataType: 'json',
        data : {
        	userName : userName,
        	type : type,
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
        	$(".loading_area").fadeOut(1500);
        }
    });
}

function initTable(list){
	var userlist = $("#userlist tbody");
	userlist.empty();
	for(var i=0;i<list.length;i++){
		var user = list[i];
		var time = curentTime(user.createTime);
		var tr = "<tr>"
			+"<td>"+user.id+"</td>"
			+"<td>"+user.userName+"</td>"
			+"<td>"+user.type+"</td>"
			+"<td>"+user.email+"</td>"
			+"<td>"+time+"</td>"
			+"<td><a href='javascript:editUser("+user.id+")' class='inner_btn'>编辑</a><a href='' class='inner_btn'>权限</a><a href='javascript:deleteUser("+user.id+")' class='inner_btn'>删除</a></td>"
			+"</tr>";
		userlist.append(tr);
	}
}

function initPage(page){
	var paging = $(".paging");
	paging.empty();
	var prePage = page.curPage-1 < 1 ? 1 : page.curPage-1;
	var nextPage = page.curPage+1 > page.totalPage ? page.totalPage : page.curPage+1;
	paging.append("<a href='javascript:void(0);' onclick='getUser(1)' ><<</a>");
	paging.append("<a href='javascript:void(0);' onclick='getUser("+prePage+")' ><</a>");
	for(var i=0;i<page.totalPage;i++){
		if((i+1) == page.curPage){
			paging.append("<a href='javascript:void(0);' onclick='getUser("+(i+1)+")' style='background: #ff99ff;'>"+(i+1)+"</a>");
		}else{
			paging.append("<a href='javascript:void(0);' onclick='getUser("+(i+1)+")' >"+(i+1)+"</a>");
		}
	}
	paging.append("<a href='javascript:void(0);' onclick='getUser("+nextPage+")' >></a>");
	paging.append("<a href='javascript:void(0);' onclick='getUser("+(page.totalPage)+")' >>></a>");
}

function editUser(id){
	$(".pop_bg").fadeIn();
	$.ajax({
        url: basePath + "/user/get",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	$(".loading_area").fadeOut(1500);
        	
        }
    });
}

function deleteUser(id){
	if(confirm("刪除将无法恢复?")){
		$.ajax({
	        url: basePath + "/user/delete",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data!=null && data){
	        		alert("删除成功!");
	        		getUser(1);
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
		$(".pop_bg").fadeIn();
	});
	//弹出：确认按钮
	$(".trueBtn").click(function(){
		 $(".pop_bg").fadeOut();
	});
	//弹出：取消或关闭按钮
	$(".falseBtn").click(function(){
		 $(".pop_bg").fadeOut();
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