<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${com.carBrand}  ${com.carModel} 详情</title>
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	var specHtml="";    
    var obj = JSON.parse('${com.carSpec}');
    for(var i in obj){
         specHtml+="<li><div class=\"col-md-6 col-sm-6 part\"><p>"+i+"</p></div><div class=\"col-md-6 col-sm-6 condition\"><p>"+obj[i]+"</p></div><div class=\"clearfix\"></div></li>";
     }
	 $("#specUl").html(specHtml);			                       
	});
</script>
<body>
<%@include file="HeadPage.jsp"%>
 <div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li><a href="cars.jsp">搜索汽车</a> <i>|</i></li>
							<li>汽车详情</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>汽车详情</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		<!--/sell-car -->
				<div class="sell-car w3l">
					<div class="container">
					   <div class="top-grid-used-cars">
					      <h4 class="tittle"><f:formatDate pattern="yyyy" value="${com.comDate }" type="both"/> ${com.carBrand}  ${com.carModel}</h4>
								<div class="car-details">
									 <div class="usd-img"><img src="${com.listPicUrl }"alt="${com.carBrand}  ${com.carModel}"></div>
									<div class="car-infos">
										<div class="car-info car-info-1">
											<img src="images/calender.png" alt="出厂日期">
											<p><f:formatDate pattern="yyyy/MM" value="${com.comDate }" type="both"/></p>
										</div>
										<div class="car-info car-info-2">
											<img src="images/km.png" alt="里程">
											<p>${com.comMileage } Km</p>
										</div>
										<div class="car-info car-info-3">
											<img src="images/petrol.png" alt="动力类型">
											<p>${com.carPower }</p>
										</div>
										<div class="car-info car-info-4">
											<img src="images/gear.png" alt="挡位类型">
											<p>${com.carGear }</p>
										</div>
										<div class="car-info car-info-5">
											<img src="images/place.png" alt="地址">
											<p>${com.comAddress }</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="car-form">
										<p>起步价： <span>￥ ${com.comPrice}</span></p>
										<div class="location2">
											<h3>汽车位置： <span>${com.comAddress }</span></h3>
										</div>
										<h4>获取卖家详情</h4>
										<div class="login-top">
											 <form action="#" method="post">
												<input type="text" name="email" class="email" placeholder="Email" required="">
												<input type="password" name="password" class="password" placeholder="Password" required="">	
												<input type="checkbox" id="brand3" value="">
												<label for="brand3"><span></span>获取电子邮件更新</label>
											</form>
											</div>
								
										<a href="#">向我们咨询</a>
										<h6>*你的联系方式是绝对保密的.</h6>
									</div>
								<div class="clearfix"></div>
							</div>
								<!-- /mid-->
							<div class="middle-grid w3-agile">
							<c:if test="${com.comState==2 }">
									<div class="car-condition">
										<h3>汽车状况</h3>
										<ul class="col-md-6 col-sm-6">
											<li><div class="col-md-6 col-sm-6 part"><p>发动机</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusEngine }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>AC</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusAc }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>刹车</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusBrake }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>动力</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusElectricals }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>电池</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusCell }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>总体</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusAll }</p></div><div class="clearfix"></div></li>
										</ul>
										<ul class="col-md-6 col-sm-6">
											<li><div class="col-md-6 col-sm-6 part"><p>外观</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusFacade }</p></div></li><div class="clearfix"></div>
											<li><div class="col-md-6 col-sm-6 part"><p>内部</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusInside }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>悬挂</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusAll }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>轮胎</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusTyre }</p></div><div class="clearfix"></div></li>
											<li><div class="col-md-6 col-sm-6 part"><p>座位</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.statusSeat }</p></div><div class="clearfix"></div></li>
										</ul>
										<div class="clearfix"></div>
										<p class="certified"><span>CarZ 认证<sup>*</sup></span>想了解更多？请联系我们。</p>
									</div>
							</c:if>	
								</div>
					<!-- //mid-->
					<!-- /bottom-->
					<div class="owners-comments w3l">
						<h3>车辆简介</h3>
						<div>
							<input type="checkbox" class="read-more-state" id="post-2" />
								<ul class="read-more-wrap">
									<li>The replacement for the Gallardo, Lamborghini’s most successful ever car, with over 14,000 sold since 2003. That gives the Huracan a suitably mountainous task, one that Lamborghini has chosen to tackle by playing against type and taking a safe option. The Huracan is no radical reimagining of the modern supercar. There are no hybrid systems here, for instance. In fact what there is, is familiarity. The 5.2-litre V10 is carried over, albeit heavily reworked, and it’s still positioned in the middle of the car and drives all four wheels.</li>
									<li class="read-more-target">It doesn’t take long on the move to confirm that the Huracan has reined in Lambo’s bad-boy schtick. The first thing you notice is how well it rides, how well mannered it is. At a motorway lick the soundtrack is oddly anodyne, sounding busy not ballsy, while the suspension isolates bumps, thumps and staves off surface irregularities ably.</li>
									<li class="read-more-target">The cabin is theatrical, dramatic and laden with both jet-inspired functionality and Audi-donated quality. There’s no central screen, instead all functions are dealt with on the main display behind the steering wheel. There’s no traditional gearlever either, while the Anima button on the wheel allows you to toggle through the various Strada/Sport/Corsa options. The driving position is good, the view out through the narrow window less so, but very emotive.</li>
									<li class="read-more-target">Lambo may be under Audi’s wing, but that’s not to say costs have been brought in line. This is still a mighty costly car to buy and run – over £200,000 with a few options added and fuel economy likely to hover in the late teens at best. Probably the least of your worries if you’re minted enough to buy one new. A lack of Porsche 911-like practicality is also unlikely to be of great concern; there’s not much showboating value to be had in Tesco’s car park. The initial batch of cars will be in great demand though, so early retained values should be high.</li>
								</ul>
							<label for="post-2" class="read-more-trigger"></label>
						</div>
					</div>
				<!-- //bottom-->
				<!-- /bottom-lost-->
				<div class="loan-agile">
		      <h3 class="tittle">最新的汽车更新</h3>
		<div class="inner_tabs loan">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs loan" role="tablist">
							<li role="presentation" class=""><a href="#updates" id="updates-tab" role="tab" data-toggle="tab" aria-controls="updates" aria-expanded="false">总体</a></li>
							<li role="presentation" class=""><a href="#expert" role="tab" id="expert-tab" data-toggle="tab" aria-controls="expert" aria-expanded="false">特征</a></li>
							<li role="presentation" class="active"><a href="#video-text" role="tab" id="video-text-tab" data-toggle="tab" aria-controls="video-text" aria-expanded="true">产品规格</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade1" id="updates" aria-labelledby="updates-tab">
							 <div class="news-updates">
									<ul class="loan-info-text">
									<li><div class="col-md-6 col-sm-6 part"><p>价格</p></div><div class="col-md-6 col-sm-6 condition"><p>￥${com.carPrice}</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>出厂年份</p></div><div class="col-md-6 col-sm-6 condition"><p><f:formatDate pattern="yyyy年MM月" value="${com.comDate }" type="both"/></p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>里程表</p></div><div class="col-md-6 col-sm-6 condition"><p><c:choose><c:when test="${com.comState==2 }">${com.comMileage }Km</c:when><c:otherwise>全新</c:otherwise></c:choose></p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>动力</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.carPower }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>挡位</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.carGear }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>地址</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.comAddress }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>颜色</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.comColor }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>燃油效率</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.carEffc }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>销售人</p></div><div class="col-md-6 col-sm-6 condition"><p><c:choose><c:when test="${com.comState==2 }">私人</c:when><c:otherwise>CarZ</c:otherwise></c:choose></p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>车牌归属地</p></div><div class="col-md-6 col-sm-6 condition"><p><c:choose><c:when test="${com.comState==2 }">${com.comLicenseAddress }</c:when><c:otherwise>未注册车牌</c:otherwise></c:choose></p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>保险</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.comInsurance }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>税</p></div><div class="col-md-6 col-sm-6 condition"><p>${com.comTax }</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>车牌号码</p></div><div class="col-md-6 col-sm-6 condition"><p><c:choose><c:when test="${com.comState==2 }">${com.comCarid }</c:when><c:otherwise>未注册车牌</c:otherwise></c:choose></p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>最近更新时间</p></div><div class="col-md-6 col-sm-6 condition"><p><f:formatDate pattern="yyyy年MM月dd日" value="${com.comUpdateTime }" type="both"/></p></div><div class="clearfix"></div></li>
									<li class="border"><div class="col-md-6 col-sm-6 part"><p>状态</p></div><div class="col-md-6 col-sm-6 condition"><p><c:choose><c:when test="${com.comStatus==1 }">上架</c:when><c:when test="${com.comStatus==2 }">已售出</c:when><c:otherwise>下架</c:otherwise></c:choose></p></div><div class="clearfix"></div></li>
									
								</ul>
										
								 </div>
							</div>
							<div role="tabpanel" class="tab-pane fade1" id="expert" aria-labelledby="expert-tab">
								<div class="news-updates">
									<ul class="loan-info-text">									
									<c:forTokens items="${com.carFeature }" delims=" " var="feature">
										<li><div class="part"><p>${feature}</p></div></li>
                                    </c:forTokens>									
								</ul>										
							    </div>								
							</div>
							<div role="tabpanel" class="tab-pane fade1 active in" id="video-text" aria-labelledby="video-text-tab">
								<div class="news-updates">
									<ul class="loan-info-text" id="specUl">
									<li><div class="col-md-6 col-sm-6 part"><p>长</p></div><div class="col-md-6 col-sm-6 condition"><p>3500 mm</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>宽</p></div><div class="col-md-6 col-sm-6 condition"><p>1600 mm</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>高</p></div><div class="col-md-6 col-sm-6 condition"><p>1490 mm</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>轴距</p></div><div class="col-md-6 col-sm-6 condition"><p>2360 mm</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>门</p></div><div class="col-md-6 col-sm-6 condition"><p>2 Doors</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>座位容量</p></div><div class="col-md-6 col-sm-6 condition"><p>2 Person</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>邮箱容量</p></div><div class="col-md-6 col-sm-6 condition"><p>35 litres</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>汽油种类</p></div><div class="col-md-6 col-sm-6 condition"><p>Petrol</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>齿轮数目</p></div><div class="col-md-6 col-sm-6 condition"><p>5 Gears</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>传输类型</p></div><div class="col-md-6 col-sm-6 condition"><p>Automatic</p></div><div class="clearfix"></div></li>
									<li><div class="col-md-6 col-sm-6 part"><p>注册于</p></div><div class="col-md-6 col-sm-6 condition"><p>Sant'Agata Bolognese</p></div><div class="clearfix"></div></li>							
									<li class="border"><div class="col-md-6 col-sm-6 part"><p>状态</p></div><div class="col-md-6 col-sm-6 condition"><p>ONLINE${com.carSpec}</p></div><div class="clearfix"></div></li>									
								</ul>
										
								 </div>
								
							</div>
						</div>
					</div>
				</div>
            </div>
		</div>
	</div>
<%@include file="TailPage.jsp"%>
</body>
<script src="js/bootstrap.js"></script>
</html>