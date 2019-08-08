<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#likes").click(function(){
		var val1 =parseInt( $("#detaillikes").html());
		var val2 =parseInt( $("#detaillikes").attr("value"));
		if(val1==val2){
			$("#detaillikes").html(val1+1);
		}else{
			$("#detaillikes").html(val1-1);
		}
	});
});
</script>
</head>
<body>
<%@include file="HeadPage.jsp"%>
<div class="service-breadcrumb w3-agile">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li>单页</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>单页</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		<div class="single w3ls">
		<div class="container">
			<div class="col-md-8 single-left">
			<c:forEach items="${newsList }" var="news">
				<div class="sample1">
					<div class="carousel" style="height: 341px;">
						<ul>
							<li class=""> <img src="${news.newsDetailPicurl1}" alt="quibusdam et aut offi"> <div class="caption1	"><span>quibusdam et aut offi</span></div></li>
							<li class=""> <img src="${news.newsDetailPicurl2}" alt="Itaque earum rerum hic"> <div class="caption1"><span>Itaque earum rerum hic</span></div></li>
							<li class="current"> <img src="${news.newsDetailPicurl3}" alt="doloribus asperio rep"> <div class="caption1"><span>doloribus asperio rep</span></div></li>
							<li> <img src="${news.newsDetailPicurl4}" alt="maiores alias consequ"> <div class="caption"><span>maiores alias consequ</span></div></li>
						</ul>
						<div class="controls">
							<div class="prev"></div>
							<div class="next"></div>
						</div>
					</div>
					<div class="thumbnails">
						<ul>
							<li class=""> <div><img src="${news.newsDetailPicurl1}" alt=" "></div> </li>
							<li class=""> <div><img src="${news.newsDetailPicurl2}" alt=" "></div> </li>
							<li class="selected"> <div><img src="${news.newsDetailPicurl3}" alt=" "></div> </li>
							<li> <div><img src="${news.newsDetailPicurl4}" alt=" "></div> </li>
						</ul>
					</div>
				</div>
				<div class="single-left2">
					<ul class="com">
						<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="javascript:void(0)">作者 ${news.newsDetailUploader}</a></li>
						<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="javascript:void(0)">${news.newsDetailDiscusscount}条评论</a></li>
						<li id="likes"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="javascript:void(0)"  id="detaillikes" value="${news.newsDetailLikecount}">${news.newsDetailLikecount}</a><a>喜欢</a></li>
						<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="javascript:void(0)">3个标签</a></li>
					</ul>
					<div class="single-left2-sub">
						<ul>
							<li>最新标签: </li>
							<li><a href="javascript:void(0)">设计</a></li>
							<li><a href="javascript:void(0)">部分</a></li>
							<li><a href="javascript:void(0)">包</a></li>
						</ul>
					</div>
				</div>
				<div class="single-left3">
					<p>${news.newsDetailContent}</p>
				</div>
				</c:forEach>
				<div class="single-left4">
					<h4>分享这篇文章</h4>
					<ul class="social-icons social-icons1">
						<li><a href="javascript:void(0)" class="icon icon-border icon-border1 facebook"></a></li>
						<li><a href="javascript:void(0)" class="icon icon-border icon-border1 twitter"></a></li>
						<li><a href="javascript:void(0)" class="icon icon-border icon-border1 instagram"></a></li>
						<li><a href="javascript:void(0)" class="icon icon-border icon-border1 pinterest"></a></li>
					</ul>
				</div>
				<br/>
				<div>
				    <h4>留言</h4>
				    <br/>
					<textarea style="width: 700px;height: 100px"></textarea>
					<input type="button" style="width:60px;font-size: 0.9em;color: #fff;background:#E16B5B;outline: none;
                                    border: none;cursor: pointer;padding: 10px 10px;" value="确定">
				</div>
				<div class="comments agile-info">
					<h4>评论</h4>
					<div class="comments-grid">
						<div class="comments-grid-left">
							<img src="images/single.jpg" alt=" " class="img-responsive">
						</div>
						<div class="comments-grid-right">
							<h3><a href="javascript:void(0)">Adam Smith</a></h3>
							<h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 28th May, 2016</h5>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
							<div class="reply">
								<a href="javascript:void(0)">回复</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="comments-grid">
						<div class="comments-grid-left">
							<img src="images/single1.jpg" alt=" " class="img-responsive">
						</div>
						<div class="comments-grid-right">
							<h3><a href="javascript:void(0)">James Rick</a></h3>
							<h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 18th June, 2016</h5>
							<p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
							<div class="reply">
								<a href="javascript:void(0)">回复</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			
			</div>
			<div class="col-md-4 single-right">
			<div class="blo-top">
						<div class="tech-btm">
						<h4>订阅我们的电子报</h4>
						<p>Pellentesque dui, non felis. Maecenas male</p>
							<div class="name">
								 <form action="SubscribeIntoServlet?url=single" method="post">
									<input type="text" name="email" class="email" placeholder="Enter your email address" required="">
									<input type="submit" value="订阅">
								</form>
								<div class="clearfix"> </div>
						</div>
					</div>
					</div>
				<div class="blo-top1">
					<div class="agileits_twitter_posts tech-btm">
					<h4>Twitter Posts</h4>
					<ul>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 01 day ago<span>Non numquam <a href="javascript:void(0)">http://sd.ds/13jklf#</a>
							eius modi tempora incidunt ut labore et
							<a href="javascript:void(0)">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 02 day ago<span>Con numquam <a href="javascript:void(0)">http://fd.uf/56hfg#</a>
							eius modi tempora incidunt ut labore et
							<a href="javascript:void(0)">http://fd.uf/56hfg#</a>quo nulla.</span></li>
						<li><i class="fa fa-twitter" aria-hidden="true"></i> 03 day ago<span>Qon numquam <a href="javascript:void(0)">http://gf.ds/gre21#</a>
							eius modi tempora incidunt ut labore et
							<a href="javascript:void(0)">http://gf.ds/gre21#</a>quo nulla.</span></li>
					</ul>
					</div>
				</div>
				<div class="related-posts">
					<h3>Related Posts</h3>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.jsp"><img src="images/f1.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.jsp">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.jsp"><img src="images/f2.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.jsp">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="related-post">
						<div class="related-post-left">
							<a href="single.jsp"><img src="images/f3.jpg" alt=" " class="img-responsive"></a>
						</div>
						<div class="related-post-right">
							<h4><a href="single.jsp">Donec sollicitudin</a></h4>
							<p>Aliquam dapibus tincidunt metus. 
								<span>Praesent justo dolor, lobortis.</span>
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="popular-videos">
				    <h3>Popular Videos</h3>
					<a href="javascript:void(0)">TOP 5 UPCOMING CARS IN INDIA IN 2016</a>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<%@include file="TailPage.jsp"%>
<script src="js/jquery-1.11.1.min.js"></script>
				<script src="js/jquery.light-carousel.js"></script> 
				<script>
					$('.sample1').lightCarousel();
				</script> 
				<link href="css/light-carousel.css" rel="stylesheet" type="text/css">

<script src="js/bootstrap.js"></script>
</body>
</html>