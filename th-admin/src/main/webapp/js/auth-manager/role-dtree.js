var d = new dTree('d');
var r = new dTree('r');
function treePop(userId){
	$("#pop_tree").fadeIn();
	$("#treeUserId").val(userId);
	$.ajax({
        url: basePath + "/userrole/list",
        type: 'post',
        dataType: 'json',
        data : {
        	userId : userId
        },
        cache: false,
        success: function(data){
        	r = new dTree('r');
        	r.add(0,-1,'角色管理');
        	for(var i=0;i<data.length;i++){
        		var role = data[i];
        		r.add(role.id,0,'authrole',role.id,role.roleName,role.selected);
        	}
        	$("#droleid").empty();
        	document.getElementById("droleid").innerHTML = r.toString();
        	r.openAll();
        }
    });
	$.ajax({
        url: basePath + "/usermenu/list",
        type: 'post',
        dataType: 'json',
        data : {
        	userId : userId
        },
        cache: false,
        success: function(data){
        	d = new dTree('d');
        	d.add(0,-1,'菜单权限树');
        	for(var i=0;i<data.length;i++){
        		var menu = data[i];
        		if(menu.level == 1){
        			d.add(menu.id,0,'authority',menu.id,menu.name,menu.selected);
        			initDtree(menu,menu.subMenus);
        		}
        	}
//        	document.getElementById("dtreeid").innerHTML = "<p><a href='javascript: d.openAll();'>open all</a> | <a href='javascript: d.closeAll();'>close all</a></p>"+d.toString();
        	$("#dtreeid").empty();
        	document.getElementById("dtreeid").innerHTML = d.toString();
			d.openAll();
        }
    });
	
}  

function initDtree(menu,data){
	for(var i=0;i<data.length;i++){
		var m = data[i];
		d.add(m.id,menu.id,'authority',m.id,m.name,m.selected);
	}
}

function saveUserRoleAndMenu(){
	var userId = $("#treeUserId").val();
	var menuIds = new Array();
	var roleIds = new Array();
	var authmenu = document.all.authority;	
	for(i=0;i<authmenu.length;i++){
		if(authmenu[i].checked){					
			menuIds.push(authmenu[i].value);
		}
	}	
	var authrole = document.all.authrole;	
	for(i=0;i<authrole.length;i++){
		if(authrole[i].checked){					
			roleIds.push(authrole[i].value);
		}
	}	
	$.ajax({
        url: basePath + "/userrole/save",
        type: 'post',
        dataType: 'json',
        data : {
        	userId : userId,
        	roleIds : roleIds.toString(),
        	menuIds : menuIds.toString()
        },
        cache: false,
        success: function(data){
        	if(data!=null && data == true){
        		alert("操作成功");
        		
        		$("#pop_tree").fadeOut();
        	}else{
        		alert("操作失败");
        	}
        	
        }
    });
	
}

