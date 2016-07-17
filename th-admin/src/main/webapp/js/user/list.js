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
	getUser(1);
});

function getUser(pageNum){
	$(".loading_area").fadeIn();
	var userName = $("#username").val();
	var type = "";
	var popType =  document.getElementById("type");
	for(var i=0; i<popType.length; i++){  
	    if(popType[i].selected){  
	    	type = popType[i].value;
	    	break;
	    }  
	}  
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
        	$(".loading_area").fadeOut();
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
			+"<td><a href='javascript:showUser("+user.id+")' class='inner_btn'>编辑</a><a href='javascript:treePop("+user.id+")' class='inner_btn'>权限</a><a href='javascript:deleteUser("+user.id+")' class='inner_btn'>删除</a></td>"
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

function showUser(id){
	$("#pop_user").fadeIn(200);
	$("#popUserId").val(id);
	$("#popUserName").val("");
	$("#popPassword").val("");
	$("#popType").val(0);
	$("#popEmail").val("");
	if(id<=0){
		$("#pupTitle").html("添加用户");
	}else{
		$("#pupTitle").html("修改用户");
		$.ajax({
	        url: basePath + "/user/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	debugger;
	        	if(data){
	        		$("#popUserName").val(data.userName);
		        	$("#popPassword").val(data.password);
		        	$("#popType").val(data.type);
		        	$("#popEmail").val(data.email);
	        	}
	        	
	        }
	    });
	}
}

function addOrEdituser(){
	var id = $("#popUserId").val();
	var userName = $("#popUserName").val();
	var password = $("#popPassword").val();
	
	var type = "";
	var popType =  document.getElementById("popType");
	for(var i=0; i<popType.length; i++){  
	    if(popType[i].selected){  
	    	type = popType[i].value;
	    	break;
	    }  
	}  
	
	var email = $("#popEmail").val();
	if(isEmpty(userName)){
		alert("请输入用户名");
		return ;
	}
	if(isEmpty(password)){
		alert("请输入密码");
		return ;
	}
	
	var url = basePath + "/user/add";
	if(id>0){
		url = basePath + "/user/edit";
	}
	debugger;
	$.ajax({
        url: url,
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	userName : userName,
        	password : password,
        	type : type,
        	email : email
        },
        cache: false,
        success: function(data){
        	if(data){
        		alert("操作成功!");
        	}else{
        		alert("操作失败!");
        	}
        	getUser(1);
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
}
function treePop(id){
	debugger;
	$("#pop_tree").fadeIn();
	
	
	var d = new dTree('dTree');
	d.add(0,-1,'菜单权限树');
	d.add(1,0,'authority','25','一级菜单1 ');
	d.add(2,1,'authority','26','二级菜单1 ');
	d.add(3,2,'authority','27','三级菜单1 ');
	d.add(4,2,'authority','28','三级菜单2 ');
	
	d.add(32,3,'authority','26','二级菜单1 ');
	d.add(33,32,'authority','27','用户管理 ');
	d.add(34,32,'authority','28','用户组管理 ');
	
	d.add(22,1,'authority','26','二级菜单1 ');
	d.add(23,22,'authority','27','用户管理 ');
	d.add(24,22,'authority','28','用户组管理 ');
			
	d.add(6,0,'authority','25','一级菜单2 ',true,true);
	d.add(7,6,'authority','26','二级菜单2 ',true,true);
	d.add(8,7,'authority','27','用户管理 ',true,true);
	d.add(9,7,'authority','28','用户组管理 ',true,true);
	
	
	d.add(11,0,'authority','25','一级菜单3 ');
	d.add(12,11,'authority','26','二级菜单3 ');
	d.add(13,12,'authority','27','用户管理 ');
	d.add(14,12,'authority','27','用户组管理 ');		
	
	debugger;
	var a = d.toString();
	//document.getElementById("authTree").write(d);
	$("#authTree").append(a);
	d.openAll();
}
function tab(){
	//tab
	$(".admin_tab li a").click(function(){
		 var liindex = $(".admin_tab li a").index(this);
		 $(this).addClass("active").parent().siblings().find("a").removeClass("active");
		 $(".admin_tab_cont").eq(liindex).fadeIn(150).siblings(".admin_tab_cont").hide();
	});
}

function createPermitTree(datastr) {  
    //var datastr = eval("" + datastr + "");  
    $('#authTree').jstree({  
        'plugins' : [ "wholerow", "checkbox", "types" ],  
        'core' : {  
            "themes" : {  
                "responsive" : false  
            },  
            'data' : [ { "id" : "1", "parent" : "#", "text" : "root" },  
                       { "id" : "2", "parent" : "1", "text" : "child 1" },  
                       { "id" : "3", "parent" : "1", "text" : "child 2" }  ]  
        },  
        "types" : {  
            "default" : {  
                "icon" : "fa fa-folder icon-state-warning icon-lg"  
            },  
            "file" : {  
                "icon" : "fa fa-file icon-state-warning icon-lg"  
            }  
        }  
    });  
}  