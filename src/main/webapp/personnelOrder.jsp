<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人订单信息</title>
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
			$("#buyOrder").show();
		}else if(${buttonNumb}==2){
			$("table").hide();
			$("#sellOrder").show();
		}
		
		$("#b1").click(function() {
			$("table").hide();
			$("#buyOrder").show();
		});
		$("#b2").click(function() {
			$("table").hide();
			$("#sellOrder").show();
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
					<li><a href="PersonnelOrderServlet">个人订单信息</a> <i>|</i></li>
				</ul>
			</div>
			<div class="wthree_service_breadcrumb_right">
				<h3>个人订单信息</h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="div table-responsive">
		<button class="btn btn-info" id="b1">购买订单</button>
		<button class="btn btn-info" id="b2">售卖订单</button>

		<table class="table-bordered  table table-striped table" id="buyOrder">
			<tr>
				<td>订单编号</td>
				<td>品牌</td>
				<td>车名</td>
				<td>下单时间</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${buyList }" var="buy">
				<tr>
					<td>${buy.buyCode }</td>
					<td>${buy.carBrand }</td>
					<td>${buy.carName }</td>
					<td>${buy.buyDate }</td>
					<td>${buy.state }</td>
					<td>
					   <button class="btn btn-success" 
							onclick="window.location.href='PersonnelOrderConvertServlet?buttonNumb=1&buyCode=${buy.buyCode}'">取消订单</button>
					</td>
				</tr>
			</c:forEach>

		</table>
		<table class="table-bordered  table table-striped table"
			id="sellOrder">
			<tr>
				<td>订单编号</td>
				<td>品牌</td>
				<td>车名</td>
				<td>状态</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${sellList }" var="sell">
				<tr>
					<td>${sell.sellCode }</td>
					<td>${sell.carBrand }</td>
					<td>${sell.carName }</td>
					<td>${sell.state }</td>
					<td>
					   <button class="btn btn-success" 
							onclick="window.location.href='PersonnelOrderConvertServlet?buttonNumb=2&sellId=${sell.sellId}'">取消订单</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<%@include file="TailPage.jsp"%>
	<script src="js/bootstrap.js"></script>
</body>
</html>