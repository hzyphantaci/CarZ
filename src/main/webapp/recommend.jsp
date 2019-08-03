<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- //for-mobile-apps -->
<link rel="stylesheet" type="text/css" href="css/recommend.css" />
</head>
<body>
<%@include file="HeadPage.jsp"%>
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li>推荐我一辆车</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>推荐我一辆车</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/sell-car -->
		<div class="sell-car w3l">
			<div class="container">
			<h3 class="tittle">推荐我一辆车</h3>
			    <!--/sell-price-grids -->
				<div class="main w3-agile">
			<div class="pic-image"></div>
				<form  action="j-folder/php/demo.php" method="post" class="j-forms j-multistep" id="j-forms" >
						<fieldset>

							<!-- start name -->
							<div class="unit">
								<label class="label">你的最高预算是($)?</label>
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
								<label class="label">你的每月使用量是(KM)?</label>
								<div class="input">
									
									<input type="text" id="name" name="name">
								</div>
							</div>
							<!-- end name -->

							<!-- start way to communicate -->
							<div class="unit check" id="way_to_communicate">
								<div class="inline-group">
									<label class="month">每月使用和喜好</label>
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


							<div id="email-step" class="hidden">

									<!-- start email -->
								<div class="unit">
									<label class="label">Your email</label>
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
						<button type="submit" class="primary-btn multi-submit-btn">发送</button>
						<button type="button" class="primary-btn multi-next-btn">下一个</button>
						<button type="button" class="secondary-btn multi-prev-btn">返回</button>
					</div>
					<!-- end /.footer -->

				</form>
		
				</div>
				 <!--//sell-price-grids -->
			</div>
		</div>
<%@include file="TailPage.jsp"%>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.maskedinput.min.js"></script>
			<script src="js/jquery.validate.min.js"></script>
			<script src="js/jquery.form.min.js"></script>
			<script src="js/j-forms.min.js"></script>

</body>
</html>