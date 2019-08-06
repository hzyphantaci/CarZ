<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <c:forEach items="${comList}" var="com">
	<div class="item  col-xs-4 col-lg-4">
		<div class="thumbnail">
			<a href="#" data-toggle="modal" data-target="#myModal6"><img
				class="group list-group-image" style="width:400px;height:270px" src="${com.listPicUrl}" alt="Catchy Carz"></a>
			<div class="table-text">
				<h4>
					<a href="used_cars.jsp" title="Maruti Suzuki 800 AC"
						class="click-search"><span class="spancarname">${com.carBrand}  ${com.carModel}  </span></a>
				</h4>
				<p class="gridViewPrice hide">
					<a href="used_cars.jsp"> <span class="rupee-lac">￥ ${com.carPrice}</span>
					</a>
				</p>
				<div class="other-details">
					<a href="used_cars.jsp"> <span class="rupee-lac slprice">
							￥ ${com.carPrice}</span>
					</a>
					<div class="clearfix"></div>
					<a href="used_cars.jsp">
						<p class="listing-item-kms">
							<span class="slkms">${com.comMileage}&nbsp;km</span><span
								class="margin-left5 margin-right5">|</span><span class="fuel">${com.carGear}</span><span
								class="margin-left5 margin-right5">|</span><span>2019</span>
						</p>
						<p class="listing-item-area">
							<span class="cityname">${com.comAddress}</span>
						</p>
						<p class="text-light-grey deliverytext"></p>
					</a>
				</div>
				<div class="clearfix"></div>
				<div class="list-form">
					<div class="get-one">
						<a href="used_cars.jsp">查看本车详情<a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	<div>
	<input id="pageCount"type="hidden"value="${pageCount} "/>
	</div>