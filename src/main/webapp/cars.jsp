<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cars</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
</head>
<body>
<%@include file="HeadPage.jsp"%>

	<div class="service-breadcrumb">
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
						<h4>Select City</h4>
						<select id="country12" onchange="change_country(this.value)"
							class="frm-field required">
							<option value="city">Amsterdam</option>
							<option value="city">Bahrain</option>
							<option value="city">Cannes</option>
							<option value="city">Dublin</option>
							<option value="city">Edinburgh</option>
							<option value="city">Florence</option>
							<option value="city">Georgia</option>
							<option value="city">Hungary</option>
							<option value="city">Hong Kong</option>
							<option value="city">Johannesburg</option>
							<option value="city">Kiev</option>
							<option value="city">London</option>
						</select>
					</div>
					<div class="w_nav1 two">
						<h4>Select Budget</h4>
						<select id="country19" onchange="change_country(this.value)"
							class="frm-field required">
							<option value="null">Budget</option>
							<option value="null">0</option>
							<option value="AX">50,000</option>
							<option value="AX">10,00,000</option>
							<option value="AX">13,00,000</option>
							<option value="AX">20,00,000</option>
							<option value="AX">30,00,000</option>
							<option value="AX">40,00,000</option>
							<option value="AX">50,00,000</option>
						</select>
					</div>

					<h3>filter by</h3>
					<section class="sky-form">
						<h4>Car Details</h4>
						<div class="scrollbar" id="style-2">

							<div class="form-inner">
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Audi</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>AMG</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>BMW</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Caddilac</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Caparo</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dacia</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Daewoo</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Datsun</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>Eagle</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Ford</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Force</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>GTA
									Motors</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Geely</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Healey</label>
							</div>
						</div>

					</section>
					<section class="sky-form">
						<h4>brand</h4>

						<div class="scrollbar" id="style-2">

							<div class="form-inner">
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Audi</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>AMG</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>BMW</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Caddilac</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Caparo</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dacia</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Daewoo</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Datsun</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>Eagle</label>
								<label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Ford</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Force</label> <label
									class="checkbox"><input type="checkbox" name="checkbox"><i></i>GTA
									Motors</label> <label class="checkbox"><input type="checkbox"
									name="checkbox"><i></i>Geely</label> <label class="checkbox"><input
									type="checkbox" name="checkbox"><i></i>Healey</label>
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
							<li><a class="color5" href="#"></a></li>
							<li><a class="color9" href="#"></a></li>
						</ul>
					</section>
					<section class="sky-form">
						<h4>Seller type</h4>
						<div class="form-inner">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Individual</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dealer</label>

						</div>
					</section>
					<section class="sky-form">
						<h4>Transmission</h4>
						<div class="form-inner">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Manual</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Automatic</label>

						</div>
					</section>
					<section class="sky-form">
						<h4>Fuel Type</h4>
						<div class="scrollbar" id="style-2">

							<div class="form-inner">
								<label class="radio"><input type="radio" name="radio"><i></i>Petrol</label>
								<label class="radio"><input type="radio" name="radio"><i></i>Diesel</label>
								<label class="radio"><input type="radio" name="radio"><i></i>CNG</label>
								<label class="radio"><input type="radio" name="radio"><i></i>LPG</label>
								<label class="radio"><input type="radio" name="radio"><i></i>Eletric</label>
								<label class="radio"><input type="radio" name="radio"><i></i>Petrol</label>
							</div>
						</div>
					</section>

					<!---->
				</div>
				<!--//search-car-left-nav -->
				<!--/search-car-right-text -->
				<div class="col-md-9 search-car-right-text w3">
					<div class="well well-sm">
						<strong>Display</strong>
						<div class="btn-group">
							<a href="#" id="list" class="btn btn-default btn-sm"><span
								class="glyphicon glyphicon-th-list"> </span>List</a> <a href="#"
								id="grid" class="btn btn-default btn-sm two"><span
								class="glyphicon glyphicon-th"></span>Grid</a>
						</div>
					</div>
					<div id="products" class="row list-group">
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f2.jpg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">Audi
												A4 2.0 TDI</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$30,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 30,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P London</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f3.jpg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">Ford
												Mustang GT 500</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$34,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 34,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P Parries</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f1.jpg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">Mercedes-Benz
												C250 CDI</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$
												36,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 36,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P New York</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f4.jpg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">Ford
												Mustang GT 350</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$
												35,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 35,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P Netherlands</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f5.jpeg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">Ferrari
												F430</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$37,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 30,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P France</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
						<div class="item  col-xs-4 col-lg-4">
							<div class="thumbnail">
								<a href="#" data-toggle="modal" data-target="#myModal6"><img
									class="group list-group-image" src="images/f8.jpg"
									alt="Catchy Carz"></a>
								<div class="table-text">
									<h4>
										<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
											class="click-search"><span class="spancarname">BMW
												X4 M Sport</span></a>
									</h4>
									<p class="gridViewPrice hide">
										<a href="used_cars.jsp"> <span class="rupee-lac">$
												38,000</span>
										</a>
									</p>
									<div class="other-details">
										<a href="used_cars.jsp"> <span class="rupee-lac slprice">
												$ 38,000</span>
										</a>
										<div class="clearfix"></div>
										<a href="used_cars.jsp">
											<p class="listing-item-kms">
												<span class="slkms">35,000&nbsp;km</span><span
													class="margin-left5 margin-right5">|</span><span
													class="fuel">Petrol</span><span
													class="margin-left5 margin-right5">|</span><span>2016</span>
											</p>
											<p class="listing-item-area">
												<span class="cityname">G.O.P Switzerland</span>
											</p>
											<p class="text-light-grey deliverytext"></p>
										</a>
									</div>

									<div class="clearfix"></div>
									<div class="list-form">
										<div class="phone-info">
											<form action="used_cars.jsp" method="post">
												<input type="text" class="phone" placeholder="Phone"
													required="">
											</form>
										</div>
										<div class="get-one">
											<a href="used_cars.jsp">GET SELLER DETAILS<a>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>

				<!--//search-car-right-text -->
				<div class="clearfix"></div>
			</div>
			<!--//search-car-inner -->
		</div>
	</div>
<%@include file="TailPage.jsp"%>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
					<!---->
							<script type="text/javascript" src="js/jquery-ui.js"></script>
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 200000,
										values: [ 5000, 100000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
<script>
  $(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
});
</script>
</body>
</html>