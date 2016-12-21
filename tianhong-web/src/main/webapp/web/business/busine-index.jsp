<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
        <div class="titleImg_content" style="background:url(../images/b_02.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_02.jpg,sizingMethod='scale');">
            <!-- <div class="titleImg_img"><img src="../images/bs8.png"></div> -->
        </div>
        <div class="nav_content">
            <div class="nav_contentBlock">
               <div class="nav_aContent">
                    <a href="${basePath}" class="nav_aBlock icon">首页</a>
                    <a href="javascript:void(0);" class="nav_aBlock icon">${parentMenu.name }</a>
                    <a href="javascript:void(0);" class="nav_aBlock">${menu.name }</a>
                </div>
                <div class="nav_ulBlock">
                	<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
	                	</c:if>
			        </c:forEach>
                </div>
            </div>
        </div>
        <div class="busine_content">
            <div class="busine_contentBox">
               <div class="busine_model1">
                   <div class="busine_shoCon">
                       <div class="busine_shoTit">
                           <h3 style="color:#e9a171;">职能简介</h3>
                           <h5 style="color:#e9a171;">Business School Profile</h5>
                           <div style="background: #e9a171;" class="line"></div>
                       </div>
                       <div style="color:rgb(139, 123, 112);" class="busine_shoCom">${job.content }</div>
                   </div>
                   <div class="busine_shoImg">
                       <img src="../images/bs4.jpg">
                   </div>
                   <div class="clear"></div>
               </div>
               <div class="busine_ProtectTitle">
                    <h3 style="color:#e9a171;" >招商流程</h3>
                    <h5 style="color:#e9a171;" >Profit distribution</h5>
               </div>
               <div class="busine_Top">
                   <ul>
                       <li class="wth1">
                           <a href="javascript:;" class="cur">
                           <i class="bg1"></i>
                           <h3 style="color:#e9a171;">招商咨询</h3>
                           </a>
                       </li>
                       <li  class="wth2">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">参与招标</h3>
                           </a>
                       </li>
                       <li  class="wth3">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth4">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">录用</h3>
                           </a>
                       </li>
                       <li  class="wth5">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth6">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth7">
                           <a href="javascript:;">
                           <i></i>
                           <h3 style="color:#e9a171;">招商成功</h3>
                           </a>
                       </li>
                       <div class="clear"></div>
                   </ul>
                   <div class="clear"></div>
               </div>
               <div class="busine_model2">
                  <div class="busine_newBox">
                       <div class="busine_newTit" style="color:#e9a171;">招商信息</div>
                       <div class="busine_newTop">
                           <ul>
                                <li>
                                   <div class="wth1">公开招标</div>
                                   <div class="wth2">发布时间</div>
                                   <div class="wth2">报名截止时间</div>
                                   <div class="wth3 cente">采购类型</div>
                                   <div class="wth3 cente">公告下载</div>
                               </li>
                           </ul>
                           <div class="clear"></div>
                       </div>
                       <div class="business_ConBox">
                           <c:forEach var="infos" items="${infoList }" begin="0" step="1" varStatus="itemStatus">
                           		<c:if test="${itemStatus.index==0 }">
                           			<div class="busine_newContent">
                           		</c:if>
			                	<c:if test="${itemStatus.index>0 }">
                           			<div class="busine_newContent" style="display:none">
                           		</c:if>
	                               <ul>
	                                    <c:forEach var="item" items="${infos }" begin="0" step="1" varStatus="itemStatus">
						                	<li>
		                                       <div class="wth1">${item.title }</div>
		                                       <div class="wth2">${item.createTimeStr }</div>
		                                       <div class="wth2">${item.backup1 }</div>
		                                       <div class="wth3 cente">${item.backup2 }</div>
		                                       <div class="wth3 cente"><a href="${basePath}/download/pdf?fileName=${item.url}" class="down">下载</a></div>
		                                       <div class="clear"></div>
		                                   </li>
								        </c:forEach>
	                                   <div class="clear"></div>
	                               </ul>
	                               <div class="clear"></div>
	                           </div>
					        </c:forEach>
                       </div>
                       <div class="inves_ProtFocus">
                       		<ul>
	                       		<c:forEach var="infos" items="${infoList }" begin="0" step="1" varStatus="itemStatus">
	                           		<c:if test="${itemStatus.index==0 }">
	                           			 <li class="cur"></li>
	                           		</c:if>
				                	<c:if test="${itemStatus.index>0 }">
	                           			<li></li>
	                           		</c:if>
						        </c:forEach>
                        	</ul>
                        	<div class="clear"></div>
                    	</div>
                    	<div class="clear"></div>
                  </div>
                  <div class="busine_newBox">
                       <div class="busine_newTit busine_newTit2" style="color:#e9a171;">招商动态</div>
                       <div class="busine_SpotContent">
                       		 <c:forEach var="historys" items="${historyList }" begin="0" step="1" varStatus="itemStatus">
                           		<c:if test="${itemStatus.index==0 }">
                           			<div class="busine_Spot">
                           		</c:if>
			                	<c:if test="${itemStatus.index>0 }">
                           			<div class="busine_Spot" style="display:none">
                           		</c:if>
	                               <ul>
	                                    <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
						                	<li>
			                                      <a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id }">
			                                          <h3>${item.title }</h3>
			                                          <h5>${item.createTimeStr }</h5>
			                                          <div class="clear"></div>
			                                      </a>
			                                  </li>
								        </c:forEach>
	                                   <div class="clear"></div>
	                               </ul>
	                               <div class="clear"></div>
	                           </div>
					        </c:forEach>
                        </div>
                       <div class="busine_ProtFocus ">
                        <ul>
                        	<c:forEach var="historys" items="${historyList }" begin="0" step="1" varStatus="itemStatus">
                           		<c:if test="${itemStatus.index==0 }">
                           			<li class="cur"></li>
                           		</c:if>
			                	<c:if test="${itemStatus.index>0 }">
                           			<li></li>
                           		</c:if>
					        </c:forEach>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                  </div>
               </div>
               <div class="busine_model3">
                   <div class="busine_HotLineBox">
                       <div class="busine_newTit busine_newTit3">招商热线：</div>
                       <div class="busine_HotLineCon">
                       		<c:forEach var="item" items="${hotline }" begin="0" step="1" end="1" varStatus="itemStatus">
				            	<div class="busine_HotLineText">
	                               <p>${item.name }：${item.phone }</p>    
	                               <p>E-MAIL: ${item.email }</p>
	                               <p>${item.department }</p>
	                           </div>
						   </c:forEach>
                           <div class="clear"></div>
                       </div>
                   </div>
                   <div class="busine_oneselfBox">
                       <div class="busine_newTit busine_newTit4">供应商自荐</div>
                       <a href="javascript:;" class="busine_oneselfTable">供应商自荐表格填写</a>
                   </div>
                   <div class="clear"></div>
               </div>
            </div>
         </div>
    </div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

	<!-- 弹出层 -->
	<div id="pop-up">
	    <div class="BGcolor"></div>
	    <div class="pop-main inAni">
	        <div class="pop-titleBox">
	            <div class="pop-title">
	                <p class="qh_title">供应商自荐表格填写</p>
	                <a href="javascript:;" id="close_pop" title="关闭"></a>
	            </div>
	        </div>
	        
		        <div class="order_pointv">
		            <div class="oneself_Table">
		                <table width="200" border="1">
		                      <tr>
		                        <td width="25%";  class="padd">供应商名称：</td>
		                        <td width="25%" ><input type="text" id="popCarrier" name="" value="" class="text"></td>
		                        <td width="25%" class="padd">法人代表：</td>
		                        <td width="25%"><input type="text" id="popLegal" name="" value="" class="text"></td>
		                      </tr>
		                      <tr>
		                        <td   class="padd">地址：</td>
		                        <td colspan="3"><input type="text" id="popAddress" name="" value="" class="text"></td>
		                      </tr>
		                      <tr>
		                        <td   class="padd">成立时间</td>
		                        <td><input type="text" id="popEstablishTime" name="" value="" class="text"></td>
		                        <td  class="padd">注册资本</td>
		                        <td><input type="text" id="popMoney" name="" value="" class="text"></td>
		                      </tr>
		                      <tr>
		                        <td  class="padd">联系人：</td>
		                        <td><input type="text" id="popContactName" name="" value="" class="text"></td>
		                        <td  class="padd">职务：</td>
		                        <td><input type="text" id="popJob" name="" value="" class="text"></td>
		                      </tr >
		                      <tr>
		                        <td  class="padd">联系电话：</td>
		                        <td><input type="text" id="popPhone" name="" value="" class="text"></td>
		                        <td  class="padd">电子邮件：</td>
		                        <td><input type="text" id="popEmail" name="" value="" class="text"></td>
		                      </tr >
		                      <tr >
		                        <td height="41"  class="padd">公司及业务范围</td>
		                        <td colspan="3"><textarea name="textarea" id="popBuz" cols="45" rows="4" class="textarea"></textarea></td>
		                      </tr>
		                      <tr>
		                        <td  class="padd">近三年行业业绩及主要客户：</td>
		                        <td colspan="3"><textarea name="textarea" id="popAchievement" cols="45" rows="5" class="textarea"></textarea></td>
		                      </tr>
		                    </table>
		            </div>                
		        </div>
	        	<input type="button" name="" value="提交申请" class="submitapp" onclick="saveInvestMentCover()"/>
	       
	       <input type="hidden" value="${coverMenu.id }" id="coverMenuId" name="coverMenuId"/>
	    </div>
	    </div>
	</div>
<!-- 弹出层结束 -->
	<script type="text/javascript">
	$(function(){ 
	   //弹出框
	   $(".busine_oneselfTable").bind('click',function(){ 
	       $("#pop-up").fadeIn();
	       $(".pop-main").removeClass("outAni").addClass("inAni");
	   })
	   //关闭弹出框
	   $("#close_pop").bind('click',function(){
	       $(".pop-main").removeClass("inAni").addClass("outAni");
	       $("#pop-up").fadeOut();
	       $(".sercess").css({"display":"none"})
	   });
	    
	})  
	</script>
	

</body>
</html>
