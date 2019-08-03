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
				<!--/breadcrumb-->
		    <div class="service-breadcrumb">
				<div class="container">
					<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li>Locate Dealer</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Locate Dealer</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/sell-car -->
		<div class="loacte_dealer w3l">
			<div class="container">
			    <h3 class="tittle">LOCATE DEALER</h3>
			    <!--/locate -->
					<div class="locate">
					    <div class="locate_grids">
								<form action="javascript:void(0)" method="post">
									<select id="country16" name="">
										<option value="make">-- Select a Make --</option>
										<option value="car" selected>Select Car</option>
										<option value="abt">ABT</option>
										<option value="ac">AC</option>
										<option value="amc">AMC</option>
										<option value="amg">AMG</option>
										<option value="abarth">Abarth</option>
										<option value="acura">Acura</option>
										<option value="alfa romeo">Alfa Romeo</option>
										<option value="arial">Ariel</option>
										<option value="armstrong siddeley">Armstrong Siddeley</option>
										<option value="ascari">Ascari</option>
										<option value="aston martin">Aston Martin</option>
										<option value="audi">Audi</option>
										<option value="austin">Austin</option>
										<option value="bac">BAC</option>
										<option value="bmw">BMW</option>
										<option value="byd">BYD</option>
										<option value="bentley">Bentley</option>
										<option value="bertone">Bertone</option>
										<option value="brilliance">Brilliance</option>
										<option value="bristol">Bristol</option>
										<option value="bufori">Bufori</option>
										<option value="bugatti">Bugatti</option>
										<option value="buick">Buick</option>
										<option value="caddilac">Caddilac</option>
										<option value="caparo">Caparo</option>
										<option value="carbon motors">Carbon Motors</option>
										<option value="caterham">Caterham</option>
										<option value="cheri">Cheri</option>
										<option value="chevrolet">Chevrolet</option>
										<option value="chrysler">Chrysler</option>
										<option value="citroen">Citroën</option>
										<option value="continental">Continental</option>
										<option value="dacia">Dacia</option>
										<option value="daewoo">Daewoo</option>
										<option value="daihatsu">Daihatsu</option>
										<option value="daimler">Daimler</option>
										<option value="datsun">Datsun</option>
										<option value="de lorean">De Lorean</option>
										<option value="de tomaso">De Tomaso</option>
										<option value="dodge">Dodge</option>
										<option value="eagle">Eagle</option>
										<option value="ferrari">Ferrari</option>
										<option value="fiat">Fiat</option>
										<option value="">Fisker</option>
										<option value="force">Force</option>
										<option value="ford">Ford</option>
										<option value="gmc">GMC</option>
										<option value="">GTA Motors</option>
										<option value="geely">Geely</option>
										<option value="general motors">General Motors</option>
										<option value="ghia">Ghia</option>
										<option value="ginetta">Ginetta</option>
										<option value="gumpert">Gumpert</option>
										<option value="hsv">HSV</option>
										<option value="healey">Healey</option>
										<option value="hennessey motors">Hennessey Motors</option>
										<option value="holden">Holden</option>
										<option value="honda">Honda</option>
										<option value="hummer">Hummer</option>
										<option value="hyundai">Hyundai</option>
										<option value="infinity">Infinty</option>
										<option value="isuzu">Isuzu</option>
										<option value="italdesign">Italdesign</option>
										<option value="jaguar">Jaguar</option>
										<option value="jeep">Jeep</option>
										<option value="jensen motors">Jensen Motors</option>
										<option value="kia motors">Kia Motors</option>
										<option value="koenig">Koeing</option>
										<option value="koenigsegg">Koenigsegg</option>
										<option value="lada">Lada</option>
										<option value="lamborghini">Lamborghini</option>
										<option value="lancia">Lancia</option>
										<option value="land rover">Land Rover</option>
										<option value="lexus">Lexus</option>
										<option value="lincoln">Lincoln</option>
										<option value="lotus">Lotus</option>
										<option value="marussia">Marussia</option>
										<option value="mclaren">McLaren</option>
										<option value="mgb">MG Motor</option>
										<option value="mini">MINI</option>
										<option value="mahindra">Mahindra</option>
										<option value="maruti suzuki">Maruti Suzuki</option>
										<option value="maserati">Maserati</option>
										<option value="maybach">Maybach</option>
										<option value="mazda">Mazda</option>
										<option value="mercedes-benz">Mercedes-Benz</option>
										<option value="mercury">Mercury</option>
										<option value="mitsubishi">Mitsubishi</option>
										<option value="morgan">Morgan</option>
										<option value="mosler">Mosler</option>
										<option value="nsu">NSU</option>
										<option value="noble">Noble</option>
										<option value="nissan">Nissan</option>
										<option value="oldsmobile">Oldsmobile</option>
										<option value="opel">Opel</option>
										<option value="packard">Packard</option>
										<option value="pagani">Pagani</option>
										<option value="panoz">Panoz</option>
										<option value="peugeot">Peugeot</option>
										<option value="plymouth">Plymouth</option>
										<option value="pontiac">Pontiac</option>
										<option value="porsche">Porsche</option>
										<option value="proton">Proton</option>
										<option value="ram">RAM</option>
										<option value="ruf automobile">RUF Automobile</option>
										<option value="radical">Radical</option>
										<option value="reliant">Reliant</option>
										<option value="renault">Renault</option>
										<option value="rimac">Rimac</option>
										<option value="rinspeed">Rinspeed</option>
										<option value="rolls royce">Rolls Royce</option>
										<option value="rover">Rover</option>
										<option value="srt">SRT</option>
										<option value="ssc">SSC</option>
										<option value="saab">SAAB</option>
										<option value="saleen">Saleen</option>
										<option value="saturn">Saturn</option>
										<option value="scion">Scion</option>
										<option value="seat">SEAT</option>
										<option value="shelby">Shelby</option>
										<option value="skoda">Škoda</option>
										<option value="smart">Smart</option>
										<option value="spyker">Spyker</option>
										<option value="ssangyong">Ssangyong</option>
										<option value="studebaker">Studebaker</option>
										<option value="subaru">Subaru</option>
										<option value="sunbeam">Sunbeam</option>
										<option value="suzuki">Suzuki</option>
										<option value="tata motors">TATA Motors</option>
										<option value="tvr">TVR</option>
										<option value="tesla">Tesla</option>
										<option value="toyota">Toyota</option>
										<option value="triumph">Triumph</option>
										<option value="vauxhall">Vauxhall</option>
										<option value="Vector">Vector</option>
										<option value="venturi">Venturi</option>
										<option value="volkswagen">Volkswagen</option>
										<option value="volvo">Volvo</option>
										<option value="w motors">W Motors</option>
										<option value="webasto">Webasto</option>
										<option value="zagato">Zagato</option>
										<option value="zenos">Zenos</option>
										<option value="zenvo">Zenvo</option>
									</select>
						   <select id="country17" name="city">
							<option value="city">Select City</option>
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
								<div class="locate-button">
									
											<input type="submit" value="Find Delaers">
								</div>
							</form>
						</div>
				</div>
				  <!--//locate -->
				  <!--/browse -->
				     <div class="browse-section w3-agile">
					      <h3 class="tittle">BROWSE DEALERS BY MANUFACTURER</h3>
						<div class="browse-inner">
								<ul class="dealers-list one">
										<li><a href="new-dealer.jsp">Aston Martin</a></li>
										<li><a href="new-dealer.jsp">Audi</a></li>
										<li><a href="new-dealer.jsp">Bentley</a></li>
										<li><a href="new-dealer.jsp">BMW</a></li>
										<li><a href="new-dealer.jsp">Bugatti</a></li>
										<li><a href="new-dealer.jsp">Chevrolet</a></li>
										<li><a href="new-dealer.jsp">Datsun</a></li>
										<li><a href="new-dealer.jsp">DC</a></li>
										<li><a href="new-dealer.jsp">Eicher Polaris</a></li>
										<li><a href="new-dealer.jsp">Ferrari</a></li>
										<li><a href="new-dealer.jsp">Fiat</a></li>
										<li><a href="new-dealer.jsp">Force Motors</a></li>
								</ul>

								<ul class="dealers-list two">
										<li><a href="new-dealer.jsp">Ford</a></li>
										<li><a href="new-dealer.jsp">Honda</a></li>
										<li><a href="new-dealer.jsp">Hyundai</a></li>
										<li><a href="new-dealer.jsp">Isuzu</a></li>
										<li><a href="new-dealer.jsp">Jaguar</a></li>
										<li><a href="new-dealer.jsp">Lamborghini</a></li>
										<li><a href="new-dealer.jsp">Land Rover</a></li>
										<li><a href="new-dealer.jsp">Mahindra</a></li>
										<li><a href="new-dealer.jsp">Maruti Suzuki</a></li>
										<li><a href="new-dealer.jsp">Maserati</a></li>
										<li><a href="new-dealer.jsp">Mercedes-Benz</a></li>
										<li><a href="new-dealer.jsp">Mini</a></li>
								</ul>

								<ul class="dealers-list three">
										<li><a href="/new/mitsubishi-dealers/">Mitsubishi</a></li>
										<li><a href="/new/nissan-dealers/">Nissan</a></li>
										<li><a href="/new/porsche-dealers/">Porsche</a></li>
										<li><a href="/new/renault-dealers/">Renault</a></li>
										<li><a href="/new/rollsroyce-dealers/">Rolls-Royce</a></li>
										<li><a href="/new/skoda-dealers/">Skoda</a></li>
										<li><a href="/new/ssangyong-dealers/">Ssangyong</a></li>
										<li><a href="/new/tata-dealers/">Tata</a></li>
										<li><a href="/new/toyota-dealers/">Toyota</a></li>
										<li><a href="/new/volkswagen-dealers/">Volkswagen</a></li>
										<li><a href="/new/volvo-dealers/">Volvo</a></li>
								</ul>
								<div class="clearfix"> </div>
						</div>
					</div>
				  <!--//browse -->
			</div>
		</div>
<%@include file="TailPage.jsp"%>
</body>
</html>