<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#imgUploadBtn').click(function() {
			$('#imgUpload').click();
		});

	});
	function brandChange() {
		var _brand = $("#brandSelect").val();
		var url = "ModelServlet";
		var args = {
			"brand" : _brand
		};
		$.post('ModelServlet', args, function(result) {
			$("#modelSelect").removeAttr("disabled");
			$("#modelSelect").html(result);
		});
	}
</script>
<body>
	<%@include file="HeadPage.jsp"%>
	<form action="SellServlet" method="post" enctype='multipart/form-data'>
		<div class="service-breadcrumb">
			<div class="container">
				<div class="wthree_service_breadcrumb_left">
					<ul>
						<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
						<li>卖车</li>
					</ul>
				</div>
				<div class="wthree_service_breadcrumb_right">
					<h3>卖车申请填写</h3>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--//breadcrumb-->
		<!--/sell-car -->
		<div class="sell-car w3l">
			<div class="container">
				<!--/sell-price-grids -->
				<div class="sell">
					<h3>卖车申请表</h3>
					<div class="cars">
						<div class="text cars-text">
							<p>车辆详情</p>
						</div>
						<div class="form-data cars-form-data">
							<select name="Brand" id="brandSelect" onchange="brandChange()">
								<option value="null" style="display: none" disabled selected>选择品牌</option>
								<c:forEach items="${brandList}" var="brand">
									<option value="${brand}">${brand}</option>
								</c:forEach>
							</select> 
							<select name="model" id="modelSelect" disabled="disabled">
								<option value="null" style="display: none" disabled selected>选择车型</option>
							</select> 
							<select name="Color">
								<option value="null" style="display: none" disabled selected>颜色</option>
								<option value="黑色">黑色</option>
								<option value="白色">白色</option>
								<option value="银色">银色</option>
								<option value="红色">红色</option>
								<option value="蓝色">蓝色</option>
								<option value="粉色">粉色</option>
								<option value="黄色">黄色</option>
								<option value="其它颜色">其它颜色</option>
							</select>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="year">
						<div class="text year-text">
							<p>出厂日期</p>
						</div>
						<div class="form-data year-form-data">
							<input type="number" name="year" value="2019"> <select
								name="Month">
								<option value="null" style="display: none" disabled selected>月份</option>
								<option value="month">一月</option>
								<option value="month">二月</option>
								<option value="month">三月</option>
								<option value="month">四月</option>
								<option value="month">五月</option>
								<option value="month">六月</option>
								<option value="month">七月</option>
								<option value="month">八月</option>
								<option value="month">九月</option>
								<option value="month">十月</option>
								<option value="month">十一月</option>
								<option value="month">十二月</option>
							</select>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="city">
						<div class="text city-text">
							<p>汽车所在地</p>
						</div>
						<div class="form-data country-form-data">
							<select name="city">
								<option value="null" style="display: none" disabled selected>选择城市</option>
								<c:forEach items="${citysNameList}" var="city">
									<option value="${city}">${city}</option>
								</c:forEach>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="kms">
						<div class="text kms-text">
							<p>里程表</p>
						</div>
						<div class="form-data kms-form-data" style="line-height: 50px;">
							<input type="number" name="mileage" required="">Km
						</div>
						<div class="clearfix"></div>
					</div>


					<div class="price">
						<div class="text price-text">
							<p>希望卖出的价格</p>
						</div>
						<div class="form-data price-form-data"
							style="line-height: 50px; font-weight: 350">
							<input type="number" name="price" required="">￥
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="picture">
						<div class="text price-text">
							<p>图片</p>
						</div>
						<div class="form-data price-form-data" style="">
							<input id="imgUploadBtn"
								style="width: 100px; font-size: 0.9em; color: #fff; background: #E16B5B; outline: none; border: none; cursor: pointer; padding: 10px 20px;"
								type="button" value="上传图片" /> <img id="carImg" width="400px"
								height="260px" style="display: none;"> <input
								id="imgUpload" type='file' name='img' style="display: none"
								onchange="showPicture(this)" />
							<script type='text/javascript'>
								function showPicture(imgFile) {
									var img = document.getElementById('carImg');
									img.src = window.URL
											.createObjectURL(imgFile.files[0]);
									img.style.display = 'block';
								}
							</script>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="contact-form w3-agile">
						<h3>联系方式</h3>
						<div class="name">
							<div class="text name-text">
								<p>姓名</p>
							</div>
							<div class="form-data name-form-data">
								<input type="text" Name="name" required="">
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="email">
							<div class="text email-text">
								<p>邮箱</p>
							</div>
							<div class="form-data email-form-data">
								<input type="email" Name="email" required="">
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="phone">
							<div class="text phone-text">
								<p>手机</p>
							</div>
							<div class="form-data phone-form-data">
								<input type="text" Name="phone" required="">
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="radio-button">
							<input type="radio" name="radio"> 我同意所有的条款和条例
						</div>
						<div class="value-button">
							<input type="submit" value="提交申请">
						</div>

						<div class="clearfix"></div>
					</div>

				</div>

			</div>
			<!--//sell-price-grids -->
		</div>
		</div>
	</form>
	<%@include file="TailPage.jsp"%>
</body>
</html>