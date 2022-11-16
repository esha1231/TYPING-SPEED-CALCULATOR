<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import=" java.util.Random" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page import="java.time.LocalTime" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Typing Speed Calculator</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<div class="navbar">
<nav>
<ul>
<li><a href="">Home</a></li>
<li><a href="">Product</a></li>
<li><a href="">Marketplace</a></li>
<li><a href="">Support</a></li>
</ul>
</nav>
</div>
<div class="content">
<a href=""class="btn">TYPING SPEED TEST</a>
<br>
<h1>Test your Typing Speed!!!!</h1>
<br>
<p>Start typing in</p>
<br>


<div class="social-links">
<a href="">FACEBOOK </a>
<a href="">INSTAGRAM </a>
<a href="">YOUTUBE </a>
</div>

</div>


<%
// out.println("hellowoels");
String words[] = {"bat","ball","mobiles","enchanted","food","fox","red","dog","jump","zebra","lays"};

out.println("3");//to let the user know when to start typing
TimeUnit.SECONDS.sleep(1);// to get one second interval between the print statements
out.println("2");
TimeUnit.SECONDS.sleep(1);
out.println("1");
TimeUnit.SECONDS.sleep(1);
Random ran=new Random();//random number generator to start getting random elements
for(int i=0;i<11;i++) {// we are using for loop to get a bunch of random numbers
	out.print(words[ran.nextInt(10)]+ "  "); /*will generate a random number 
// 	between 0 and 10 because 10 is our maximum index */ 	
}
out.println();
double t1 = LocalTime.now().toNanoOfDay();//to get nano seconds of the day at present time



session.setAttribute("time1",t1);  // method to save an object in session by assigning a unique string to objects


%>
<form action="calctime.jsp">
<br/>
Type your answer<input type="text" name="answer">
<input type="submit">
</form>
<br>
<div class="arrow-icons">
<img src="Urban Fashion Img/back-arrow.png">
<img src="Urban Fashion Img/next-arrow.png">
</div>
<br>
<div class="feature-img">
<img src="Urban Fashion Img/timer.png">
</div>

</div>
</body>
</html>