<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<div class="social-links">
<a href="">FACEBOOK </a>
<a href="">INSTAGRAM </a>
<a href="">YOUTUBE </a>
</div>
</div>

<br>
<% 

double t1 = (Double)session.getAttribute("time1");/*the object stored by setAttribute method is fetched from
session using getAttribute*/
double t2 = LocalTime.now().toNanoOfDay();/*to get nano seconds of the day at present time after user -->
  hits enter*/

  
 double escapeTime=t2-t1;//elapsed time
 double seconds= escapeTime/1000000000.0;//to convert nanoseconds to seconds
 
 String userWords = (String)request.getParameter("answer");
 int nChars = userWords.length();// to get the number of characters the user entered 
 //Words per Minute formula is (x characters/5)/1min=y WPM
 int wpm=(int)((((double)nChars/5)/seconds)*60);/*5 is the average length of the word.
  Typecasting to double to get the accurate answer of the division and then typecasting again to integer to match the wpm.
  Multiplying with 60 to get the time in mins*/
 
 out.println("words per minute is " + wpm );
 
%>
<br>
<div class="feature-img">
<img src="Urban Fashion Img/timer.png">
</div>
</div>
</body>
</html>