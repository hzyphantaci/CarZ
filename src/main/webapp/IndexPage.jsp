<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
</head>
<body>
<jsp:include page="${'/MainHeadServlet'}"></jsp:include>
<div class="featured_section_w3l">
		<div class="container">
		      <h3 class="tittle">FEATURED CARS</h3>
	               <div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">UpComing cars</a></li>
							<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">Popular</a></li>
							<li role="presentation"><a href="#tree" role="tab" id="tree-tab" data-toggle="tab" aria-controls="tree">Just Launched</a></li>
							
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
												<h4>Be the first to know</h4>
											<div class="login-top sign-top">
												<form action="SubscribeIntoServlet?url=index" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
													<input type="text" name="phone" class="phone" placeholder="Phone" required=""/>
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
													<input type="submit" value="Done">
													
													</div>
												</form>
											
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
												<h4>Be the first to know</h4>
											<div class="login-top sign-top">
												<form action="SubscribeIntoServlet?url=index" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
													<input type="text" name="phone" class="phone" placeholder="Phone" required=""/>
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
													<input type="submit" value="Done">
													
													</div>
												</form>
											
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
												<h4>Be the first to know</h4>
											<div class="login-top sign-top">
												 <form action="SubscribeIntoServlet?url=index" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
													<input type="text" name="phone" class="phone" placeholder="Phone" required=""/>
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
													<input type="submit" value="Done">
													
													</div>
												</form>
											
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
														 <h4><a href="MainSearchServlet"> Ford Mustang GT 350</a></h4>
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
												 <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
												 <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
											   <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
												 <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
												 <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
											 <form action="MainSearchServlet" method="post">
													<input type="text" name="name" class="name active" placeholder="Name" required=""/>
													<input type="text" name="email" class="email" placeholder="Email" required=""/>
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
													<input type="password" name="password" class="password" placeholder="Password" required=""/>		
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
		</div>
	<!--//featured_section-->
	<!--/select-cars-agile-->
	<div class="select-cars-agile">
	   <div class="container">
	         <div class="grid cars-main">
			  <div class="col-md-7 slide-show-w3l">
			     <!--//screen-gallery-->
				 <h3 class="tittle top">NEW CARS</h3>
				 <h6 class="sub">Great Prices. Great Vehicles. Great Service.</h6>
							<div class="car-view-slider">
					          <ul id="flexiselDemo">
							 <li>
								 <a href="upcoming.jsp"><img src="images/n2.jpg" alt=""/>
								  <div class="caption">
										<h3><a href="upcoming.jsp">Ford Mustang GT 500</a></h3>
										<span>Catchy Carz</span>
										
									</div>
								 </a>
								
							 </li>
							 <li>
								 <a href="upcoming.jsp"><img src="images/n1.jpeg" alt=""/>
								 <div class="caption">
										<h3><a href="upcoming.jsp">Acura TLX</a></h3>
										<span>Catchy Carz</span>
										
									</div>
								 </a>
							 </li>
							 <li>
								 <a href="upcoming.jsp"><img src="images/n3.jpg" alt=""/>
								  <div class="caption">
										<h3><a href="upcoming.jsp"> McLaren MP4-12c</a></h3>
										<span>Catchy Carz</span>
										
									</div>
								 </a>
							 </li>
							 <li>
								 <a href="upcoming.jsp"><img src="images/n4.jpg" alt=""/>
									<div class="caption">
										<h3><a href="upcoming.jsp">BMW Z4</a></h3>
									<span>Catchy Carz</span>
										
									</div>
								 </a>
							 </li>
							</ul>
						</div>
						<!--//screen-gallery-->

					</div>
					<div class="col-md-5 new-car-used">
					  <h3 class="tittle top">USED CARS</h3>
					  <h6 class="sub">Used Cars at Shocking Prices.</h6>
					  <div class="used-one">
					     <figure class="effect-zoe">
							 <a href="used.jsp"><img src="images/used_car.jpg" alt="Used Car"></a>
							<figcaption>
								<h4>CATCHY <span>CARZ</span></h4>
								<p class="icon-links">
									<a href="#"><i class="glyphicon glyphicon-heart-empty"></i></a>
									<a href="#"><i class="glyphicon glyphicon-eye-open"></i></a>
									<a href="#"><i class="glyphicon glyphicon-paperclip"></i></a>
								</p>
							<p class="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</figcaption>			
						</figure>
					  </div>
					  <div class="clearfix"> </div>
					   <div class="used-one second">
					     <figure class="effect-zoe">
							<a href="used.jsp"><img src="images/used_car1.jpg" alt="Used Car"></a>
							<figcaption>
								<h4>CATCHY <span>CARZ</span></h4>
								<p class="icon-links">
									<a href="#"><i class="glyphicon glyphicon-heart-empty"></i></a>
									<a href="#"><i class="glyphicon glyphicon-eye-open"></i></a>
									<a href="#"><i class="glyphicon glyphicon-paperclip"></i></a>
								</p>
							<p class="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							</figcaption>			
						</figure>
					  </div>
					</div>
					<div class="clearfix"> </div>
				</div>
	   </div>
	</div>
	<!-- /bottom-banner -->
	<div class="banner-bottom">
	   <div class="container">
          <div class="bottom-form">
			<div class="inner-text">
				
			 <form action="SubscribeIntoServlet?url=index" method="post">
				<h3>Choose Your Best Car</h3>
					<div class="best-hot">
						<h5>Name</h5>
						<input type="text" class="name active" placeholder="Name" required="">
					</div>
					<div class="best-hot">
						<h5>Email</h5>
						<input type="text" name="email" class="email" placeholder="Email" required=""/>
					</div>
					<div class="section_drop2">
					<h5>City</h5>
						<select id="country6" onchange="change_country(this.value)" class="frm-field required">
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
					<input type="submit" value="Book Now">
				</form>
			</div>
		</div>
	</div>
