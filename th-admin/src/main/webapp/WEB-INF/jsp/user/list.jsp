<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>天虹</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<jsp:include page="../base/base.jsp"></jsp:include>

</head>

<body>
	<div class="modal-body">
		<div class="row" style="padding-top: 5px">
			<label for="start-time" class="control-label span2  lab1"
				style="float: left; padding-top: 10px; text-align: right; width: 15%;">Start
				Time：</label>
			<div id="start-time" class="span3"
				style="float: left; padding-top: 10px; margin-left: 10px; width: 20%;">
				<div class="input-group">
					<input class="Wdate" type="text" id="startDate"
						onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})"
						name="startTime" style="width: 150px;" />
				</div>
			</div>

			<label for="end-time" class="control-label span2"
				style="float: left; width: 10%; padding-top: 10px; text-align: right;">End
				Time:</label>
			<div id="end-time" class="span3"
				style="float: left; padding-top: 10px; width: 20%;">
				<div class="input-group">
					<input class="Wdate" type="text" id="endDate"
						onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})"
						name="endTime" style="width: 150px;" />
				</div>
			</div>
		</div>
		<div style="height: 20px;"></div>
		<div class="control-group">
			<label class="control-label span2" style="float:left;text-align: right;width:80px;margin-left: 10px;">用户名:</label><input id="product" type="text" style="width:100px;"/> 
			<div class="row" style="float: left; margin-left: 20px; width: 200px;">
				<button id="query" type="button" class="btn btn-success" style="width: 72px; float: left;">Search</button>
			</div>
		</div>
	</div>
	<div></div>
</body>
</html>
