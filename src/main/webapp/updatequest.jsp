<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Update Question</title>
	<link rel="stylesheet" href="./css/Nav&Foot.css">
    <link rel="stylesheet" href="./css/table.css">
	<script src="https://kit.fontawesome.com/7ff706c60f.js" crossorigin="anonymous"></script>
	
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


	<%
		String qid = request.getParameter("qid");
		String Uniquecode = request.getParameter("unicode");
		String Useremail = request.getParameter("mail");
		String Description = request.getParameter("des");
		String Question = request.getParameter("que");
	
	%>	


	
    <div class="okkoma">
    <form action="updat" method="post">
        <table class="tablecon">
            <tr><th colspan="2">Update Your Details</th></tr>
            <tr>
                <td>Question ID</td>
                <td><input type="text" name="Qid" value="<%= qid %>" readonly></td>
            </tr>
            <tr>
                <td>Unique Code for your Question</td>
                <td><input type="text" name="Ucode" value="<%= Uniquecode %>" ></td>
            </tr>
            <tr>
            <td>Your Email</td>
            <td><input type="text" name="Useremail" value="<%= Useremail %>" ></td>
        </tr>
        <tr>
            <td>Field of the Question</td>
            <td><input type="text" name="Description" value="<%= Description %>" ></td>
        </tr>
        <tr>
            <td>Your Question</td>
            <td><textarea name="Question" rows="6" cols="50" ><%= Question%></textarea></td>
        </tr>
            
        </table>
        <br>
        <input class="bt3" type="submit" name="submit" value="Update My Question">
        </form>
        </div>
        
        <hr class="hr1"><br>
        
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