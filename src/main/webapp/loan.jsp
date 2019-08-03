<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/recommend.css" />

<body>
<%@include file="HeadPage.jsp"%>
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left w3l">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li>汽车贷款</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>汽车贷款</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		<!--/car-loan -->
				<div class="car-loan agile-w3">
					<div class="container">
					      <h3 class="tittle">您正在寻找什么类型的汽车？</h3>
						  <!--car-loan-top-->
					    <div class="car-loan-top">
					          <div class="car-loan-gride-one">
					             <div class="col-md-6 car-new-loan">
					             <a href="loan-single.jsp"><img src="images/car_new.jpeg" alt="Used Car"></a>
								   <h4> <a href="loan-single.jsp">新车</a></h4>
					             </div>  
								<div class="col-md-6 car-old-loan">
					             <a href="loan-single.jsp"><img src="images/old-car.jpg" alt="Used Car"></a>
								  <h4> <a href="loan-single.jsp">二手车</a></h4>
					             </div>
									<div class="clearfix"></div>										 
								 <div class="serch-button">
										<a href="loan-single.jsp" class="read hvr-shutter-in-horizontal">搜索汽车贷款</a>
								</div>
							</div>   
					    </div>
						<!--car-loan--->
						<!--/car-loan-mid-->
						<div class="car-loan-mid w3l">
						 <h3 class="tittle">我喜欢的车是</h3>
						    <div class="categories">
									<div class="col-md-3 focus-grid">
										<a href="categories.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Hyundai Eon</h4>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image one"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Maruti Alto</h4>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image two"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Maruti Celerio</h4>
												</div>
											</div>
										</a>
									</div>	
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image three"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Honda Amaze</h4>
												</div>
											</div>
										</a>
									</div>	
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image four"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Audi</h4>
												</div>
											</div>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image five"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">BMW</h4>
												</div>
											</div>
										</a>
									</div>	
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image six"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Ferrari</h4>
												</div>
											</div>
										</a>
									</div>	
									<div class="col-md-3 focus-grid">
										<a href="loan-single.jsp">
											<div class="focus-border">
												<div class="focus-layout">
													<div class="focus-image seven"><i class="fa fa-car"></i></div>
													<h4 class="clrchg">Others...</h4>
												</div>
											</div>
										</a>
									</div>	
									<div class="clearfix"></div>
									<div class="serch-button">
										<a href="#car-loan1" class="read hvr-shutter-in-horizontal scroll">继续</a>
								</div>
							</div>
						</div>
						<!--//car-loan-top-->
						<!--/car-loan-bottom-->
						<div class="car-loan-bottom" id="car-loan1">
									<h3 class="tittle">你居住的城市是?</h3>
								  <ul class="cities-grids">
									<li>
									  <div class="view two second-effect">
										<a href="cars.jsp" title="Catchy Carz">
											<img src="images/city.jpg" alt="" class="img-responsive">
											   <div class="mask">
													<p>San <span>Francisco</span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									 <li>
									  <div class="view two second-effect">
										<a href="cars.jsp" title="Catchy Carz">
											<img src="images/city2.jpg" alt="" class="img-responsive">
											   <div class="mask">
													<p>New <span>York </span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									 <li>
									  <div class="view two second-effect">
										<a href="cars.jsp" title="Catchy Carz">
											<img src="images/city3.jpg" alt="" class="img-responsive">
											   <div class="mask">
													<p>Singa<span>pore </span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									 <li>
									  <div class="view two second-effect">
										<a href="cars.jsp" title="Catchy Carz">
											<img src="images/city4.jpg" alt="" class="img-responsive">
											   <div class="mask">
													<p>Syd<span>ney</span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									 <li>
									  <div class="view two second-effect">
										<a href="cars.jsp" title="Catchy Carz">
											<img src="images/city1.jpeg" alt="" class="img-responsive">
											   <div class="mask">
													<p>Pa<span>ris</span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									 <li>
									  <div class="view two second-effect">
										<a href="loan-single.jsp" title="Catchy Carz">
											<img src="images/city5.jpg" alt="" class="img-responsive">
											   <div class="mask two">
													<p>Oth<span>ers</span> </p>
											   </div>
										</a>	
										</div>
									 </li>
									

								 </ul>
								 <div class="clearfix"> </div>
								 <div class="serch-button">
										<a href="#car-loan2" class="read hvr-shutter-in-horizontal scroll">下一个</a>
								</div>

						</div>
						<!--//car-loan-bottom-->
						<!--/car-loan-bottom-form-->
						<div class="car-loan-bottom-form" id="car-loan2">
								<div class="multi-forms">
							
									<div class="main">
			                     <div class="pic-image"></div>
				                     <form action="j-folder/php/demo.php" method="post" class="j-forms j-multistep" id="j-forms" novalidate="novalidate">
						              <fieldset class="active-fieldset">

											<!-- start name -->
											<div class="unit">
												<label class="label">公司详情</label>
												<div class="input">
													
													<input type="text" id="name" name="name">
												</div>
											</div>
											<!-- end name -->

											<!-- start way to communicate -->
											<div class="unit check" id="way_to_communicate">
												<div class="inline-group">
													<label class="month">最好的沟通方式</label>
													<label class="radio">
														<input type="radio" name="way_to_communicate" value="Email" id="email_to_communicate">
														<i></i>
														Email
													</label>
													<label class="radio">
														<input type="radio" name="way_to_communicate" value="Phone" id="phone_to_communicate">
														<i></i>
														Phone
													</label>
												</div>
											</div>
											<!-- end way to communicate -->

										</fieldset>
											<fieldset>

												<!-- start name -->
												<div class="unit">
													<label class="label">我的月薪是</label>
													<div class="input">
														
														<input type="text" id="name" name="name">
													</div>
												</div>
												<!-- end name -->

												<!-- start way to communicate -->
												<div class="unit check" id="way_to_communicate">
													<div class="inline-group">
														<label class="month">我的工资存入</label>
														<label class="radio">
															<input type="radio" name="way_to_communicate" value="SBI" id="email_to_communicate">
															<i></i>
															SBI
														</label>
														<label class="radio">
															<input type="radio" name="way_to_communicate" value="HDFC BANK" id="phone_to_communicate">
															<i></i>
															HDFC BANK
														</label>
														<label class="radio">
															<input type="radio" name="way_to_communicate" value="ICICI BANK" id="email_to_communicate">
															<i></i>
															ICICI BANK
														</label>
														<label class="radio">
															<input type="radio" name="way_to_communicate" value="DENA BANK" id="phone_to_communicate">
															<i></i>
														DENA BANK
														</label>
													</div>
												</div>
												<!-- end way to communicate -->

											</fieldset>

											<fieldset>


												<div id="email-step" class="hidden">

														<!-- start email -->
															<div class="unit">
																<label class="label">你的邮箱</label>
																<div class="input">
																	
																	<input type="email" id="email" name="email">
																</div>
															</div>
															<!-- end email -->

															<!-- start message -->
															<div class="unit">
																<label class="label">评论/留言</label>
																<div class="input">
																	<textarea spellcheck="false" name="email_message"></textarea>
																</div>
															</div>
															<!-- end message -->
												</div>

												<div id="phone-step" class="hidden">

													<!-- start phone -->
													<div class="unit">
														<label class="label">Phone/Mobile</label>
														<div class="input">
															
															<input type="text" id="phone" name="phone">
														</div>
													</div>
													<!-- end phone -->

													<!-- start time to call -->
													<div class="unit">
														<label class="label">Time</label>
														<label class="input select">
															<select autocomplete="off" name="time">
																<option value="">call me ...</option>
																<option value="now">now</option>
																<option value="5 min">in 5 minutes</option>
																<option value="10 min">in 10 minutes</option>
																<option value="30 min">in 30 minutes</option>
																<option value="1 hour">in an hour</option>
																<option value="tomorrow">tomorrow</option>
															</select>
															<i></i>
														</label>
													</div>
													<!-- end time to call -->

													<!-- start message -->
													<div class="unit">
														<label class="label">评论/留言</label>
														<div class="input">
															<textarea spellcheck="false" name="phone_message"></textarea>
														</div>
													</div>
													<!-- end message -->

												</div>

											<!-- start response from server -->
											<div id="response"></div>
											<!-- end response from server -->

											</fieldset>

									
										<!-- end /.content -->

										<div class="footer">
											<button type="submit" class="primary-btn multi-submit-btn" style="display: none;">发送</button>
											<button type="button" class="primary-btn multi-next-btn">下一个</button>
											<button type="button" class="secondary-btn multi-prev-btn" style="display: none;">返回</button>
										</div>
										<!-- end /.footer -->
									</form>
							
									</div>
						  
						</div>
						<!--//car-loan-bottom-form-->
					</div>
				</div>
			</div>
<%@include file="TailPage.jsp"%>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
 <script src="js/jquery.maskedinput.min.js"></script>
			<script src="js/jquery.validate.min.js"></script>
			<script src="js/jquery.form.min.js"></script>
			<script src="js/j-forms.min.js"></script>

<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
</body>
</html>