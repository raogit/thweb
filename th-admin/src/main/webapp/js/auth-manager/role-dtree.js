var d = new dTree('d');
function treePop(roleId){
	$("#pop_tree").fadeIn();
	$("#treeRoleId").val(roleId);
	$.ajax({
        url: basePath + "/role/menu",
        type: 'post',
        dataType: 'json',
        data : {
        	roleId : roleId
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
	var roleId = $("#treeRoleId").val();
	var menuIds = new Array();
	var authmenu = document.all.authority;	
	for(i=0;i<authmenu.length;i++){
		if(authmenu[i].checked){					
			menuIds.push(authmenu[i].value);
		}
	}	
	$.ajax({
        url: basePath + "/role/saverolemenu",
        type: 'post',
        dataType: 'json',
        data : {
        	roleId : roleId,
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

