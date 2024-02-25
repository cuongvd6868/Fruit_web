<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fruit</title>

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Sora:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="./assest/index_css/reset.css">
<link rel="stylesheet" href="./assest/index_css/style.css">

<%
String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>

<style type="text/css">
.hidden {
	
}

.visible {
	display: block;
}

#toggleButton{
background-color: #FF3CAC;
background-image: linear-gradient(225deg, #FF3CAC 0%, #784BA0 50%, #2B86C5 100%);
padding: 5px 10px;
outline: none;
border: none;
border-radius: 4px;
margin-left: 20px;
}
#toggleButton:hover{
opacity: 0.95;
}

#toggleButton2{
background-color: #21D4FD;
background-image: linear-gradient(19deg, #21D4FD 0%, #B721FF 100%);
padding: 5px 10px;
outline: none;
border: none;
border-radius: 4px;
margin-left: 7px;
}
#toggleButton2:hover{
opacity: 0.95;
}

#toggleButton2 a{
color: #FFF;
}
</style>
</head>
<body>
	<main>
		<div class="header-fixed">
			<!-- navbar -->
			<div class="navbar">
				<img src="./assest/index_css/img/logo.svg" alt="logo">
				<div class="navbar_navigation">
					<ul>
						<li><a href="./customer/change_passwords.jsp">Passwords</a></li>
						<li><a href="">About</a></li>
						<li><a href="">Blog</a></li>
						<li><a href="">Contact</a></li>
					</ul>

					<%
					Object obj = session.getAttribute("customer");
					Customer customer = null;
					if (obj != null) {
						customer = (Customer) obj;
					}
					if (customer == null) {
					%>
					<div class="sign_in">
						<a href="./customer/login.jsp" class="btn">Sign In</a>
					</div>
					<%
					} else {
					%>
					<button id="toggleButton" class="btn"><%=customer.getUserName()%></button>
					<div id="buttonContainer" class="hidden">
					<button id="toggleButton2" class="btn"><a href="logout">Log-out</a></button>
					</div>
					<%
					}
					%>
				</div>
			</div>
			<!-- navbar -->
		</div>

		<header class="header">
			<div class="content">


				<!-- hero -->
				<div class="hero">
					<div class="intro">
						<p class="title">Best fruit in the world</p>
						<p class="sub_title">A brilliant, modular agency template for
							startup’s build yours toady.</p>

						<div class="call">
							<a href="" class="btn">Call Now</a> <span class="phone_number">+84
								999999999</span>
						</div>
					</div>
					<div class="thumb">
						<img
							src="<%=url%>/assest/index_css/img/header/photo-1457296898342-cdd24585d095.avif"
							alt="" class="img_thumb"> <img
							src="<%=url%>/assest/index_css/img/header/photo-1618897996318-5a901fa6ca71.avif"
							alt="" class="img_thumb"> <img
							src="<%=url%>/assest/index_css/img/header/photo-1611080626919-7cf5a9dbab5b.avif"
							alt="" class="img_thumb">
					</div>
				</div>
			</div>
		</header>

		<!-- features -->
		<div class="features">
			<div class="info">
				<div class="desc">
					<div class="h2 title">Our popular fruit</div>
					<p class="sub-title">Buy the best fruit, tasty and good for
						your health.</p>
				</div>
				<img src="./assest/index_css/img/features/Icons.svg" alt="">
			</div>
			<div class="list">
				<div class="item">
					<img
						src="./assest/index_css/img/features/photo-1587815073078-f636169821e3.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Strawberry</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn book">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="item">
					<img
						src="./assest/index_css/img/features/photo-1589217157232-464b505b197f.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Apple</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="item">
					<img
						src="./assest/index_css/img/features/photo-1610523377846-eba487f8f574.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Cherry</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn">Buy Now</a>
						</div>
					</div>
				</div>
			</div>

			<div class="list2">
				<div class="item">
					<img
						src="./assest/index_css/img/header/photo-1457296898342-cdd24585d095.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Blueberry</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn book">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="item">
					<img
						src="./assest/index_css/img/header/photo-1611080626919-7cf5a9dbab5b.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Orange</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn">Buy Now</a>
						</div>
					</div>
				</div>

				<div class="item">
					<img
						src="./assest/index_css/img/header/photo-1618897996318-5a901fa6ca71.avif"
						alt="" class="thumb">
					<div class="body">
						<div class="course-name">
							<h3 class="title">Kiwi</h3>
							<div class="div">
								<img src="./assest/index_css/img/features/starts.svg"
									alt="starts">
							</div>
						</div>
						<p class="sub-title">Buy the best fruit, tasty and good for
							your health.</p>
						<div class="booking">
							<span>$120.75</span> <a href="#!" class="btn">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- report -->
		<div class="report">
			<div class="thumb">
				<img
					src="./assest/index_css/img/report/photo-1554774853-b415df9eeb92.avif"
					alt="" class="img_thumb"> <img
					src="./assest/index_css/img/report/photo-1556742502-ec7c0e9f34b1.avif"
					alt="" class="img_thumb">
			</div>
			<div class="detail">
				<div class="about">
					<img src="./assest/index_css/img/report/Rectangle 6047.svg" alt="">
					<span class="ab">About Us</span>
				</div>
				<h2 class="title">The most important thing is customer
					satisfaction</h2>
				<p class="sub_title">At the start of every project, we cusomizea
					detailed project plan together with you set exectationns ensure
					alighment and define key milestones and deiverbles.</p>
				<div class="percent">
					<span class="amount">48%</span>
					<p class="sub_amount">Are you strive for two things in design
						simplicity and clarity. Great design is born of those two things</p>
				</div>
				<img src="./assest/index_css/img/report/line -2.svg" alt=""
					class="rec">
				<div class="percent">
					<span class="amount">26%</span>
					<p class="sub_amount">Are you strive for two things in design
						simplicity and clarity. Great design is born of those two things</p>
				</div>
				<img src="./assest/index_css/img/report/line -2.svg" alt=""
					class="rec">
			</div>
		</div>

		<!-- footer -->
		<div class="footer">
			<div class="content">
				<div class="footer_column">
					<div class="logo">
						<img src="./assest/index_css/img/logo.svg" alt="">
					</div>
					<p class="sub-logo">Exceptional dental care for all ages. Your
						great smile begins with a great dentist.</p>
				</div>

				<div class="footer_column">
					<h3 class="h3_top">Support</h3>
					<ul>
						<li>Help center</li>
						<li>Account information</li>
						<li>About</li>
						<li>Contact us</li>
					</ul>
				</div>

				<div class="footer_column">
					<h3 class="h3_top">Support</h3>
					<ul>
						<li>Help center</li>
						<li>Account information</li>
					</ul>
					<h3 class="h3_bottom">Support</h3>
					<ul>
						<li>Help center</li>
					</ul>
				</div>

				<div class="footer_column">
					<h3 class="h3_top">Stay In Touch</h3>
					<img src="./assets/index_css/img/footer/Social.svg" alt=""
						class="footer_social">
					<h3 class="h3_bottom">Subscribe</h3>
					<p class="desc">Subscribe our newsletter for the latest update
						of Dental care</p>
					<div class="footer_subcribe">
						<form action="">
							<input type="email" placeholder="Enter your email..."
								class="email_input">
							<button class="btn footer_submit" type="submit">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
			<img src="./assets/index_css/img/footer/Rectangle 120.svg" alt=""
				class="rectang">
		</div>
	</main>
</body>

<script type="text/javascript">
	document.getElementById("toggleButton").addEventListener("click",
			function() {
				var container = document.getElementById("buttonContainer");
				container.classList.toggle("hidden");
				container.classList.toggle("visible");
			});
</script>
</html>