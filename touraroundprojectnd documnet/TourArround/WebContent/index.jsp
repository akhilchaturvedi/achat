<%@page isErrorPage="false" errorPage="Error.jsp"%>
<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
	String member=session.getAttribute("Member")!=null?"Welcome "+session.getAttribute("Member").toString():"We Share a Vision";
	String client=session.getAttribute("Member")!=null?"<a href='"+path+"/Pages/Signout.jsp' class=caption>Sign Out From Here</a>":"<a href='"+path+"/Pages/About us.jsp' class=caption>Visit On Your Requirement</a>";
%>
<LINK HREF="<%=path+"/Styles/Travel.css"%>" REL="STYLESHEET">
<BODY LEFTMARGIN=0 TOPMARGIN=0>
<TABLE WIDTH=900 align=center cellspacing=0 cellpadding=0>
<TR>
<TD valign=top><img src="<%=path+"/Images/B.png"%>" alt="" width="900" height="71"></TD>
</TR>
</TABLE>
<SCRIPT SRC="<%=path+"/Scripts/Menubar.js"%>"></SCRIPT>
<TABLE WIDTH=900 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">

<TR bgcolor=#00cc66><TH valign=top width=150>Quick Links</TH><TH width=400><marquee direction=right><%=member%></marquee></TH><TH width=230><%=client%>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<%=path+"/index.jsp"%>" class=caption>Home</a></TH></TR></TABLE>
<TABLE width=900 align=center cellspacing=0 cellpadding=0><TR><TD >
<SCRIPT>
quickLinks1("<%=path+"/Pages/"%>","<%=path+"/Images/Anniversary1.gif"%>","<%=path+"/Images/trivendrum.gif"%>");
</SCRIPT></TD><TD valign=top>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">

<TR><TD class=padd style='text-align:justify;color:navy;font:100 11px tahoma'><BR><BR>
			
			<!-- code -->
			
			
										<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>

  
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
</head>
<!-- Container (Services Section) -->
<div class="container-fluid text-center">
  <h2>SERVICES</h2>
  <p>What we offer</p>
  <br>
  <div class="row">
    <div class="col-sm-6">
      <span class="glyphicon glyphicon glyphicon-road logo-small"></span>
    <a href="./Pages/Guide/DistanceCalculator.jsp"><h5>DISTANCE CALCULATOR</h5></a>
      <p>Here you can calculate distance between two cities and also you can check the exact route map! Let's see how this works.
       All you have to do is enter start and end destinations and this path finder will give complete information. So finding 
       distance has become easier.</p>
    </div>
   
    <div class="row">
    <div class="col-sm-6">
      <span class="glyphicon glyphicon-usd logo-small"></span>
    <a href="./Pages/Guide/CurrencyConversion.jsp"><h5>CURRENCY CONVERSION</h5></a>
      <p>A currency converter is a calculator that converts the value or quantity of one currency into the relative values or quantities of other currencies...</p>
     
    </div>
    
    
   
  </div>
  <div class="row">
    <div class="col-sm-6">
      <span class=" glyphicon glyphicon-leaf logo-small"></span>
     <a href="./Pages/Insurance.jsp"><h5>INSURANCE</h5></a>
      <p>Insurance is a contract, represented by a policy, in which an individual or entity receives financial protection or reimbursement against losses from an insurance company. ... There are a multitude of different types of insurance policies available, and virtually any individuals or ...</p>
    </div>
   
   <div class="row">
    <div class="col-sm-6">
    <span class="glyphicon glyphicon-print logo-small"></span>
      
     <a href="./printInvoice.jsp"><h5>PRINT INVOICE</h5></a>
      <p>Welcome to Tour Around. India is an abode of diversity that depicts in its landscape, weather, religion, languages, festivals, tradition, culture, cuisines, ...</p>
    </div>
   
  </div>
  
</div>

</body>
</html>
										
			
			<!-- code -->
			
			

<BR>
</TD></TR></TABLE>
<%-- <SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.gif"%>")</SCRIPT> --%>


