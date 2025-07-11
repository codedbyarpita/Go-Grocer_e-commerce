<?php
include("header.php");
?>

<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">About</li>
			</ol>
		</div>
	</div>

<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="w3_agile_header">About Us</h3>
			<div class="about-agileinfo w3layouts">
				<div class="col-md-8 about-wthree-grids grid-top">
					<h4>About Go-Grocer </h4>
					<p class="top">The Go-Grocer project incorporates a tiered discount system based on ration card color, ensuring equitable access to essential food supplies for all beneficiaries. Holders of yellow ration cards are entitled to a generous 30% discount applied at the end of their bill, providing substantial relief to those in need. Similarly, individuals with orange ration cards receive a 15% discount, while those with white ration cards enjoy a 5% discount on their bill. This tiered approach reflects our commitment to inclusivity and social welfare, acknowledging the diverse needs of our beneficiaries and striving to support them accordingly. Through these targeted discounts, Go-Grocer aims to promote economic stability and improve the well-being of communities across the region.</p>		
					<div class="about-w3agilerow">
						<div class="col-md-4 about-w3imgs">
							<img src="images/p3.jpg" alt="" class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="images/p4.jpg" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="col-md-4 about-w3imgs">
							<img src="images/p3.jpg" alt=""  class="img-responsive zoom-img"/>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 about-wthree-grids">
					<div class="offic-time">
						<div class="time-top">
							<h4>CONTACT :</h4>
						</div>
						<div class="time-bottom">
							<h5>Katraj.</h5>
							<h5>info@supermarket.com</h5>
							<h5>+91 8830893445</h5>
						</div>
					</div>
					<div class="testi">
						<h3 class="w3_agile_header">Testimonial</h3>
						
						<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 5
							  $("#slider5").responsiveSlides({
								auto: true,
								pager: false,
								nav: true,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						  </script>
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider5">
								<li>
									<div class="testi-slider">
										<h4>" Service excellent.</h4>
										<p>Service excellent 👍.. Delivery Boys are well mannered..Fruits, veggies,meat all are fresh..Thank You!</p>
										<div class="testi-subscript">
											<p><a href="#">Neha D,</a>Pune</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
								<li>
									<div class="testi-slider">
										<h4>" Appreciated.</h4>
										<p>The vegetables and fruits delivered are of good quality and The service provider, delivery boys was polite and helpful.</p>
										<div class="testi-subscript">
											<p><a href="#">Sneha A,</a>Titave</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
								<li>
									<div class="testi-slider">
										<h4>" Wonderful.</h4>
										<p>I have personally ordered from here. So far I have never been disappointed by the quality of the items delivered. Items including non-vegetarian food, fruits, vegetables . Fish ordered always fresh and clean. Sometimes although the delivery …</p>
										<div class="testi-subscript">
											<p><a href="#">Arpita s,</a>Bazar peth</p>
											<span class="w3-agilesub"> </span>
										</div>	
									</div>
								</li>
							</ul>	
						</div>
					</div>
				</div>	
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>


	<div class="about-slid agileits-w3layouts"> 
		<div class="container">
			<div class="about-slid-info"> 
				<h2>Why should I use Go-Grocer</h2>
				<p>Go-Grocer offers a seamless solution for digitalizing the traditional ration distribution system, ensuring efficient management and distribution of essential food supplies. By leveraging technology, E-RASHAN streamlines the process, allowing beneficiaries to access their rations conveniently through digital platforms. With features such as real-time tracking and authentication, it enhances transparency and reduces the scope for corruption. Additionally, E-RASHAN facilitates better inventory management, enabling authorities to optimize resource allocation and ensure timely delivery of rations to those in need. Overall, GO-GROCER  represents a significant advancement in welfare distribution systems, promoting inclusivity, transparency, and efficiency in delivering essential services to communities...</p>
			</div>
		</div>
	</div>
	
	
<?php
include("footer.php");
?>