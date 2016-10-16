
jQuery(document).ready(function() {	
	init();
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	
});

function init(){
	var menuId = $("#menuId").val();
	
	initContent(menuId);
	initPicture(menuId);
}

function initMarket(){
	$.ajax({
        url: basePath + "/market/list",
        type: 'post',
        dataType: 'json',
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		var marketSelect = $("#marketSelect");
        		for(var i=0;i<data.length;i++){
        			var item = data[i];
        			marketSelect.append("<option value='"+item.id+"'>"+item.name+"</option>");
        			if(i==0){
        				$("#marketId").val(item.id);
        			}
        		}
        	}
        }
    });
}
function initContent(menuId){
	clear();
	$.ajax({
        url: basePath + "/content/inveinfo/get",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""&& data!=false){
        		debugger;
        		$("#contentId").val(data.id);
        		$("#menuId").val(menuId);
        		$("#companyName").val(data.companyName);
        		$("#companyEnName").val(data.companyEnName);
        		$("#address").val(data.address);
        		$("#shortName").val(data.shortName);
        		$("#legalPerson").val(data.legalPerson);
        		$("#secretary").val(data.secretary);
        		$("#registered").val(data.registered);
        		$("#industry").val(data.industry);
        		$("#zipCode").val(data.zipCode);
        		$("#phone").val(data.phone);
        		$("#fax").val(data.fax);
        		$("#ipoRatio").val(data.ipoRatio);
        		$("#webSite").val(data.webSite);
        		$("#marketTime").val(data.marketTime);
        		$("#releaseMode").val(data.releaseMode);
        		$("#underWriter").val(data.underWriter);
        		$("#prospectusTime").val(data.prospectusTime);
        		$("#sponsorInstitution").val(data.sponsorInstitution);
        		$("#issueNumber").val(data.issueNumber);
        		$("#issuePrice").val(data.issuePrice);
        		$("#contentId").val(data.contentId);
        	}else{
        		$("#contentId").val("");
        	}
        }
    });
}
function initPicture(menuId){
	$.ajax({
        url: basePath + "/picture/listbymenuid",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: picture
    });
}
function picture(data){
	var bannerpicture = $("#bannerpicture");
	bannerpicture.empty();
	if(data!=null && data!="" && data!=false){
		
		for(var i=0;i<data.length;i++){
			var picture = data[i];
			var html;
			if(i==0){
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else if(i==data.length-1){
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else{
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}
			bannerpicture.append(html);
		}
	}
	
}
function save(){
	var menuId = $("#menuId").val();
	var companyName =$("#companyName").val();
	var companyEnName =$("#companyEnName").val();
	var address =$("#address").val();
	var shortName =$("#shortName").val();
	var legalPerson =$("#legalPerson").val();
	var secretary =$("#secretary").val();
	var registered =$("#registered").val();
	var industry =$("#industry").val();
	var zipCode =$("#zipCode").val();
	var phone =$("#phone").val();
	var fax =$("#fax").val();
	var ipoRatio =$("#ipoRatio").val();
	var webSite =$("#webSite").val();
	var marketTime =$("#marketTime").val();
	var releaseMode =$("#releaseMode").val();
	var underWriter =$("#underWriter").val();
	var prospectusTime =$("#prospectusTime").val();
	var sponsorInstitution =$("#sponsorInstitution").val();
	var issueNumber =$("#issueNumber").val();
	var issuePrice =$("#issuePrice").val();
	var contentId =$("#contentId").val();
	var basePath = $("#basePath").val();
	debugger;
	$.ajax({
        url: basePath + "/content/inveinfo/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : contentId,
        	menuId : menuId,
        	companyName :companyName,
        	companyEnName :companyEnName,
        	address :address,
        	shortName :shortName,
        	legalPerson :legalPerson,
        	secretary :secretary,
        	registered :registered,
        	industry :industry,
        	zipCode :zipCode,
        	phone :phone,
        	fax :fax,
        	ipoRatio :ipoRatio,
        	webSite :webSite,
        	marketTime :marketTime,
        	releaseMode :releaseMode,
        	underWriter :underWriter,
        	prospectusTime :prospectusTime,
        	sponsorInstitution :sponsorInstitution,
        	issueNumber :issueNumber,
        	issuePrice :issuePrice
        },
        cache: false,
        success: function(data){
        	debugger;
        	if(data!=null&&data!=false){
        		alert("操作成功");
        	}else{
        		alert("操作失败");
        	}
        }
    });
}

function clear(){
	$("#contentId").val("");
}
function upload(fileId,type){
	debugger;
	var file = $("#fileId").val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var menuId = $("#menuId").val();
	var uri = $("#uri").val();
	var title = $("#picTitle").val();
	var picUrl = $("#url").val();
	var url=basePath + uri+"?type="+type+"&menuId="+menuId+"&title="+title+"&url="+url;
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
        	if (reqParam == true) {
        		$("#picTitle").val("");
        		initPicture(menuId);	
			} else {
				alert("操作失败");
			}
        }
    });
}

function left(id){
	$.ajax({
        url: basePath + "/picture/left",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}

function right(id){
	$.ajax({
        url: basePath + "/picture/right",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}

function del(id){
	$.ajax({
        url: basePath + "/picture/delete",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: picture
    });
}