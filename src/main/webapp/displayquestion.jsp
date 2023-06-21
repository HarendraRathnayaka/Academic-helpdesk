<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Display Question</title>
	<link rel="stylesheet" href="./css/Nav&Foot.css">
	<link rel="stylesheet" href="./css/table.css">
	<script src="https://kit.fontawesome.com/7ff706c60f.js" crossorigin="anonymous"></script>
	
</head>
<body>

	</style>
</head>
<body>

	
	<div class="nav1">
		<img class="logo" src="./images/logo.jpg">


		<div class="searchbox">
			<input class="searchtxt" type="text" name="" placeholder="Search courses here.">
			<button class="searchbtn"><a class="searchbtn" href="#"><i class="fa-solid fa-magnifying-glass"></i></a></button>
		</div>
		<ul>
			<li><button class="bt1"><a href="">Login</a></button></li>
			<li><button class="bt1"><a href="">Sign Up</a></button></li>
			<li><button class="bt2"><a href=""><img height="40px" width="40px" src="./images/user.png"></a></button></li>
		
		</ul>
		
	</div>
	<hr class="hr1">

	<div class="nav">
	
		<img class="logo" src="./images/logo2.png">

		<ul>
			<li class="active"><a href="#"><i class="fas fa-house"></i>Home</li>
			<li><a href="#"><i class="fas fa-people-group"></i>Staff</li>
			<li><a href="#"><i class="fas fa-list"></i>Services</li>
			<li><i class="fas fa-bell-concierge"></i>Get Help<i class="fas fa-angle-down"></i>
				<div class="nav2">
					<ul>
						<li><a href="#">Ask a Question</li>
						<li><a href="#">View Answers</li>
						<li><a href="#">View My Question</li>
					</ul>
				</div>
			</li>
			<li><i class="fas fa-circle-info"></i>About Us<i class="fas fa-angle-down"></i>
				<div class="nav2">
					<ul>
						<li><a href="#">Write a Review</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">About Us</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>


    <div class="okkoma">
    <table class="tablecon">
        <c:forEach var="qst" items="${questdetails}">
        
        <c:set var="qid" value="${qst.getQid()}"/>
        <c:set var="ucode" value="${qst.getUniquecode()}"/>
        <c:set var="email" value="${qst.getUseremail()}"/>
        <c:set var="desc" value="${qst.getDescription()}"/>
        <c:set var="quest" value="${qst.getQuestion()}"/>
    
        <tr><th colspan="2">Your Question Details</th></tr>
        <tr>
            <td>Question ID</td>
            <td>${qst.getQid()}</td>
        </tr>
        <tr>
            <td>Unique Code</td>
            <td>${qst.getUniquecode()}</td>
        </tr>
        <tr>
            <td>Your Email</td>
            <td>${qst.getUseremail()}</td>
        </tr>
        <tr>
            <td>Field of Question</td>
            <td>${qst.getDescription()}</td>
        </tr>
        <tr>
            <td>Your Question</td>
            <td>${qst.getQuestion()}</td>
        </tr>
       
    
        </c:forEach>
        </table>
    </div>
	
    <div class="okkoma">

        <c:url value="updatequest.jsp" var="queupdate" >
	
	    <c:param name="qid" value="${qid}"/>
	    <c:param name="unicode" value="${ucode}"/>
	    <c:param name="mail" value="${email}"/>
	    <c:param name="des" value="${desc}"/>
	    <c:param name="que" value="${quest}"/>
	
	    </c:url>

        <a href="${queupdate}">
            <input class="bt3" type="button" name="update" value="Update My Question">
            </a><br>
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <c:url value="deletequestion.jsp" var="quedelete" >
	
        <c:param name="qid" value="${qid}"/>
        <c:param name="unicode" value="${ucode}"/>
        <c:param name="mail" value="${email}"/>
        <c:param name="des" value="${desc}"/>
        <c:param name="que" value="${quest}"/>
            
        </c:url>

        <a href="${quedelete}">
            <input class="bt3" type="button" name="delete" value="Delete My Question">
            </a>
    </div>
    
	<hr class="hr1"><br><br><br><br><br>
	<div class="foot">
			<p class="hf">FOLLOW &nbsp; US  &nbsp; ON</p>
			
			<div class="socials">
				<a href="https://www.instagram.com/?hl=en"><i class="fa-brands fa-instagram"></i></a>
				<a href="https://www.facebook.com/"><i class="fa-brands fa-facebook-f"></i></a>
				<a href="https://twitter.com/?lang=en"><i class="fa-brands fa-twitter"></i></a>
				<a href="https://lk.linkedin.com/"><i class="fa-brands fa-linkedin-in"></i></a>
			</div>
				
			
			
	</div>
	
		


</body>
</html>