var d = new dTree('d');

function treePop(id){
	debugger;
	$("#pop_tree").fadeIn();
	$.ajax({
        url: basePath + "/user/get",
        type: 'post',
        dataType: 'json',
        data : {
        	id : 2
        },
        cache: false,
        success: function(data){
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
        	
        	document.getElementById("dtreeid").innerHTML = "<p><a href='javascript: d.openAll();'>open all</a> | <a href='javascript: d.closeAll();'>close all</a></p>"+d.toString();
			d.openAll();
        	
        }
    });
	
	
	
}  