<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>