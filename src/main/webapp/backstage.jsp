<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>backstage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!-- CSS代码 -->
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<style type="text/css">
body {
	text-align: center;
}

.div {
	margin: auto;
	width: 1024px;
	height: 850px;
}
</style>
<script>
	$(document).ready(function() {
		if(${buttonNumb}==1 || ${buttonNumb}==-1){
			$("table").hide();
			$("#shenhe").show();
		}else if(${buttonNumb}==2){
			$("table").hide();
			$("#chayan").show();
		}else if(${buttonNumb}==3){
			$("table").hide();
			$("#daishangjia").show();
		}else if(${buttonNumb}==4){
			$("table").hide();
			$("#shangjia").show();
		}else if(${buttonNumb}==5){
			$("table").hide();
			$("#xiajia").show();
		}else if(${buttonNumb}==6){
			$("table").hide();
			$("#quxiao").show();
		}
		
		
		
		$("#b1").click(function() {
			$("table").hide();
			$("#shenhe").show();
		});
		$("#b2").click(function() {
			$("table").hide();
			$("#chayan").show();
		});
		$("#b3").click(function() {
			$("table").hide();
			$("#daishangjia").show();
		});
		$("#b4").click(function() {
			$("table").hide();
			$("#shangjia").show();
		});
		$("#b5").click(function() {
			$("table").hide();
			$("#xiajia").show();
		});
		$("#b6").click(function() {
			$("table").hide();
			$("#quxiao").show();
		});
	});
</script>
<link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
	<%@include file="HeadPage.jsp"%>
	<div class="service-breadcrumb">
		<div class="container">
			<div class="wthree_service_breadcrumb_left">
				<ul>
					<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
					<li><a href="BackstageServlet">汽车管理</a> <i>|</i></li>
				</ul>
			</div>
			<div class="wthree_service_breadcrumb_right">
				<h3>汽车管理</h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="div table-responsive">
		<button class="btn btn-info" id="b1">待审核订单</button>
		<button class="btn btn-info" id="b2">待查验订单</button>
		<button class="btn btn-info" id="b3">待上架订单</button>
		<button class="btn btn-info" id="b4">已上架订单</button>
		<button class="btn btn-info" id="b5">已下架订单</button>
		<button class="btn btn-info" id="b6">已取消订单</button>

		<table class="table-bordered  table table-striped table" id="shenhe">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>

			<c:forEach items="${sellList01}" var="sell">
				<tr>
					<td>${sell.sellCode }</td>
					<td>${sell.userName }</td>
					<td>${sell.carName }</td>
					<td>${sell.sellDate }</td>
					<td>${sell.state }</td>
					<td>
						<button class="btn btn-success"
							onclick="window.location.href=' ExamineServlet?sellState=${sell.sellState+1}&sellId=${sell.sellId }&button=1'">审核通过</button>
						<button class="btn btn-warning"
							onclick="window.location.href=' ExamineServlet?sellState=${sell.sellState-1}&sellId=${sell.sellId }&button=1'">审核不通过</button>
					</td>
				</tr>
			</c:forEach>

		</table>
		<table class="table-bordered  table table-striped table" id="chayan">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList02}" var="sell04">
				<tr>
					<td>${sell04.sellCode }</td>
					<td>${sell04.userName }</td>
					<td>${sell04.carName }</td>
					<td>${sell04.sellDate }</td>
					<td>${sell04.state }</td>
					<td>
						<button class="btn btn-success"
							onclick="window.location.href=' ExamineServlet?sellState=${sell04.sellState+1}&sellId=${sell04.sellId }&button=2'">查验通过</button>
						<button class="btn btn-warning"
							onclick="window.location.href=' ExamineServlet?sellState=${sell04.sellState-1}&sellId=${sell04.sellId }&button=2'">查验不通过</button>
					</td>
				</tr>
			</c:forEach>
		</table>
		<table class="table-bordered  table table-striped table"
			id="daishangjia">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList03}" var="sell04">
				<tr>
					<td>${sell04.sellCode }</td>
					<td>${sell04.userName }</td>
					<td>${sell04.carName }</td>
					<td>${sell04.sellDate }</td>
					<td>${sell04.state }</td>
					<td>
						<button class="btn btn-success"
							onclick="window.location.href=' ExamineServlet?sellState=${sell04.sellState+1}&sellId=${sell04.sellId }&button=3'">上架通过</button>
						<button class="btn btn-warning"
							onclick="window.location.href=' ExamineServlet?sellState=${sell04.sellState-1}&sellId=${sell04.sellId }&button=3'">上架不通过</button>
					</td>
				</tr>
			</c:forEach>
		</table>
		<table class="table-bordered  table table-striped table" id="shangjia">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList04}" var="sell04">
				<tr>
					<td>${sell04.sellCode }</td>
					<td>${sell04.userName }</td>
					<td>${sell04.carName }</td>
					<td>${sell04.sellDate }</td>
					<td>${sell04.state }</td>
					<td>
						<button class="btn btn-warning"
							onclick="window.location.href=' ExamineServlet?sellState=${sell04.sellState+1}&sellId=${sell04.sellId }&button=4'">下架商品</button>
					</td>
				</tr>
			</c:forEach>

		</table>
		<table class="table-bordered  table table-striped table" id="xiajia">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList05}" var="sell05">
				<tr>
					<td>${sell05.sellCode }</td>
					<td>${sell05.userName }</td>
					<td>${sell05.carName }</td>
					<td>${sell05.sellDate }</td>
					<td>${sell05.state }</td>
					<td>
						<button class="btn btn-success"
							onclick="window.location.href=' ExamineServlet?sellState=${sell05.sellState-1}&sellId=${sell05.sellId }&button=5'">重新上架</button>
						<button class="btn btn-warning"
							onclick="window.location.href=' ExamineServlet?sellState=0&sellId=${sell05.sellId }&button=5'">取消订单</button>
					</td>
				</tr>
			</c:forEach>

		</table>
		<table class="table-bordered  table table-striped table" id="quxiao">
			<tr>
				<td>订单编号</td>
				<td>卖家</td>
				<td>车名</td>
				<td>订单日期</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList06}" var="sell06">
				<tr>
					<td>${sell06.sellCode }</td>
					<td>${sell06.userName }</td>
					<td>${sell06.carName }</td>
					<td>${sell06.sellDate }</td>
					<td>${sell06.state }</td>
					<td>
						<button class="btn btn-success"
							onclick="window.location.href=' ExamineServlet?sellState=${sell06.sellState+1}&sellId=${sell06.sellId }&button=6'">重新审核</button>
					</td>
				</tr>
			</c:forEach>

		</table>
		<nav aria-label="Page navigation">
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="BackstageServlet?pageNo=0">1</a></li>
				<li><a href="BackstageServlet?pageNo=1">2</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<%@include file="TailPage.jsp"%>
	<script src="js/bootstrap.js"></script>
</body>
</html>