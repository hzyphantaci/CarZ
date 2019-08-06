<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.3.4.1.min.js"></script>
<script type="text/javascript">
    $(function(){
    	$("#coun>option").click(function(){
    		var val = $(this).val();
    		console.log(val);
    		val = $.trim(val);
    		if(val!=""){
    			console.log(1);
    			var url = "${pageContext.request.contextPath}/SelectServlet";
    			var args = {"country":val,"time":new Date()};
    			console.log(args.country);
    			$.post(url,args,function(data){
    				$("#ditu>iframe").attr("src",data);
    			});
    		}
    	});
    });

</script>
<style type="text/css">
iframe{
   width:80%;
   height:600px;
}
#ditu{
width:100%;
height:600px;
text-align:center;
border-width: 2px;
border-style: solid;
border-color:red;	
}
</style>
</head>
<body>
<%@include file="HeadPage.jsp"%>
<div class="clearfix"></div>
<div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li>汽车店</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>汽车店</h3>
					</div>
					
				</div>
			</div>
			<br/>
				<div class="countryDiv">
					<select id="coun">
							<option  value="null">请选择你想要看的城市</option>
							<option  value="长沙">长沙</option>
							<option value="上海" >上海</option>
							<option value="武汉">武汉</option>
							<option value="南京">南京</option>
							<option value="北京">北京</option>
							<option value="广州">广州</option>
							<option value="重庆">重庆</option>
							<option value="成都">成都</option>
							<option value="深圳">深圳</option>
							<option value="南昌">南昌</option>
							<option value="哈尔滨">哈尔滨</option>
							<option value="厦门">厦门</option>
							<option value="香港">香港</option>
							<option value="荆州">荆州</option>
							<option value="恩施">恩施</option>
							<option value="杭州">杭州</option>
							<option value="西安">西安</option>
							<option value="兰州">兰州</option>
							<option value="贵阳">贵阳</option>
							<option value="海口">海口</option>
							<option value="沈阳">沈阳</option>
							<option value="大连">大连</option>
							<option value="银川">银川</option>
							<option value="郑州">郑州</option>
							<option value="昆明">昆明</option>
					</select>
				</div>
				<br/>
<div id="ditu"><iframe src="https://map.baidu.com/search/%E5%93%88%E5%B0%94%E6%BB%A8%E5%B8%82%E6%B1%BD%E8%BD%A6%E5%BA%97/@14086920.845885715,5702576.72,12.2z?querytype=s&da_src=shareurl&wd=%E5%93%88%E5%B0%94%E6%BB%A8%E5%B8%82%E6%B1%BD%E8%BD%A6%E5%BA%97&c=48&src=0&pn=0&sug=0&l=12&b=(14042989,5698837.5;14130413,5738837.5)&from=webmap&biz_forward=%7B%22scaler%22:1,%22styles%22:%22pl%22%7D&device_ratio=1"></iframe></div>
<div class="clearfix"></div>
<%@include file="TailPage.jsp"%>
</body>
</html>