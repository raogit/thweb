<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="c-in-cont">
		<div class="c-in-vt">
			<div class="c-in-vti">
				<div class="vti-l">会员制度</div>
				<div class="vti-r">
					<div class="vti-rin">会员制度</div>
					<div class="vti-rin"><a href="http://www.tianhong.cn/jifen.html" target="_blank" style="color: #fff;">积分换礼</a></div>
				</div>
			</div>
		</div>
		<div class="c-in-vc">
			<div class="c-in-vci">
				<ul class="vci-top">
					<li class="bgA">会员入会</li>
					<li class="bgB">会员升降级制度</li>
					<li class="bgC">VIP卡积分使用有效期</li>
					<li class="bgD">会员权益</li>
				</ul>
				<div class="vci-cont">
					<div class="vip_contentBlock">
						<div class="vci-cr">
							<img src="${basePath}/market/images/p_16.jpg" alt="">
						</div>
						<div class="vci-cl">
							<div class="vci-cl-t">
								<div class="cl-ten">
									<img src="${basePath}/market/images/b3_4.png" alt="">
								</div>
								<div class="cl-tch">会员申办</div>
							</div>
							<div class="vci-cl-c">
								<p>
									<strong>银卡：</strong>
								</p>
								<p>顾客注册【虹领巾】APP或PC端、关注【天虹微信】后申请即成为银卡会员；在实体店免费办理</p>
							</div>
							<div class="vci-cl-c">
								<p>
									<strong>金卡：</strong>
								</p>
								<p>当日购物满10000元或累计消费满15000元（团购顾客除外）</p>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="vip_contentBlock">
						<div class="vci-cr">
							<img src="${basePath}/market/images/p_16.jpg" alt="">
						</div>
						<div class="vci-cl">
							<div class="vci-cl-t">
								<div class="cl-ten">
									<img src="${basePath}/market/images/b3_1.png" alt="">
								</div>
								<div class="cl-tch">会员升降级制度</div>
							</div>
							<div class="vci-cl-c">
								<p>
									<strong>升卡：</strong>
								</p>
								<p>银卡当日购物满10000元可升级金卡或升级周期内某日累计消费满15000元升级为金卡</p>
							</div>
							<div class="vci-cl-c">
								<p>
									<strong>续卡：</strong>
								</p>
								<p>
									<b>银卡：</b>永久有效，不降级；
								</p>
								<p>
									<b>金卡：</b>升降级周期到期日，累计消费达2000元可自动续卡，不足2000元降级为银卡
								</p>
							</div>
						</div>
						<div class="clear"></div>
					</div>
					<div class="vip_contentBlock">
						<div class="vci-cr">
							<img src="${basePath}/market/images/p_16.jpg" alt="">
						</div>
						<div class="vci-cl">
							<div class="vci-cl-t">
								<div class="cl-ten">
									<img src="${basePath}/market/images/b3_2.png" alt="">
								</div>
								<div class="cl-tch">VIP卡积分使用有效期</div>
							</div>
							<div class="vip_textBlock">
								<div class="vip_textContent">每年12月31日为积分清零日，清零日当天24:00，顾客两年前获取且未使用的积分将会过期，如：</div>
								<div class="vip_textBlock">
									<div class="vip_text">2018年12月31日，顾客在2016年12月31日前（含）获得且未使用积分将会过期；</div>
									<div class="vip_text">2019年12月31日，顾客在2017年12月31日前（含）获得且未使用积分将会过期。</div>
								</div>
							</div>
							<!--  <div class="vci-cl-c">
                            <p><strong>金卡：</strong></p><p>当日购物满10000元或累计消费满15000元（团购顾客除外）</p>
                        </div> -->
						</div>
						<div class="clear"></div>
					</div>
					<div class="vip_contentBlock">
						<div class="vci-cl400">
							<div class="vci-cl-t">
								<div class="cl-ten">
									<img src="${basePath}/market/images/b3_3.png" alt="">
								</div>
								<div class="cl-tch">会员权益</div>
							</div>
							<div class="vci-cl-c">
								<p>
									<strong>金卡：</strong>
								</p>
								<div class="Golden_Card">
									<p>
										<b>温馨生日礼:</b>生日当月凭金卡及有效证件至天虹可领取精美礼品一份；
									</p>
									<p>
										<b>精美包装礼:</b>金卡顾客可享受礼品免费包装服务（使用天虹包装纸）
									</p>
									<p>
										<b>免费停车礼:</b>金卡顾客在深圳各大天虹均可享受最多两小时免费停车（具体执行标准请参考各分店规定）；
									</p>
									<p>
										<b>优惠双享礼:</b>金卡顾客在开卡店可办理金卡附属卡，积分共攀升，消费同累计，精彩加倍。
									</p>
								</div>
							</div>
						</div>
						<div class="vci-cr500">
							<div class="vci-cl-t"></div>
							<div class="vci-cl-c">
								<p>
									<strong>金卡：</strong>
								</p>
								<div class="Golden_Card">
									<p>
										<b>一卡在手，全国通用:</b>拥有一张天虹VIP卡，即可在全国各大天虹享受会员尊贵礼遇，跨区域无障碍；
									</p>
									<p>
										<b>折扣积分，双重享受:</b>持天虹VIP卡购物可获积分，同时还可享受会员专享折扣；
									</p>
									<p>
										<b>积分有礼，缤纷回馈:</b>积分可兑换精美礼品或参加返利，心意好礼新鲜感受；
									</p>
									<p>
										<b>在线支付，安全便捷:</b>VIP卡新增在线支付功能，支持使用天虹购物卡、现金为VIP卡充值；5元以下找零可直接充入VIP卡，等同于现金可在全国各大天虹使用，方便快捷；
									</p>
									<p>
										<b>生日购物，双倍积分:</b>会员生日当天购物双倍积分；
									</p>
									<p>
										<b>专属活动，尊贵独享:</b>每年为VIP卡顾客举行两次年度大型专属活动，独享尊贵；
									</p>
									<p>
										<b>特约商户，优惠随行:</b>天虹与全城各大商户合作，顾客凭天虹VIP卡消费即可享受专属优惠，为您提供全方位增值服务。
									</p>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer_mk">
		<div class="f-cont">
			<div class="f-c-right">
				<%-- <a href="" class="f-c-ri"><img
					src="${basePath}/market/images/p_1.png" alt=""></a> <a href=""
					class="f-c-ri fri"><img src="${basePath}/market/images/p_2.png"
					alt=""></a> --%>
				<div class="fr"></div>
				<div class="f-c-wc">
					<img src="${basePath}/market/images/p_3.png" alt="">
				</div>
			</div>
			<div class="f-c-left">
				<a href="">友情链接</a> <span>版权所有:天虹商场股份有限公司</span> <span>备案号:粤ICP备11065574号-3</span>
			</div>
		</div>
		<div class="clear"></div>
		<script type="text/javascript"
			src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
		<script type="text/javascript"
			src="${basePath}/market/Scripts/jquery.mCustomScrollbar.js"></script>
		<script type="text/javascript">
        $(function(){
            var ik=0;
            var page = 0;
            var showPage = function(){
                $(".vip_contentBlock").eq(page).siblings().css({"display":"none"});
                $(".vip_contentBlock").eq(page).stop(true,true).fadeIn();
                $(".vci-top li").eq(page).addClass("cur").siblings().removeClass("cur");
            }
            showPage();
            $(".vci-top li").bind("click",function(){
                page = $(this).index();
                showPage();
                if(page==3&& ik<1){
                	ik++;
                	$(".Golden_Card").mCustomScrollbar();
                }
            })
        })
    </script>
	</div>
</body>
</html>
