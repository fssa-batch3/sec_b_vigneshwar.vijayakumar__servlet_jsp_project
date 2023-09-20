<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title> Edit | Profile | Global Fun City </title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage css/profile.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage_css/footer_gfc.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>

        <div class="header">
            <a href="/globalfuncityweb/index">
                <img src="<%=request.getContextPath()%>/assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
            </a>
            <nav class="navbar">
                <ul>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/index">
                            <b>HOME</b>
                        </a>
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/about">
                            <b>ABOUT</b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/events">
                            <b>EVENTS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/offers">
                            <b>OFFERS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/ticketprices">
                            <b>TICKET  PRICES </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="../../pages/shop/shop.html">
                            <b>SHOP</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/attractions">
                            <b>ATTRACTIONS </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/contact">
                            <b>CONTACT </b> 
                        </a> 
                    </li>
         
                </ul>
    
            </nav>
            <div>
				<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
            </div>
        </div>
        
        <div class="total-homepages-div"> 
            <!-- Total Homepage div -->
        <div class="homepages">
            <a href="/globalfuncityweb/index">Home <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
        </div> &nbsp;
        <div class="homepages">
            <a href="/globalfuncityweb/user_dashboard">Account <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
        </div> &nbsp;
        <div class="homepages">
            <a href="/globalfuncityweb/user_dashboard/profile">Account Settings <i class="fa-light fa-greater-than" style="color: #655b5b;"></i> </a>
        </div> &nbsp;
        <div class="homepages">
            <a href="/globalfuncityweb/user_dashboard/edit">Edit Profile</a>
        </div>

        </div>
        <!-- Completing Div -->




<div class="all-content">

<%User user =(User) request.getAttribute("user"); %>

            <div class="account-information">

                <div class="account">
                    <h1>Your Account</h1>
                </div>   

			<form action="update?userId=<%=user.getUserId() %>" method="post">

				<div class= "profile">
				
						<label class ="input-field">Email (You couldn't able to Edit Email)</label>
						<br>
						<input name="email" class="input-field" value="<%=user.getEmail() %>" disabled>
						
				</div>

                <div class="profile">

                        <label class="input-field">Mobile Phone </label>
                        <br>
                        <input name="mobile_number" class="input-field" type="tel" value="<%=user.getPhoneNumber() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Password</label>
                        <br>
                        <input name="password" class="input-field" type="password" value = <%=user.getPassword() %> >

                </div>

                <div class="personal-info">
                    <h3>Personal Information</h3>
                </div>

                <div class="profile">

                        <label class="input-field">First Name</label>
                        <br>
                        <input name="first_name" class="input-field" type="text" value="<%=user.getFirstName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Middle Name (optional)</label>
                        <br>
                        <input name="middle_name" class="input-field" type="text" value="<%=user.getMiddleName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Last Name</label>
                        <br>
                        <input name="last_name" class="input-field" type="text" value="<%=user.getLastName() %>" >

                </div>


                <br>
                <div class="btn-edit">
                    <button type="submit" class="btn-1" id="edit-button">Update Information</button> 
                </div>

				</form>
</body>
</html>