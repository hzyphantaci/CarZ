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
							<li>比较汽车</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>比较汽车</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/sell-car -->
		<div class="sell-car w3l">
			<div class="container">
			<h3 class="tittle">比较汽车</h3>
			    <!--/sell-price-grids -->
	              	<div class="compare">

			<h4>Choose at least two cars of your choice to see how they compare on price, features, and performance.</h4>

			<div class="compare-cars">
				<div class="compare-text compare-cars-text">
					<p>Car 1</p>
				</div>
				<div class="compare-form-data compare-cars-form-data">
					<form action="javascript:void(0)" method="post">
						<select name="compare-cars">
							<option value="make" selected>-- Select a Make --</option>
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
							<option value="fisker">Fisker</option>
							<option value="force">Force</option>
							<option value="ford">Ford</option>
							<option value="gmc">GMC</option>
							<option value="gta">GTA Motors</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Model --</option>
							<option value="a1">A1</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Version --</option>
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

			<div class="compare-cars w3l">
				<div class="compare-text compare-cars-text">
					<p>Car 2</p>
				</div>
				<div class="compare-form-data compare-cars-form-data">
					<form action="javascript:void(0)" method="post">
						<select name="compare-cars">
							<option value="make" selected>-- Select a Make --</option>
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
							<option value="fisker">Fisker</option>
							<option value="force">Force</option>
							<option value="ford">Ford</option>
							<option value="gmc">GMC</option>
							<option value="gta">GTA Motors</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Model --</option>
							<option value="a1">A1</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Version --</option>
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

			<div class="compare-cars">
				<div class="compare-text compare-cars-text">
					<p>Car 3</p>
				</div>
				<div class="compare-form-data compare-cars-form-data">
					<form action="javascript:void(0)" method="post">
						<select name="compare-cars">
							<option value="make" selected>-- Select a Make --</option>
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
							<option value="fisker">Fisker</option>
							<option value="force">Force</option>
							<option value="ford">Ford</option>
							<option value="gmc">GMC</option>
							<option value="gta">GTA Motors</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Model --</option>
							<option value="a1">A1</option>
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
					<form action="javascript:void(0)" method="post">
						<select name="cars">
							<option value="make" selected>-- Select a Version --</option>
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

			<div class="value-button">
				<form action="javascript:void(0)" method="post">
						<input type="submit" value="COMPARE">
				</form>
			</div>

			<div class="clearfix"></div>

			<div class="new w3-agile">
				<h3>Hot New Car Comparisons</h3>
				<div class="new-car new-car-1">
					<div class="new-car-image">
						<img src="images/new-car-1.jpg">
					</div>
					<div class="new-car-info">
						<h4>Audi A8 W12 Quattro</h4>
						<p>$85000</p>
						<span></span>
						<br>
						<br>
						<a href="news.jsp">39 Reviews</a>
					</div>
				</div>
				<div class="new-car new-car-2">
					<div class="new-car-image">
						<img src="images/new-car-2.jpg">
					</div>
					<div class="new-car-info">
						<h4>BMW 750Li</h4>
						<p>$89000</p>
						<span></span>
						<br>
						<br>
						<a href="news.jsp">67 Reviews</a>
					</div>
				</div>
				<div class="new-car new-car-3">
					<div class="new-car-image">
						<img src="images/new-car-3.jpg">
					</div>
					<div class="new-car-info">
						<h4>Mercedes-Benz S500</h4>
						<p>$87000</p>
						<span></span>
						<br>
						<br>
						<a href="news.jsp">45 Reviews</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			</div>

		</div>
		</div>
	<!--//sell-price-grids -->
	</div>
<%@include file="TailPage.jsp"%>
</body>
</html>