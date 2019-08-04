<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cars</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			$(".budgetChange").val("${budget}");
			$(".cityChange").val("${city}");
			$(".${brand}").prop("checked",true); 
			$.ajax({
				type:'post',
				url:'CarsListServlet',
				success:function(result){
					$("#displaySelect").after(result);
				}
			});
		});
	</script>
</head>
<body>
	<%@include file="HeadPage.jsp"%>
	<div class="servi ce-breadcrumb">
		<div class="container">
			<div class="wthree_service_breadcrumb_left">
				<ul>
					<li><a href="IndexPage.jsp">主页</a> <i>|</i></li>
					<li>搜索汽车</li>
				</ul>
			</div>
			<div class="wthree_service_breadcrumb_right">
				<h3>搜索汽车</h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//breadcrumb-->
	<!--/search-car -->
	<div class="search-car w3l">
		<div class="container">
			<!--/search-car-inner -->
			<div class="search-car-inner w3l">
				<!--/search-car-left-nav -->
				<div class="col-md-3 search-car-left-sidebar">
					<section class="sky-form">
						<h4>Price range</h4>
						<div class="range">
							<ul class="dropdown-menu6">
								<li>
									<div id="slider-range"></div> <input type="text" id="amount"
									style="border: 0; color: #ffffff; font-weight: normal;" />
								</li>
							</ul>

						</div>
					</section>
					<div class="w_nav1">
						<h4>选择城市</h4>
						<select id="country12"	class="frm-field required cityChange">
							<option value="null" style="display: none" disabled selected>城市</option>
								<option value="all">不限</option>
								<c:forEach items="${citysNameList}" var="city">
							    <option value="${city}">${city}</option>
							    </c:forEach>
						</select>
					</div>
					<div class="w_nav1 two">
						<h4>选择预算</h4>
						<select id="country19" 
							class="frm-field required budgetChange">
							<option value="null" style="display: none" disabled selected>预算
							</option>
							<option value="all">不限</option>
							<option value="5">5万</option>
							<option value="10">10万</option>
							<option value="15">15万</option>
							<option value="20">20万</option>
							<option value="30">30万</option>
							<option value="50">50万</option>
							<option value="80">80万</option>
							<option value="100">100万</option>
							<option value="150">150万</option>
							<option value="200">200万</option>
							<option value="300">300万</option>
							<option value="more">更多</option>
						</select>
					</div>

					<h3>filter by</h3>
					<section class="sky-form">
						<h4>汽车类型</h4>
						<div class="scrollbar" id="style-2">
							<div class="form-inner">
								<label class="checkbox">
								<input type="checkbox"name="carModel"><i></i>小型轿车</label> 
								<label class="checkbox">
								<input type="checkbox" name="carModel"><i></i>中型轿车</label>
								<label class="checkbox">
								<input type="checkbox" name="carModel"><i></i>SUV</label>
								<label class="checkbox">
								<input type="checkbox"name="carModel"><i></i>跑车</label>
								<label class="checkbox">
								<input type="checkbox"name="carModel"><i></i>紧凑型</label>
								<label class="checkbox">
								<input type="checkbox"name="carModel"><i></i>微型车</label>
								<label class="checkbox">
								<input type="checkbox"name="carModel"><i></i>面包车</label>
							</div>
						</div>
					</section>
					<section class="sky-form brandChange">
						<h4>品牌</h4>
						<div class="scrollbar" id="style-2">
							<div class="form-inner">
							    <c:forEach items="${brandList}" var="brand">
							    <label class="checkbox">
								<input type="checkbox"name="carBrand"class="${brand}"><i></i>${brand}</label> 
							    </c:forEach>
							</div>
						</div>
					</section>
					<section class="sky-form">
						<h4>colour</h4>
						<ul class="w_nav2">
							<li><a class="color1" href="#"></a></li>
							<li><a class="color2" href="#"></a></li>
							<li><a class="color3" href="#"></a></li>
							<li><a class="color4" href="#"></a></li>
							<li><a class="color5" href="#"></a></li>
							<li><a class="color6" href="#"></a></li>
							<li><a class="color10" href="#"></a></li>
							<li><a class="color12" href="#"></a></li>
							<li><a class="color13" href="#"></a></li>
							<li><a class="color14" href="#"></a></li>
							<li><a class="color15" href="#"></a></li>
							<li><a class="color9" href="#"></a></li>
						</ul>
					</section>
					<section class="sky-form">
						<h4>新旧</h4>
						<div class="form-inner">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>新车</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>二手车</label>

						</div>
					</section>
					<section class="sky-form">
						<h4>挡位</h4>
						<div class="form-inner">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>手动挡</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>自动挡</label>

						</div>
					</section>
					<section class="sky-form">
						<h4>能源类型</h4>
						<div class="scrollbar" id="style-2">
							<div class="form-inner">
							   <form action="#">
								<c:forEach items="${powerList}" var="power">
							        <label class="radio"><input type="radio" name="power"><i></i>${power}</label>
							    </c:forEach>
							    </form>
							</div>
						</div>
					</section>

					<!---->
				</div>
				<!--//search-car-left-nav -->
				<!--/search-car-right-text -->
				<div class="col-md-9 search-car-right-text w3">
					<div class="well well-sm" id="displaySelect">
						<strong>Display</strong>
						<div class="btn-group">
							<a href="#" id="list" class="btn btn-default btn-sm"><span
								class="glyphicon glyphicon-th-list"> </span>List</a> <a href="#"
								id="grid" class="btn btn-default btn-sm two"><span
								class="glyphicon glyphicon-th"></span>Grid</a>
						</div>
					</div>
					<nav>
						<ul class="pagination pagination-lg">
							<li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
						</ul>
					</nav>

				</div>

				<!--//search-car-right-text -->
				<div class="clearfix"></div>
			</div>
			<!--//search-car-inner -->
		</div>
	</div>
	<%@include file="TailPage.jsp"%>
	<!---->
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type='text/javascript'>
		//<![CDATA[ 
		$(window).load(
				function() {
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 1000000,
								values : [ 50000, 200000 ],
								slide : function(event, ui) {
									$("#amount").val(
											"￥" + ui.values[0] + " - ￥"
													+ ui.values[1]);
								}
							});
					$("#amount").val(
							"￥" + $("#slider-range").slider("values", 0)
									+ " - ￥"
									+ $("#slider-range").slider("values", 1));

				});//]]>
	</script>
	<script>
		$(document).ready(function() {
			$('#list').click(function(event) {
				event.preventDefault();
				$('#products .item').addClass('list-group-item');
			});
			$('#grid').click(function(event) {
				event.preventDefault();
				$('#products .item').removeClass('list-group-item');
				$('#products .item').addClass('grid-group-item');
			});
		});
	</script>
</body>
</html>