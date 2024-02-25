<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;1,400&display=swap" rel="stylesheet">  
<%
	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
	<link rel="stylesheet" href="<%=url%>/assest/login_css/style.css">
<%
	String error = request.getAttribute("error")+"";
	error = (error.equals("null"))?"":error;
%>

<style type="text/css">
.red{
color: red;
text-align: center;
}
</style>
</head>
<body>
    <div class="title">
        <p class="register">Login</p>
    </div>
    <div class="red"><%=error%></div>
    <div class="form_contact">
        <img src="<%=url %>/assest/index_css/img/header/photo-1618897996318-5a901fa6ca71.avif" alt="" class="img_contact">
        <div class="form_submit">
            <form action="<%=url%>/login" method="post" class="form_submit">

               <div class="form_row">
                <div class="form_group">
                    <label for="user_name" class="form_lable">User Name</label>
                    <input type="text" id="user_name" class="form_input" placeholder="Enter User Name" name="user_name" required>
                </div>
               </div>

              <div class="form_row">
                <div class="form_group">
                    <label for="password" class="form_lable">Password</label>
                    <input type="password" id="password" class="form_input" placeholder="Enter Password" name="password" required>
                </div>
              </div>

             

            <div class="radio_btn">
                <input type="radio" id="remember" value="email news">
                <label for="remember" class="remember">Remember Me</label>
            </div>
            
            <div class="reg_here"><a href="./register.jsp" >REGISTER HERE</a></div>

            <div class="submit">
                <input type="submit" value="Login" class="submit_btn">
            </div>
            </form>
        </div>

    </div>

    
</body>
</html>