<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Carz</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Catchy Carz Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.3.4.1.min.js"></script>
<!--/web-fonts-->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,600,600italic,300,300italic,700,400italic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Wallpoet' rel='stylesheet'
	type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,500,700,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	$(document).ready(function() {
		var user = "${sessionScope.user.userName}";
		if (user != "") {
			$("#regist").css('display', 'none');
			$("#showRight").css('display', 'none');
			$("#userName").css('display', 'block');
			$("#userName>a").html("${sessionScope.user.userName}")
			$("#zhuxiao").css('display', 'block');
		} else {
			$("#regist").css('display', 'block');
			$("#showRight").css('display', 'block');
			$("#userName").css('display', 'none');
			$("#zhuxiao").css('display', 'none');
		}
	});
	function cityChange(cityName){
		$("#closeCityForm").trigger("click");
		var icon = $("#cityIcon");
		$("#citySelect").html(icon);
		$("#cityIcon").after(cityName);
	}
	 $(function(){
	    	$("#email1").change(function(){
	    		var val = $(this).val();
	    		val = $.trim(val);
	    		if(val!=""){
	    			var url = "${pageContext.request.contextPath}/VerificationServlet";
	    			var args = {"email1":val,"time":new Date(),"fromPage":"1"};
	    			$.post(url,args,function(data){
	    				$("#message").html(data);
	    			});
	    		}
	    	});
	    });
	    $(function(){
	    	$("#password2").change(function(){
	    		var val2 = $(this).val();
	    		var val1 = $("#password1").val();
	    		val1 = $.trim(val1);
	    		val2 = $.trim(val2);
	    		if(val1!=""&&val2!=""){
	    			var url = "${pageContext.request.contextPath}/VerificationServlet";
	    			var args = {"val1":val1,"val2":val2,"time":new Date(),"fromPage":"2"};
	    			$.post(url,args,function(data){
	    				$("#passwordMessage").html(data);
	    			});
	    		}
	    	});
	    });
    $(function(){
    	$("#loginButton").click(function(){
    		var emailVal = $("#email2").val();
    		var passWordVal=$("#password3").val();
    		var url = "${pageContext.request.contextPath}/VerificationServlet";
			var args = {"passWordVal":passWordVal,"emailVal":emailVal,"time":new Date(),"fromPage":"3"};
			$.post(url,args,function(data){
				errorLogin(data);
			});
    	});
    });
   
    function errorLogin(data){
    	switch(data){
    	case "1":
    		$("#divLogin2").html("<font color='red'>密码或者账号错误</font>");
    	     break;
    	case "2":
    		window.location.href="${pageContext.request.contextPath}/LoginServlet?email="+$("#email2").val();
    	     break;
    	case "3":
    		$("#divLogin2").html("<font color='red'>密码或者账号错误</font>");
    	}
    }
</script>
<style type="text/css">
   #loginButton{
         width:80px;
         height:40px;
         background-color:#FFA500;
         border: none;
         color:white;
    }
