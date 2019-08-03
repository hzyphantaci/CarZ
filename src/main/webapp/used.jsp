<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="HeadPage.jsp"%>
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							
							<li>寻找二手车</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>寻找二手车</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/used-car -->
		<div class="used-car w3l">
			<div class="container">
			      <div class="used-form">
				     <form action="#" method="post">
						<div class="used">
							
						<select id="country12" onchange="change_country(this.value)" class="frm-field required">
														<option value="null"> 选择城市</option>
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
					</select>
						</div>
						<div class="used two">
							<select id="country19" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">预算</option>
							<option value="null">0</option>     
							<option value="AX">10,000</option>
							<option value="AX">12,000</option>
							<option value="AX">13,000</option>
							<option value="AX">15,000</option>
							<option value="AX">17,000</option>
							<option value="AX">21,000</option>
							<option value="AX">22,000</option>
							<option value="AX">25,000</option>
							<option value="AX">32,000</option>
							<option value="AX">34,000</option>
							<option value="AX">36,000</option>
							<option value="AX">38,000</option>
							<option value="AX">40,000</option>
							<option value="AX">42,000</option>
							<option value="AX">44,000</option>
							<option value="AX">36,000</option>
							<option value="AX">50,000</option>
						</select>
							
						</div>
			
							<input type="submit" value="找车">
							<div class="clearfix"> </div>
					</form>
				  </div>
			    <!--/used-car-grids -->
				<div class="featured_section_w3l">
		     <h3 class="tittle">寻找二手车</h3>
		<div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">即将上架的车</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">流行</a></li>
							<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">新推出</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							   <div class="section__content clearfix">
							   <!-- /card1 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f1.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp">Mercedes-Benz C250 CDI</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 8000 - $ 12000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4>成为第一个知道</h4>
											<div class="login-top sign-top">
												<form>
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<input type="text" name="phone" class="phone" placeholder="Phone" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
															<option value="null"> 选择城市</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>	
													<input type="submit" value="完成">
													
													</form></div>
												
											
													</div>
									  </span>
									</div>
								  </div>
								    <!-- //card1 -->
									<!-- /card2 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f2.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp">Audi A4 2.0 TDI</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 6000 - $ 10000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4>成为第一个知道</h4>
											<div class="login-top sign-top">
												<form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<input type="text" name="phone" class="phone" placeholder="Phone" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
															<option value="null"> 选择城市</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>	
													<input type="submit" value="完成">
													
													</form></div>
												
											
													</div>
									  </span>
									</div>
								  </div>
								    <!-- //card2 -->
									<!-- /card3 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f3.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp">Foed Mustang GT 500</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 9000 - $ 12000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4>成为第一个知道</h4>
											<div class="login-top sign-top">
												 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<input type="text" name="phone" class="phone" placeholder="Phone" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
														<option value="null"> 选择城市</option>
														<option value="null">选择城市</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>		
													<input type="submit" value="完成">
													
													</form></div>
												
											
													</div>
									  </span>
									</div>
								  </div>
								    <!-- //card3 -->
								 </div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
								   <div class="section__content clearfix">
							   <!-- /card1 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f4.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp"> Ford Mustang GT 350</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 8000 - $ 11000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">June 2016</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz"> Check On-Road Price</h4>
											<div class="login-top sign-top">
												 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
														<option value="null"> 选择城市</option>
																		<option value="null"> 选择城市</option>
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
														<option value="city">Others...</option>
													</select>
													</div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
											
													</div>
									  </span>
									</div>
								  </div>
								    <!-- //card1 -->
									<!-- /card2 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f5.jpeg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="#">Ferrari F430</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 7000 - $ 13000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">July 2016</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz">  Check On-Road Price</h4>
											<div class="login-top sign-top">
												 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
														<option value="null"> Select City</option>
																	<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
													</div>
									  </span>
									</div>
								  </div>
								    <!-- //card2 -->
									<!-- /card3 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f6.jpeg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp"> Mercedes-Benz C250 CDI</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 5000 - $ 10000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Aug 2016</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz">  Check On-Road Price</h4>
											<div class="login-top sign-top">
											   <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
															<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
										</div>
									  </span>
									</div>
								  </div>
								    <!-- //card3 -->
								 </div>
								
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
								
								<div class="section__content clearfix">
							   <!-- /card1 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f7.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp">BMW M4</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 6000 - $ 11000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz"> Check On-Road Price</h4>
											<div class="login-top sign-top">
												 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
															<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
													</div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
										</div>
									  </span>
									</div>
								  </div>
								    <!-- //card1 -->
									<!-- /card2 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f8.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp"> BMW X4 M Sport</a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">$ 7000 - $ 12000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz">  Check On-Road Price</h4>
											<div class="login-top sign-top">
												 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
															<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
										</div>
									  </span>
									</div>
								  </div>
								    <!-- //card2 -->
									<!-- /card3 -->
								  <div class="card effect__hover">
									<div class="card__front">
									  <span class="card__text">
									       <div class="img-grid">
													<img src="images/f9.jpg" alt="Catchy Carz">
													<div class="car_description">
														 <h4><a href="single.jsp">BMW M3 </a></h4>
														 <div class="price"><span class="fa fa-rupee"></span><span class="font25">&nbsp;$ 5000 - $ 10000</span></div>
														 <p>Estimated Price</p>
														 <div class="date">Mar 2017</div>
														 <p>Expected Launch</p>
														</div>
												
													</div>
									  </span>
									</div>
									<div class="card__back">
									  <span class="card__text">
									     	 <div class="login-inner2">
												<h4><img src="images/rupee.png" alt="Catchy Carz">  Check On-Road Price</h4>
											<div class="login-top sign-top">
											 <form action="#" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required="">
													<input type="text" name="email" class="email" placeholder="Email" required="">
													<div class="section_drop">
													<select id="country1" onchange="change_country(this.value)" class="frm-field required">
																		<option value="null"> Select City</option>
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
														<option value="city">Others...</option>
													</select>
												   </div>
													<input type="password" name="password" class="password" placeholder="Password" required="">		
													<input type="submit" value="Check Now">
													
													
												</form>
											</div>
										</div>
									  </span>
									</div>
								  </div>
								    <!-- //card3 -->
								 </div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--//find-cars -->
			<!--/cities -->
				<div class="cities-section w3-agile">
				    <h3 class="tittle">BEST USED CARS</h3>
				  <ul class="cities-grids">
				    <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b1.jpg" alt="" class="img-responsive">
							   <div class="mask">

									<p>Audi A1<span>Quattro</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b2.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>Buick <span>Skylark </span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b3.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>Dodge <span>Challenger </span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b4.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>BMW X4 M <span>Sport</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b5.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>Ford <span>GT40</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="single.jsp" title="Catchy Carz">
							<img src="images/b6.jpg" alt="" class="img-responsive">
							   <div class="mask two">
									<p>Lambo<span>rghini</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					   <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b7.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>Acura <span>TLX</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b9.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>Audi <span>R8 V10</span> </p>
							   </div>
						</a>	
					    </div>
					 </li>
					 <li>
					  <div class="view two second-effect">
						<a href="cars.jsp" title="Catchy Carz">
							<img src="images/b8.jpg" alt="" class="img-responsive">
							   <div class="mask">
									<p>BMW  <span>Z4 </span> </p>
							   </div>
						</a>	
					    </div>
					 </li>

				 </ul>
				 <div class="clearfix"> </div>
			   </div>
			<!--//cities -->
			<!--//pricing-plans-grids -->
		 <div class="price-second-top">
			 <div class="pricing-plans-grids">
			  <h3 class="tittle">USED CARS BY PRICE</h3>
				<div class="col-md-4 pricing-plans">
					<div class="pricing-plan1">
						<h4>Upto</h4>
						<h5><sup>$</sup>6 <span>Lakhs</span></h5>
						<ul>
							<li><a href="#">Maruti Swift</a></li>
							<li>4.8 L searches</li>
							<li><a href="#">Hyundai i10</a></li>
							<li>3.3 L searches</li>
							<li><a href="#">Hyundai Santro Xing</a></li>
							<li>2.7 L searches</li>
						</ul>
						
					</div>
				</div>
				<div class="col-md-4 pricing-plans">
					<div class="pricing-plan1">
						<h4>Between</h4>
						<h5><sup>$</sup>6 - 12 <span>Lakhs</span></h5>
						<ul>
							<li><a href="#">Hyundai Verna</a></li>
							<li>1.9 L searches</li>
							<li><a href="#">Mahindra Scorpio</a></li>
							<li>1.1 L searches</li>
							<li><a href="#">Honda City</a></li>
							<li>1 L searches</li>
						</ul>
						
					</div>
				</div>
				<div class="col-md-4 pricing-plans">
					<div class="pricing-plan1">
						<h4>Above</h4>
						<h5><sup>$</sup>12 <span> Lakhs</span></h5>
						<ul>
							<li><a href="#">Mercedes-Benz C-Class</a></li>
							<li>1.6 L searches</li>
							<li><a href="#">Toyota Fortuner</a></li>
							<li>1.3 L searches</li>
							<li><a href="#">Mercedes-Benz E-Class</a></li>
							<li>70,000 searches</li>
						</ul>
						
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!--//pricing-plans-grids -->
			<!--//used-car-grids -->
		</div>
		<!-- //used-car -->
	</div>
</div>
<%@include file="TailPage.jsp"%>
</body>
</html>