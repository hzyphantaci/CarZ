<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jQuery.3.4.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".cityOption>option").click(function() {
			var val = $(this).val();
			console.log(val);
			val = $.trim(val);
			if (val != "") {
				console.log(1);
				var url = "${pageContext.request.contextPath}/SelectServlet";
				var args = {
					"country" : val,
					"time" : new Date()
				};
				console.log(args.country);
				$.post(url, args, function(data) {
					$("#ditu>iframe").attr("src", data);
				});
			}
		});
	});
</script>
<style type="text/css">
iframe {
	width: 80%;
	height: 700px;
}

#ditu {
	width: 100%;
	height: 750px;
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="HeadPage.jsp"%>
	<div class="clearfix"></div>
	<div class="service-breadcrumb">
		<div class="container">
			<div class="wthree_service_breadcrumb_left">
				<ul>
					<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
					<li>全国线下门店地址</li>
				</ul>
			</div>
			<div class="wthree_service_breadcrumb_right">
				<h3>全国线下门店地址</h3>
			</div>

		</div>
	</div>
	<div style="width:300px;margin:auto" >
	<div class="login-top sign-top location">
						<form action="#" method="post">
							<select id="country12" onchange="cityChange(this.value)"
								class="frm-field required cityOption">
								<option value="null" style="display: none" disabled selected>请选择城市</option>
								<c:forEach items="${citysNameList}" var="city">
							    <option value="${city}">${city}</option>
							    </c:forEach>
							</select>
						</form>
					</div>
	</div>
	<br />
	<div id="ditu">
		<iframe
			src="https://map.baidu.com/search/%E5%93%88%E5%B0%94%E6%BB%A8%E5%B8%82%E6%B1%BD%E8%BD%A6%E5%BA%97/@14086920.845885715,5702576.72,12.2z?querytype=s&da_src=shareurl&wd=%E5%93%88%E5%B0%94%E6%BB%A8%E5%B8%82%E6%B1%BD%E8%BD%A6%E5%BA%97&c=48&src=0&pn=0&sug=0&l=12&b=(14042989,5698837.5;14130413,5738837.5)&from=webmap&biz_forward=%7B%22scaler%22:1,%22styles%22:%22pl%22%7D&device_ratio=1"></iframe>
	</div>
	<div class="clearfix"></div>
	<%@include file="TailPage.jsp"%>
</body>
</html>