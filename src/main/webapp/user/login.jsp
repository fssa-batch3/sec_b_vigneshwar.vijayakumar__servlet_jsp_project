<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
			<meta charset="ISO-8859-1">
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

            <title> Global Fun City - Log In</title>
            <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/signup for booking/signup.css">

            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<style>

.image-signup{
    display: flex;
    align-items: center;
    position: relative;
    top: 90px;
}
.sign-up form{
    width: 100px;
    
}
.sign-up{
    background-color:  rgb(249, 249, 249);
    width: 300px;
    border: 2px solid rgb(231, 224, 224);
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    padding: 50px;
    border-radius: 10px;
}
.sign-up input{
    padding: 10px;
    width: 276px;
    border: 2px solid #eee;
    border-radius: 3px;
    font-family: 'poppins', sans-serif;
}
.sign-up button{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    width: 300px;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}
.sign-up h3{
    font-family: 'open sans', sans-serif;
    text-align: center;
    text-decoration: none;
}
.sign-up h4{
    font-family: 'open sans', sans-serif;
    color: black;
}
.sign-up h4 a{
    text-decoration: none;
}

</style>

</head>
<body>
              <div class="image-signup">
        
              <div class="image">
                <img src="https://iili.io/HyW3Cbt.gif" alt="gif">
            </div>    

            <div class="sign-up">
                <img src="https://iili.io/Hy1uZru.png" width="250" alt="global-account">
                <h3>Welcome Back!</h3>
            <form action="login" method="post">
                    <input type="email" name="email" placeholder="Email Address" id= "email" autofocus required> &nbsp;
                    <input type="password" id="password" name="password" placeholder="Password"  title="Please give one uppercase, one lowercase, one special character and one number miniumum is 8 character maximum 10 characters" maxlength="10" minlength="8" required>
    
    &nbsp;
                    <a href="" style="display:none">
                        <h4>Forgot Password?</h4> 
                    </a>
                    
                   <button type="submit" id="submit_btn">Sign In</button>
                    
            </form>
            
                <h4>New to Global Account?</h4>
                
                <a href="/globalfuncityweb/register">
                    <button >Create an Account</button>
                </a>
                
            </div>
        </div>
        
        <div id="alertMessage" style="display: none;"></div>
        
        <div class="rights" style="margin: 70px 0px 0px 0px;
    color: black;
    text-align: center; font-family: 'open sans', sans-serif;">
        � 2023, Global Fun City, Inc. or its affiliates. All rights reserved.
        </div>
        

<script>
    // Get the alert message from the server-side
    const alertMessage = "<%= request.getAttribute("alertMessage") %>";

    // Display the alert based on the message
    if (alertMessage) {
        const alertDiv = document.getElementById("alertMessage");
        alertDiv.textContent = alertMessage;
        alertDiv.style.display = "block";

        // Check if the message contains "Login Successful"
        if (alertMessage.includes("Login Successful")) {
            alert("Login Successful");
            window.location.href = "<%= request.getContextPath() %>/index";
        } else {
            //alert("Incorrect Email or Password");
        }
    }
</script>

    
</body>
</html>