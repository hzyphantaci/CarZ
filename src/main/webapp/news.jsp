<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.3.4.1.min.js"></script>
</head>
<body>
	<%@include file="HeadPage.jsp"%>
	<div class="service-breadcrumb">
		<div class="container">
			<div class="wthree_service_breadcrumb_left">
				<ul>
					<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
					<li>新闻和评论</li>
				</ul>
			</div>
			<div class="wthree_service_breadcrumb_right">
				<h3>新闻和评论</h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//breadcrumb-->
	<div class="tips w3l">
		<div class="container">
			<div class="col-md-9 tips-info">
			<c:forEach items="${newsList }" var="news">
					<div class="news-grid">
						<div class="news-img">
							<a href="single.jsp"> <img src="${news.newsPicurl }" alt=" "
								class="img-responsive"></a> <span class="price1">NEW</span>
						</div>
						<div class="news-text">
							<h3>
								<a href="NewsDetailServlet?newsDetailId=${news.newsCarId }">${news.newsCarName }</a>
							</h3>
							<ul class="news">
								<li><i class="fa fa-user" aria-hidden="true"></i> <a
									href="#">作者 ${news.newsUploader }</a></li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i> <a
									href="#">${news.newsCarDiscusscount }条评论</a></li>
								<li><i class="fa fa-heart" aria-hidden="true"></i> <a
									href="#">${news.newsCarLikecount }喜欢</a></li>
								<li><i class="fa fa-tags" aria-hidden="true"></i> <a
									href="#">3个标签</a></li>
							</ul>
							<p>${news.newsCarContent }</p>
							<a href="NewsDetailServlet?newsDetailId=${news.newsCarId }" class="read hvr-shutter-in-horizontal">Read
								More</a>

						</div>
						<div class="clearfix"></div>
					</div>
				</c:forEach>
				<div class="blog-pagenat" id="blogpagenat">
					<ul>
						<li><a class="frist" href="NewsServlet?currPageNo=1">Prev</a></li>
						<li><a href="NewsServlet?currPageNo=1">1</a></li>
						<li><a href="NewsServlet?currPageNo=2">2</a></li>
						<li><a href="NewsServlet?currPageNo=3">3</a></li>
						<li><a href="NewsServlet?currPageNo=4">4</a></li>
						<li><a href="NewsServlet?currPageNo=5">5</a></li>
						<li><a class="last" href="NewsServlet?currPageNo=6">Next</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>

			</div>
			<div class="col-md-3 advice-right w3l">
				<div class="blo-top">
					<div class="tech-btm one">
						<img src="images/1.jpg" class="img-responsive" alt="">
					</div>
				</div>
				<div class="blo-top">
					<div class="tech-btm">
						<h4>Sign up to our newsletter</h4>
						<p>Pellentesque dui, non felis. Maecenas male</p>
						<div class="name">
							<form action="#" method="post">
								<input type="text" name="email" class="email"
									placeholder="Enter your email address" required=""> <input
									type="submit" value="Subscribe">
							</form>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="blo-top1">
					<div class="agileits_twitter_posts tech-btm">
						<h4>Twitter Posts</h4>
						<ul>
							<li><i class="fa fa-twitter" aria-hidden="true"></i> 01 day
								ago<span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
									eius modi tempora incidunt ut labore et <a href="#">http://sd.ds/1389kjklf#</a>quo
									nulla.
							</span></li>
							<li><i class="fa fa-twitter" aria-hidden="true"></i> 02 day
								ago<span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
									eius modi tempora incidunt ut labore et <a href="#">http://fd.uf/56hfg#</a>quo
									nulla.
							</span></li>
							<li><i class="fa fa-twitter" aria-hidden="true"></i> 03 day
								ago<span>Qon numquam <a href="#">http://gf.ds/gre21#</a>
									eius modi tempora incidunt ut labore et <a href="#">http://gf.ds/gre21#</a>quo
									nulla.
							</span></li>
						</ul>
					</div>
				</div>
				<div class="blo-top1">
					<div class="tech-btm">
						<h4>Top stories of the week</h4>
						<div class="blog-grids">
							<div class="blog-grid-left">
								<a href="single.jsp"><img src="images/f1.jpg"
									class="img-responsive" alt=""></a>
							</div>
							<div class="blog-grid-right">

								<h5>
									<a href="single.jsp">Pellentesque dui, non felis. Maecenas
										male</a>
								</h5>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-grids">
							<div class="blog-grid-left">
								<a href="single.jsp"><img src="images/f2.jpg"
									class="img-responsive" alt=""></a>
							</div>
							<div class="blog-grid-right">

								<h5>
									<a href="single.jsp">Pellentesque dui, non felis. Maecenas
										male</a>
								</h5>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-grids">
							<div class="blog-grid-left">
								<a href="single.jsp"><img src="images/f3.jpg"
									class="img-responsive" alt=""></a>
							</div>
							<div class="blog-grid-right">

								<h5>
									<a href="single.jsp">Pellentesque dui, non felis. Maecenas
										male</a>
								</h5>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="blog-grids lost">
							<div class="blog-grid-left">
								<a href="single.jsp"><img src="images/f4.jpg"
									class="img-responsive" alt=""></a>
							</div>
							<div class="blog-grid-right">

								<h5>
									<a href="single.jsp">Pellentesque dui, non felis. Maecenas
										male</a>
								</h5>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<%@include file="TailPage.jsp"%>
</body>
</html>