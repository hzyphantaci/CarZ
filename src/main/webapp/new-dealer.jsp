<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new-dealer</title>
</head>
<body>
<%@include file="HeadPage.jsp"%>
<div class="service-breadcrumb">
				<div class="container">
				<div class="wthree_service_breadcrumb_left">
						<ul>
							<li><a href="IndexPage.jsp">首页</a> <i>|</i></li>
							<li><a href="dealer.jsp">Locate Dealer</a> <i>|</i></li>
							<li>New Car Dealer</li>
						</ul>
					</div>
					<div class="wthree_service_breadcrumb_right">
						<h3>New Car Dealers</h3>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		<!--//breadcrumb-->
		   <!--/sell-car -->
		<div class="loacte_dealer w3l">
			<div class="container">
				<div class="select-box">
				   <div class="select-city-for-local-ads ads-list">
				
					<label>Select your city</label>
					<form action="#" method="post">
						<select>
								<option value="null">Select your city</option>
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
						</form>
				</div>
				<div class="browse-category ads-list w3-agile">
					<label>Select your car</label>
					<form action="#" method="post">
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
						  
								
							</form>
				</div>
				<div class="search-product ads-list">
					
					<div class="search find">
						<form action="#" method="post">			
						  <input type="submit" value="Find Delaers">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			     <!--/dealers-accordion -->
					<div class="dealers-accordion w3l">
					  <h3 class="tittle">DEALERS</h3>
					     <!--/dealers-ac -->
					   <div class="dealers-ac">
					   <section class="ac-container">
							<div>
								<input id="ac-1" name="accordion-1" type="radio" checked />
								<label for="ac-1">United Kingdom</label>
								<article class="ac-small">

												<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158857.72810667029!2d-0.24168139921176457!3d51.52877184087611!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sin!4v1467798329560" frameborder="0" style="border:0" allowfullscreen></iframe>
									
								</article>
							</div>
							<div>
								<input id="ac-2" name="accordion-1" type="radio" />
								<label for="ac-2"> Switzerland</label>
								<article class="ac-medium">
									 
												<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1398134.5276287305!2d7.103144678563451!3d46.80959469938909!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x478c64ef6f596d61%3A0x5c56b5110fcb7b15!2sSwitzerland!5e0!3m2!1sen!2sin!4v1467798371592" frameborder="0" style="border:0" allowfullscreen></iframe>
											
								</article>
							</div>
							<div>
								<input id="ac-3" name="accordion-1" type="radio" />
								<label for="ac-3">France </label>
								<article class="ac-large">
			                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d43325.75342324686!2d3.902365093614657!3d47.25844886906891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47f1fa51edac0cf3%3A0x409ce34b3108a00!2s58140+Brassy%2C+France!5e0!3m2!1sen!2sin!4v1467804061751" frameborder="0" style="border:0" allowfullscreen></iframe>
										
								</article>
							</div>
							<div>
								<input id="ac-4" name="accordion-1" type="radio" />
								<label for="ac-4"> Russia</label>
								<article class="ac-large">
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d42198555.86948762!2d68.76272426794024!3d49.79367218707436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1467804420502" frameborder="0" style="border:0" allowfullscreen></iframe>
								</article>
							</div>
							<div>
								<input id="ac-5" name="accordion-1" type="radio" />
								<label for="ac-5"> Nigeria</label>
								<article class="ac-large">
										<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8069179.006706977!2d4.179871536466035!3d9.061136267035486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x104e0baf7da48d0d%3A0x99a8fe4168c50bc8!2sNigeria!5e0!3m2!1sen!2sin!4v1467803897470" frameborder="0" style="border:0" allowfullscreen></iframe>
								</article>
							</div>
							
						</section>
					</div>		
				</div>	
					   <!--//dealers-ac -->
				</div>
				
				  <!--//dealers-accordion -->
			</div>	

<%@include file="TailPage.jsp"%>
</body>
</html>