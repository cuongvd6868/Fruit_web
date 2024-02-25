<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>html-project02</title>
 <!-- font -->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Sora:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
    
 <%
String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
<link rel="stylesheet" href="<%=url%>/assest/register_css/style.css">

<%
		String error = request.getAttribute("error")+"";
		error = (error.equals("null"))?"":error;
%>

<style type="text/css">
.red{
color: red;
}

#error{
text-align: center;
}
</style>
</head>
<body>
    <div class="title">
        <p class="register">Register</p>
    </div>
    
    <div id="error" class="red"><%=error%></div>
    <div class="form_contact">
        <img src="<%=url %>/assest/index_css/img/header/photo-1618897996318-5a901fa6ca71.avif" alt="" class="img_contact">
        <div class="form_submit">
            <form action="<%=url %>/register"  class="form_submit">

               <div class="form_row">
                <div class="form_group">
                    <label for="user_name" class="form_lable">User Name</label>
                    <input type="text" id="user_name" class="form_input" placeholder="Enter User Name" name="user_name" required>
                </div>
                <div class="form_group">
                    <label for="full_name" class="form_lable">Full Name</label>
                    <input type="text" id="full_name" class="form_input" placeholder="Enter Full Name" name="full_name">
                </div>
               </div>

				<span id="msg" class="red"></span>
              <div class="form_row">
                <div class="form_group">
                    <label for="password" class="form_lable">Password </label>
                    <input type="password" id="password" class="form_input" placeholder="Enter Password" name="password" required onkeyup="checkPass()">
                </div>
                <div class="form_group">
                    <label for="password_Re" class="form_lable">Password Re-Enter</label>
                    <input type="password" id="password_Re" class="form_input" placeholder="Re-Enter Password" name="password_re"  required onkeyup="checkPass()">
                </div>
              </div>

              <div class="form_row">
                <div class="form_group">
                    <label for="address" class="form_lable">Address</label>
                    <input type="text" id="address" class="form_input" placeholder="Enter Address" name="address">
                </div>
                <div class="form_group">
                    <label for="phone" class="form_lable">Phone</label>
                    <input type="tel" id="phone" class="form_input" placeholder="Enter Phone Number" name="phone_number">
                </div>
              </div>

              <div class="form_row">
                <div class="form_group">
                    <label for="email" class="form_lable">Email</label>
                    <input type="email" id="email" class="form_input" placeholder="Enter Email" name="email">
                </div>
                <div class="form_group">
                    <label for="birthday" class="form_lable">Birthday</label>
                    <input type="date" id="birthday" class="form_input" placeholder="Enter Your Birthday" name="birthday">
                </div>
              </div>
              
              
              <div class="sex">
            
                <div class="sex_choice">
                    <label for="" class="radio_tit">Sex</label>
                    <div class="radio_btn">
                        <input type="radio" id="boy" name="sex" value="boy">
                        <label for="boy">Boy</label>
                    </div>

                    <div class="radio_btn">
                        <input type="radio" id="girl" name="sex" value="girl">
                        <label for="girl">Girl</label>
                    </div>

                    <div class="radio_btn">
                        <input type="radio" id="other" name="sex" value="other">
                        <label for="other">Other</label>
                    </div>
                </div>
            </div>

            <div class="radio_btn">
                <input type="radio" id="emai_news" name="emai_news" value="email_news">
                <label for="emai_news" class="email_news">Email News</label>
            </div>

            <div class="submit">
                <input type="submit" value="Register" class="submit_btn">
            </div>
            </form>
        </div>

    </div>  
</body>

<script type="text/javascript">
			function checkPass() {
				password = document.getElementById("password").value;
				password_Re = document.getElementById("password_Re").value;
				if(password != password_Re){
					document.getElementById("msg").innerHTML = "*Passwords do not match!";
					return false;
				}else{
					document.getElementById("msg").innerHTML = "";
					return true;
				}
			}
</script>

</html>








