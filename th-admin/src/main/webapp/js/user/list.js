/**
 * 
 */
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
	loading();
	btn();
	tab();
	getUser();
});


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
		 alert("你点击了确认！");//测试
		 $(".pop_bg").fadeOut();
		 });
	 //弹出：取消或关闭按钮
	 $(".falseBtn").click(function(){
		 alert("你点击了取消/关闭！");//测试
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
function getUser(){
	debugger;
	$.ajax({
        url: basePath + "/user/page",
        type: 'post',
        dataType: 'json',
        cache: false,
        success: function(data){
        	debugger;
        	if(data!=null&&data!=""){
        		initTable(data.obj);
        		initPage(data);
        	}else{
        		alert(json.obj);
        	}
        }
    });
}
function initTable(list){
	var userlist = $("#userlist tbody");
	userlist.empty();
	for(var i=0;i<list.length;i++){
		var user = list[i];
		var tr = "<tr>"
			+"<td>"+user.id+"</td>"
			+"<td>"+user.userName+"</td>"
			+"<td>"+user.type+"</td>"
			+"<td>"+user.email+"</td>"
			+"<td>"+user.createTime+"</td>"
			+"<td><a href='' class='inner_btn'>编辑</a><a href='' class='inner_btn'>删除</a></td>"
			+"</tr>";
		userlist.append(tr);
	}
}

function initPage(page){
	var paging = $(".paging");
	paging.empty();
	paging.append("<a><<</a>");
	paging.append("<a><</a>");
	for(var i=0;i<page.totalPage;i++){
		if((i+1) == page.curPage){
			paging.append("<a style='background: #ff99ff;'>"+(i+1)+"</a>");
		}else{
			paging.append("<a>"+(i+1)+"</a>");
		}
		
	}
	paging.append("<a>></a>");
	paging.append("<a>>></a>");
}