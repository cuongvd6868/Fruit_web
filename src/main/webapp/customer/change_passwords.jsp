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
        <p class="register">Change Password</p>
    </div>
    <div class="red"><%=error%></div>
    <div class="form_contact">
        <img src="<%=url %>/assest/index_css/img/header/photo-1618897996318-5a901fa6ca71.avif" alt="" class="img_contact">
        <div class="form_submit">
            <form action="<%=url%>/change_pass" method="post" class="form_submit">

              <div class="form_row">
                <div class="form_group">
                    <label for="password_current" class="form_lable">Current Password</label>
                    <input type="password" id="password_current" class="form_input" placeholder="Enter Password" name="password_current" required onkeyup="check_pass()">
                </div>
              </div>

				<p id="msg" class="red"></p>
              <div class="form_row">
                <div class="form_group">
                    <label for="password_new" class="form_lable">Password</label>
                    <input type="password" id="password_new" class="form_input" placeholder="Enter Password" name="password" required onkeyup="check_pass()">
                </div>
              </div>
              
              <div class="form_row">
                <div class="form_group">
                    <label for="password_re" class="form_lable">Password Re-Enter</label>
                    <input type="password" id="password_re" class="form_input" placeholder="Enter Password Again" name="password_re" required onkeyup="check_pass()">
                </div>
              </div>
             
            <div class="radio_btn">
                <input type="radio" id="remember" value="email news">
                <label for="remember" class="remember">Remember Me</label>
            </div>
            

            <div class="submit">
                <input type="submit" value="Change" class="submit_btn">
            </div>
            </form>
        </div>
    </div>    
</body>

		<script type="text/javascript">
		function check_pass() {
			password = document.getElementById("password").value;
			password_re = document.getElementById("password_re").value;
			if(password != password_re){
				document.getElementById("msg").innerHTML="*Password Do Not Match!";
				return false
			}else{
				document.getElementById("msg").innerHTML="";
				return true;
			}
		}
		
		</script>

</html>




