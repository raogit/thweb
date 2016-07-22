function selectValue(id){
	var select = document.getElementById(id);  
	for(var i=0; i<select.options.length; i++){  
	    if(select.options[i].selected){  
	        return select.options[i].value; 
	    }  
	}  
}

function isEmpty(str){
	if(str==null || str==""){
		return true;
	}
}