</div>
	<!-- //bottom-banner -->
	<!-- /slider1 -->
			<div class="slider1">
		<div class="arrival-grids">			 
			 <ul id="flexiselDemo1">
				 <li>
					 <a href="single.jsp"><img src="images/f1.jpg" alt=""/>
					  <div class="caption">
							<h3><a href="single.jsp">Mercedes-Benz C250 CDI</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
					
				 </li>
				 <li>
					 <a href="single.jsp"><img src="images/f2.jpg" alt=""/>
					 <div class="caption">
							<h3><a href="single.jsp">Audi A4 2.0 TDI</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.jsp"><img src="images/f3.jpg" alt=""/>
					  <div class="caption">
							<h3><a href="single.jsp">Ford Mustang GT 500</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.jsp"><img src="images/f4.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.jsp">Ford Mustang GT 350</a></h3>
						<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.jsp"><img src="images/f7.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.jsp">BMW M4</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				 <li>
					 <a href="single.jsp"><img src="images/f5.jpeg" alt=""/>
					 <div class="caption">
							<h3><a href="single.jsp">Ferrari F430</a></h3>
							<span>Catchy Carz</span>
							
						</div>
					 </a>
				 </li>
				  <li>
					 <a href="single.jsp"><img src="images/f8.jpg" alt=""/>
					    <div class="caption">
							<h3><a href="single.jsp">BMW X4 M Sport</a></h3>
							<span>Catchy Carz</span>
					    </div>
					 </a>
				 </li>
				</ul>
		  </div>
	  </div>
	<!-- //slider -->
	<!-- Services -->
	<div class="updates-agile">
		<div class="container">
		      <h3 class="tittle">LATEST CAR UPDATES</h3>
		<div class="inner_tabs">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class=""><a href="#updates" id="updates-tab" role="tab" data-toggle="tab" aria-controls="updates" aria-expanded="false">Car News</a></li>
							<li role="presentation" class=""><a href="#expert" role="tab" id="expert-tab" data-toggle="tab" aria-controls="expert" aria-expanded="false">Expert Reviews</a></li>
							<li role="presentation" class="active"><a href="#video-text" role="tab" id="video-text-tab" data-toggle="tab" aria-controls="video-text" aria-expanded="true">Videos</a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade" id="updates" aria-labelledby="updates-tab">
							 <div class="news-updates">
									<div class="update-info-w3l">
										<div class="col-md-5 tab-image">
											<div class="view second-effect">
												<a href="single.jsp" title="Catchy Carz">
													<img src="images/u1.jpeg" alt="" class="img-responsive">
													<div class="mask">
														<p>Catchy <span>Carz</span> </p>
													</div>
												</a>	
											</div>
											
										</div>
										<div class="col-md-7 tab-info one">
										<h4><a href="single.jsp">Lorem Ipsum is simply dummy text of the printing </a></h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="update-info-w3l two">
										<div class="col-md-7 tab-info two">
										<h4><a href="single.jsp">Lorem Ipsum is simply dummy text of the printing </a></h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="col-md-5 tab-image">
											<div class="view second-effect">
												<a href="single.jsp" title="Catchy Carz">
													<img src="images/u2.jpg" alt="" class="img-responsive">
													<div class="mask">
														<p>Catchy <span>Carz</span> </p>
													</div>
												</a>	
											</div>
										</div>
										
										<div class="clearfix"></div>
									</div>
										
								 </div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="expert" aria-labelledby="expert-tab">
								<div class="news-updates">
									<div class="update-info-w3l">
										<div class="col-md-5 tab-image">
											<div class="view second-effect">
												<a href="single.jsp" title="Catchy Carz">
													<img src="images/u3.jpg" alt="" class="img-responsive">
													<div class="mask">
														<p>Catchy <span>Carz</span> </p>
													</div>
												</a>	
											</div>
										</div>
										<div class="col-md-7 tab-info">
										<h4><a href="single.jsp">Lorem Ipsum is simply dummy text of the printing </a></h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="update-info-w3l two">
										<div class="col-md-7 tab-info one">
										<h4><a href="single.jsp">Lorem Ipsum is simply dummy text of the printing </a></h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="col-md-5 tab-image">
											<div class="view second-effect">
											<a href="single.jsp" title="Catchy Carz">
													<img src="images/u4.jpeg" alt="" class="img-responsive">
													<div class="mask">
														<p>Catchy <span>Carz</span> </p>
													</div>
												</a>	
											</div>
										</div>
										
										<div class="clearfix"></div>
									</div>
										
								 </div>
								
							</div>
							<div role="tabpanel" class="tab-pane fade active in" id="video-text" aria-labelledby="video-text-tab">
								
								<div class="news-updates">
									<div class="update-info-w3l">
										<div class="col-md-5 tab-image">
											<!-- <iframe src="https://www.youtube.com/embed/XoXHwhADS4k" frameborder="0" allowfullscreen></iframe> -->
										</div>
										<div class="col-md-7 tab-info">
										<h4><a href="single.jsp">Audi A4 2016 review - Car Keys </a></h4>
											  							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="update-info-w3l two">
										<div class="col-md-7 tab-info two">
										    <h4><a href="single.jsp">Volvo V90 review: is Volvo's new estate car </a></h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
											<a href="single.jsp" class="read hvr-shutter-in-horizontal">Read More</a>
										</div>
										<div class="col-md-5 tab-image">
											<!-- <iframe src="https://www.youtube.com/embed/NcoCLc0MNdA" frameborder="0" allowfullscreen></iframe> -->
										</div>
										
										<div class="clearfix"></div>
									</div>
										
								 </div>
								
							</div>
						
						
						</div>
					</div>
				</div>
            </div>
		</div>
<%@include file="TailPage.jsp"%>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<script type="text/javascript">
				 $(window).load(function() {			
				  $("#flexiselDemo").flexisel({
					visibleItems:1,
					animationSpeed: 1000,
					autoPlay: true,
					autoPlaySpeed:1000,    		
					pauseOnHover:true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
							changePoint:480,
							visibleItems: 1
						}, 
						landscape: { 
							changePoint:640,
							visibleItems: 1
						},
						tablet: { 
							changePoint:768,
							visibleItems: 1
						}
					}
				});
				});
				</script>
						<script type="text/javascript">
				 $(window).load(function() {			
				  $("#flexiselDemo1").flexisel({
					visibleItems: 4,
					animationSpeed: 1000,
					autoPlay: true,
					autoPlaySpeed: 3000,    		
					pauseOnHover:true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
							changePoint:480,
							visibleItems: 1
						}, 
						landscape: { 
							changePoint:640,
							visibleItems: 2
						},
						tablet: { 
							changePoint:768,
							visibleItems: 3
						}
					}
				});
				});
				</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>