</style>
</head>
<body>
	<!--/banner-section-->
	<div id="demo-1" class="banner-inner">
		<div class="banner-inner-dott">
			<div class="header-top">
				<!-- /header-left -->
				<div class="header-left">
					<!-- /sidebar -->
					<div id="sidebar">
						<h4 class="menu">菜单</h4>
						<ul>
							<li><a href="upcoming.jsp">新车 <i
									class="glyphicon glyphicon-triangle-bottom"> </i>
							</a>
								<ul>
									<li id="find"><a href="find.jsp"><span>寻找新车</span></a></li>
									<li><a href="upcoming.jsp"><span>即将上市的汽车</span></a></li>
									<li><a href="recommend.jsp"><span>推荐一辆车</span></a></li>
									<li><a href="upcoming.jsp"><span>新推出</span></a></li>
									<li><a href="dealer.jsp"><span>找到经销商</span></a></li>
									<li class="last"><a href="price.jsp"><span>上路价格</span></a></li>
								</ul></li>
							<li><a href="cars.jsp">二手车<i
									class="glyphicon glyphicon-triangle-bottom"> </i></a>
								<ul>
									<li><a href="used.jsp">查找二手车</a></li>
									<li><a href="sell.jsp">卖掉你的车</a></li>
									<li><a href="cars.jsp"><span>搜索二手车</span></a></li>
									<li class="last"><a href="valuation.jsp"><span>二手车估价</span></a></li>
									<li><a href="dealer.jsp"><span>找到经销商</span></a></li>
								</ul></li>
							<li><a href="compare.jsp">比较汽车</a></li>
							<li><a href="sell.jsp">卖掉你的车</a></li>
							<li><a href="news.jsp">新闻和评论</a></li>
							<li><a href="dealer.jsp">经销商和服务</a></li>
							<li><a href="insurance.jsp">保险</a></li>
							<li><a href="app.jsp">Catchy Carz app</a>
							<li><a href="#">更多<i
									class="glyphicon glyphicon-triangle-bottom"> </i>
							</a>
								<ul>
									<li><a href="loan.jsp"><span>汽车贷款</span></a></li>
									<li><a href="codes.jsp"><span>短代码</span></a></li>
									<li><a href="accessories.jsp""><span>汽车配件</span></a></li>
									<li><a href="tips.jsp"><span>提示和建议</span></a></li>
									<li class="last"><a href="help.jsp"><span>隐私政策</span></a></li>

								</ul></li>
							<li>
						</ul>
						<div id="sidebar-btn">
							<span></span> <span></span> <span></span>
						</div>
					</div>

					<script>
						var sidebarbtn = document.getElementById('sidebar-btn');
						var sidebar = document.getElementById('sidebar');
						sidebarbtn.addEventListener('click', function() {
							if (sidebar.classList.contains('visible')) {
								sidebar.classList.remove('visible');
							} else {
								sidebar.className = 'visible';
							}
						});
					</script>
					<!-- //sidebar -->
				</div>
				<!-- //header-left -->
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form action="#" method="post">
							<input name="name" class="sb-search-input"
								placeholder="在这里输入关键字..." type="search" id="search"> <input
								class="sb-search-submit" type="submit" value=""> <span
								class="sb-icon-search"> </span>
						</form>
					</div>
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
						new UISearch(document.getElementById('sb-search'));
					</script>
					<!-- //search-scripts -->
					<ul>

						<li><a id ="citySelect" style="position: relative; left: 90px" href="#"
							data-toggle="modal" data-target="#myModal4"><i id="cityIcon"
								class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>选择你的位置</a></li>
						<li style="width: 60px"><div id="regist" class="tag"
								style="position: relative; top: 5px; left: 100px; display: block">
								<a href="" data-toggle="modal" data-target="#myModal2"><span
									class="glyphicon glyphicon-log-in"></span>注册</a>
							</div></li>
						<li style="width: 60px"><div id="userName" class="tag"
								style="position: relative; top: 5px; left: 40px; display: none">
								<a href="PersonnelOrderServlet"></a>
							</div></li>
						<li style="width: 50px"><div id="zhuxiao" class="tag"
								style="position: relative; top: 5px; left: 20px; display: none">
								<a href="LogOutServlet">注销</a>
							</div></li>
						<li><button id="showRight" class="navig">登录</button>
							<div class="cbp-spmenu-push">
								<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right"
									id="cbp-spmenu-s2">
									<h3>登录</h3>
									<div class="login-inner">
										<div class="login-top">
											<form  method="post" >
												<input type="text" name="email" id="email2" class="email" placeholder="Email" required="" /> 
												<div id="divLogin1"></div>
												<input type="password" name="password" id="password3" class="password" placeholder="Password" required="" />
												<div id="divLogin2"></div>
												<input type="checkbox" id="brand" value="">
												<label for="brand"><span></span> 记住我的信息</label>
												<div class="login-bottom">
													<ul>
														<li><a href="#">忘记密码?</a></li>
														<li><input id="loginButton" type="button" value="登录" /></li>
														</br>
													</ul>
												</div>
												<div class="clearfix"></div>
											</form>
										</div>
										<div class="social-icons">
											<ul>
												<li><a href="#"><span class="icons"></span><span
														class="text">微信</span></a></li>
												<li class="twt"><a href="#"><span class="icons"></span><span
														class="text">QQ</span></a></li>
												<li class="ggp"><a href="#"><span class="icons"></span><span
														class="text">微博</span></a></li>
											</ul>
										</div>
									</div>
								</nav>
							</div> <script src="js/classie2.js"></script> <script>
								var menuRight = document
										.getElementById('cbp-spmenu-s2'), showRight = document
										.getElementById('showRight'), body = document.body;

								showRight.onclick = function() {
									classie.toggle(this, 'active');
									classie
											.toggle(menuRight,
													'cbp-spmenu-open');
									disableOther('showRight');
								};

								function disableOther(button) {
									if (button !== 'showRight') {
										classie.toggle(showRight, 'disabled');
									}
								}
							</script></li>
					</ul>

				</div>
			</div>
			<div class="clearfix"></div>
			<div class="banner-info">
				<h1>
					<a href="MainPageServlet">Catchy <span class="logo-sub">Carz</span>
					</a>
				</h1>
				<h2>
					<span>为你做出</span><span> 最好的选择</span>
				</h2>
				<p>Eye it – try it – buy it!</p>
			</div>
		</div>
	</div>
	<!--banner-info-->
	<!-- //sign-up-->
	<div class="modal ab fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog sign" role="document">
			<div class="modal-content about">
				<div class="modal-header one">
					<button type="button" class="close sg" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="discount one">
						<h3>注册</h3>
					</div>
				</div>
				<div class="modal-body about">
					<div class="login-top sign-top one">
						<form action="RegistServlet" method="post">
							<input type="text" name="name"  class="name active" placeholder="用户名" required=""> 
							<input type="text" name="email" id="email1" class="email" placeholder="E-mail" required="">
							<div id="message"></div>
							<input type="password" name="password" id="password1" class="password" placeholder="密码" required=""> 
							<input type="password" name="rePassword" id="password2" class="password" placeholder="请再输入一次密码" required="">
							<div id="passwordMessage"></div>
							<input type="checkbox" id="brand1" value="">
							<label for="brand1"><span></span> 我同意条款和条件</label>
							<div class="login-bottom one">
								<ul>
									<li><a href="#"></a></li>
									<li><input type="submit" value="注册"></li>
									<div class="clearfix"></div>
								</ul>
							</div>
						</form>
					</div>
				</div>
				<div class="social-icons">
					<ul>
						<li><a href="#"><span class="icons"></span><span
								class="text">微信</span></a></li>
						<li class="twt"><a href="#"><span class="icons"></span><span
								class="text">QQ</span></a></li>
						<li class="ggp"><a href="#"><span class="icons"></span><span
								class="text">微博</span></a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>
	<!-- //sign-up-->
	<!-- /location-->
	<div class="modal ab fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog sign" role="document">
			<div class="modal-content about">
				<div class="modal-header one">
					<button type="button" class="close sg" data-dismiss="modal" id="closeCityForm"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="discount one">
						<h3>选择你的城市</h3>

					</div>
				</div>
				<div class="modal-body about">
					<div class="login-top sign-top location">
						<form action="#" method="post">
							<select id="country12" onchange="change_country(this.value)"
								class="frm-field required">
								<option value="null">选择城市</option>
							</select>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>