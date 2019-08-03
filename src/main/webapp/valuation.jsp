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
							<li><a href="cars.jsp">Used Car Valuation </a> <i>|</i></li>
							<li>Car Valuation</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>Car Valuation</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/sell-car -->
		<div class="sell-car w3l">
			<div class="container">
			    <!--/sell-price-grids -->
					<div class="sell">

			<h3>Car Information</h3>

			<div class="year">
				<div class="text year-text">
					<p>Manufacturing Year</p>
				</div>
				<div class="form-data year-form-data">
					<form action="#" method="post">
						<select name="cars">
							<option value="month">Month</option>
							<option value="month">Jan</option>
							<option value="month">Feb</option>
							<option value="month">Mar</option>
							<option value="month">Apr</option>
							<option value="month">May</option>
							<option value="month">Jun</option>
							<option value="month">Jul</option>
							<option value="month">Aug</option>
							<option value="month">Sep</option>
							<option value="month">Oct</option>
							<option value="month">Nov</option>
							<option value="month">Dec</option>
						</select>
					</form>
					<form action="#" method="post">
						<input type="number" name="Number" placeholder="Year" required="">
					</form>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="cars second w3-agile">
				<div class="text cars-text">
					<p>Car</p>
				</div>
				<div class="form-data cars-form-data two">
					<form action="#" method="post">
						<select name="cars">
							<option value="make">-- Select a Make --</option>
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
							<option value="audi" selected>Audi</option>
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
					</form>
					<form action="#" method="post">
						<select name="cars">
							<option value="a1" selected>A1</option>
							<option value="a2">A2</option>
							<option value="a3">A3</option>
							<option value="a4">A4</option>
							<option value="a5">A5</option>
							<option value="a6">A6</option>
							<option value="a7">A7</option>
							<option value="a8">A8</option>
							<option value="q1">Q1</option>
							<option value="q3">Q3</option>
							<option value="q5">Q5</option>
							<option value="q7">Q7</option>
							<option value="r3">R3</option>
							<option value="rq7">RQ7</option>
							<option value="rs4">RS4</option>
							<option value="rs6">RS6</option>
							<option value="rs7">RS7</option>
							<option value="r8">R8</option>
							<option value="tt">TT</option>
							<option value="tt rs">TT RS</option>
						</select>
					</form>
					<form action="#" method="post">
						<select name="cars">
							<option value="hatchback">Hatchback</option>
							<option value="sedan">Sedan</option>
							<option value="saloon">Saloon</option>
							<option value="suv">SUV</option>
							<option value="crossover">Crossover</option>
							<option value="wagon">Wagon</option>
							<option value="convertible">Convertible</option>
							<option value="sports car">Sports Car</option>
						</select>
					</form>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="kms">
				<div class="text kms-text">
					<p>Kilometers Driven</p>
				</div>
				<div class="form-data kms-form-data">
					<form action="#" method="post">
						<input type="number" name="Number" required="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="city">
				<div class="text city-text">
					<p>City</p>
				</div>
				<div class="form-data country-form-data two">
					<form action="#" method="post">
						<select name="city">
							<option value="city">City</option>
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
					</form>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="value-button">
				<form action="#" method="post">
						<input type="submit" value="Check Value">
				</form>
			</div>

			<div class="clearfix"></div>
			</div>

		</div>

				 <!--//sell-price-grids -->
			</div>
		</div>
<%@include file="TailPage.jsp"%>

</body>
</html>