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
	$(document).ready(function() {
		if ("${budget}" != "") {
			$(".budgetChange").val("${budget}");
		}
		if ("${city}" != "") {
			$(".cityChange").val("${city}");
		}
		if ("${brand}" != "all" && "${brand}" != "") {
			$(".${brand}").prop("checked", true);
		}
		ConditionsChange();
		//	$.ajax({
		//		type:'post',
		//			url:'CarsListServlet',
		//		success:function(result){
		//			$("#displaySelect").after(result);
		//		}
		//		});
		var old = null; //用来保存原来的对象
		$(".radioBtn").each(function() {//循环绑定事件
			if (this.checked) {
				old = this; //如果当前对象选中，保存该对象
			}
			this.onclick = function() {
				if (this == old) {//如果点击的对象原来是选中的，取消选中
					this.checked = false;
					old = null;
				} else {
					old = this;
				}
			}
		});
	});

	function ConditionsChange(_page) {
		var _address = $(".cityChange").val();
		var _budget = $(".budgetChange").val()
		var _type = [];
		$(".carType").find("input[name='carType']:checked").each(function() {
			_type.push($(this).val());
		});
		var _brand = [];
		$(".carBrand").find("input[name='carBrand']:checked").each(function() {
			_brand.push($(this).val());
		});
		var _state = $("input[name='carState']:checked").val();
		var _gear = $("input[name='carGear']:checked").val();
		var _power = $("input[name='carPower']:checked").val();
		//alert(_address+_budget+_type+_brand+_state+_gear+_power);
		var args = {
			"page":_page,
			"address" : _address,
			"budget" : _budget,
			"type[]" : _type,
			"brand[]" : _brand,
			"state" : _state,
			"gear" : _gear,
			"power" : _power
		};
		$.ajax({
			type : 'post',
			url : 'CarsListServlet',
			data : args,
			success : function(result) {
				$("#products").html(result);
			    var pageCount = $("#pageCount").val();
			    var page ="<ul><li><a class=\"frist firstPage\" href=\"javascript:void(0);\">上一页</a></li>";
			    for(var i=1;i<=pageCount;i++){
			    	page+=("<li><a href=\"javascript:void(0);\" onclick=\"ConditionsChange("+i+")\">"+i+"</a></li>");
			    }
			    page+="<li><a class=\"last\" href=\"javascript:void(0);\">下一页</a></li><div class=\"clearfix\"></div>";
			    $("#pageBlock").html(page);
			}
		});
	}
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
						<select id="country12" class="frm-field required cityChange"
							onchange="ConditionsChange()">
							<option value="null" style="display: none" disabled selected>城市</option>
							<option value="all">不限</option>
							<c:forEach items="${citysNameList}" var="city">
								<option value="${city}">${city}</option>
							</c:forEach>
						</select>
					</div>
					<div class="w_nav1 two">
						<h4>选择预算</h4>
						<select id="country19" class="frm-field required budgetChange"
							onchange="ConditionsChange()">
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
							<div class="form-inner carType">
								<c:forEach items="${typeList}" var="type">
									<label class="checkbox"> <input type="checkbox"
										name="carType" value="${type}" onchange="ConditionsChange()"><i></i>${type}</label>
								</c:forEach>
							</div>
						</div>
					</section>
					<section class="sky-form brandChange">
						<h4>品牌</h4>
						<div class="scrollbar" id="style-2">
							<div class="form-inner carBrand">
								<c:forEach items="${brandList}" var="brand">
									<label class="checkbox"> <input type="checkbox"
										name="carBrand" class="${brand}" value="${brand}"
										onchange="ConditionsChange()"><i></i>${brand}</label>
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
							<form action="#">
								<label class="radio"><input type="radio"
									class="radioBtn" name="carState" value="新车"
									onchange="ConditionsChange()"><i></i>新车</label> <label
									class="radio"><input type="radio" class="radioBtn"
									name="carState" value="二手车" onchange="ConditionsChange()"><i></i>二手车</label>
							</form>

						</div>
					</section>
					<section class="sky-form">
						<h4>挡位</h4>
						<div class="form-inner">
							<form action="#">
								<label class="radio"><input type="radio"
									class="radioBtn" name="carGear" value="自动挡"
									onchange="ConditionsChange()"><i></i>自动挡</label> <label
									class="radio"><input type="radio" class="radioBtn"
									name="carGear" value="手动挡" onchange="ConditionsChange()"><i></i>手动挡</label>
							</form>
						</div>
					</section>
					<section class="sky-form">
						<h4>能源类型</h4>
						<div class="scrollbar" id="style-2">
							<div class="form-inner">
								<form action="#">
									<c:forEach items="${powerList}" var="power">
										<label class="radio"><input type="radio"
											class="radioBtn" name="carPower" value="${power}"
											onchange="ConditionsChange()"><i></i>${power}</label>
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
					
					<div id="products" class="row list-group">
					</div>

				</div>
				<div style="float: right">
					<div class="blog-pagenat" id="pageBlock">
						<!--//page -->
					</div>
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