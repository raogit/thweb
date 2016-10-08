<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
        <div class="titleImg_content" style="background:url(../images/bs2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/bs2.jpg,sizingMethod='scale');">
            <div class="titleImg_img"><img src="../images/bs8.png"></div>
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
                           <h3>职能简介</h3>
                           <h5>Business School Profile</h5>
                           <div class="line"></div>
                       </div>
                       <div class="busine_shoCom">
                           秉持“尊重人的价值、开发人的潜能、升华人的心灵”人才工作宗旨，把天虹打造成一个海纳百川的组织，在这个组织里，普通的人变成优秀的人，优秀的人变成卓越的人，源源不断的人在这里实现自己的人生梦想。培养和造就一支赢得市场领先、创造组织优势、引领价值导向、有使命感与责任感的人才队伍、更加有创造力、更加有超越其他组织和个人的推动力，实现自我境界的升华。
                       </div>
                   </div>
                   <div class="busine_shoImg">
                       <img src="../images/bs4.jpg">
                   </div>
                   <div class="clear"></div>
               </div>
               <div class="busine_ProtectTitle">
                    <h3>招商流程</h3>
                    <h5>Profit distribution</h5>
               </div>
               <div class="busine_Top">
                   <ul>
                       <li class="wth1">
                           <a href="javascript:;" class="cur">
                           <i class="bg1"></i>
                           <h3>招商咨询</h3>
                           </a>
                       </li>
                       <li  class="wth2">
                           <a href="javascript:;">
                           <i></i>
                           <h3>参与招标</h3>
                           </a>
                       </li>
                       <li  class="wth3">
                           <a href="javascript:;">
                           <i></i>
                           <h3>中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth4">
                           <a href="javascript:;">
                           <i></i>
                           <h3>录用</h3>
                           </a>
                       </li>
                       <li  class="wth5">
                           <a href="javascript:;">
                           <i></i>
                           <h3>中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth6">
                           <a href="javascript:;">
                           <i></i>
                           <h3>中标详谈</h3>
                           </a>
                       </li>
                       <li  class="wth7">
                           <a href="javascript:;">
                           <i></i>
                           <h3>招商成功</h3>
                           </a>
                       </li>
                       <div class="clear"></div>
                   </ul>
                   <div class="clear"></div>
               </div>
               <div class="busine_model2">
                  <div class="busine_newBox">
                       <div class="busine_newTit">
                           招商信息
                       </div>
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
                           <div class="busine_newContent">
                               <ul>
                                     <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <div class="clear"></div>
                               </ul>
                               <div class="clear"></div>
                           </div>
                           <div class="busine_newContent" style="display:none">
                               <ul>
                                    <li>
                                       <div class="wth1">招标编号：HN2016-00天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001 天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-00天虹商场股份有限公司内部使用</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <div class="clear"></div>
                               </ul>
                               <div class="clear"></div>
                           </div>
                           <div class="busine_newContent" style="display:none">
                               <ul>
                                    <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <li>
                                       <div class="wth1">招标编号：HN2016-001     天虹商场股份有限公司</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth2">2014年11月03日</div>
                                       <div class="wth3 cente">办公文具</div>
                                       <div class="wth3 cente"><a href="#" class="down">下载</a></div>
                                       <div class="clear"></div>
                                   </li>
                                   <div class="clear"></div>
                               </ul>
                               <div class="clear"></div>
                           </div>
                       </div>
                       <div class="inves_ProtFocus">
                        <ul>
                            <li class="cur"></li>
                            <li></li>
                            <li></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                  </div>
                  <div class="busine_newBox">
                       <div class="busine_newTit busine_newTit2">
                           招商动态
                       </div>
                       <div class="busine_SpotContent">
                          <div class="busine_Spot">
                              <ul>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                              </ul>
                          </div>
                          <div class="busine_Spot" style="display:none">
                              <ul>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接示教育展电子展连接内幕交展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展内幕教育展电连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                              </ul>
                          </div>
                          <div class="busine_Spot" style="display:none">
                              <ul>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0l">
                                          <h3>内幕交易内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                                  <li>
                                      <a href="BusineTrend.html?p=0">
                                          <h3>内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示教育展电子展连接内幕交易警示</h3>
                                          <h5>2014年3月12日</h5>
                                          <div class="clear"></div>
                                      </a>
                                  </li>
                              </ul>
                          </div>
                        </div>
                       <div class="busine_ProtFocus ">
                        <ul>
                            <li class="cur"></li>
                            <li></li>
                            <li></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                  </div>
               </div>
               <div class="busine_model3">
                   <div class="busine_HotLineBox">
                       <div class="busine_newTit busine_newTit3">
                           招商热线：
                       </div>
                       <div class="busine_HotLineCon">
                           <div class="busine_HotLineText">
                               <p>徐小姐：0755-23652113</p>    
                               <p>E-MAIL: xubq@rainbowcn.com</p>
                               <p>天虹商场股份有限公司采购中心日用品分部</p>
                           </div>
                           <div class="busine_HotLineText">
                               <p>徐小姐：0755-23652113</p>    
                               <p>E-MAIL: xubq@rainbowcn.com</p>
                               <p>天虹商场股份有限公司采购中心日用品分部</p>
                           </div>                           
                           <div class="clear"></div>
                       </div>
                   </div>
                   <div class="busine_oneselfBox">
                       <div class="busine_newTit busine_newTit4">
                           供应商自荐
                       </div>
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
	        <form action="" method="get" accept-charset="utf-8">
	        <div class="order_pointv">
	            <div class="oneself_Table">
	                <table width="200" border="1">
	                      <tr>
	                        <td width="25%";  class="padd">供应商名称：</td>
	                        <td width="25%" ><input type="text" name="" value="" class="text"></td>
	                        <td width="25%"   class="padd">法人代表：</td>
	                        <td width="25%"><input type="text" name="" value="" class="text"></td>
	                      </tr>
	                      <tr>
	                        <td   class="padd">地址：</td>
	                        <td colspan="3"><input type="text" name="" value="" class="text"></td>
	                      </tr>
	                      <tr>
	                        <td   class="padd">成立时间</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                        <td  class="padd">注册资本</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                      </tr>
	                      <tr>
	                        <td  class="padd">联系人：</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                        <td  class="padd">职务：</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                      </tr >
	                      <tr>
	                        <td  class="padd">联系电话：</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                        <td  class="padd">电子邮件：</td>
	                        <td><input type="text" name="" value="" class="text"></td>
	                      </tr >
	                      <tr >
	                        <td height="41"  class="padd">公司及业务范围</td>
	                        <td colspan="3"><textarea name="textarea" id="textarea" cols="45" rows="4" class="textarea"></textarea></td>
	                      </tr>
	                      <tr>
	                        <td  class="padd">近三年行业业绩及主要客户：</td>
	                        <td colspan="3"><textarea name="textarea" id="textarea" cols="45" rows="5" class="textarea"></textarea></td>
	                      </tr>
	                    </table>
	            </div>                
	        </div>
	        <input type="submit" name="" value="提交申请" class="submitapp">
	        </form>
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
