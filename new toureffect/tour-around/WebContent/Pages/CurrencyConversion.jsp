<%@page isErrorPage="false" errorPage="Error.jsp"%>
<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
	String member=session.getAttribute("Member")!=null?"Welcome "+session.getAttribute("Member").toString():"We Share a Vision";
	String client=session.getAttribute("Member")!=null?"<a href='"+path+"/Pages/Signout.jsp' class=caption>Sign Out From Here</a>":"<a href='"+path+"/Pages/About us.jsp' class=caption>Visit On Your Requirement</a>";
%>

<!DOCTYPE html>
<html>
<head>
<SCRIPT>
	function doClear()
		{		 
		  	document.mainform.amount.value = "";
		}
   function doQuit()
		{		 
		  document.mainform.action = "home"  ; 
		  document.mainform.submit();
		}
  function doSubmit()
		{
			var strErrMsg;			
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{							
				document.mainform.action = "<%=path+"/currencyconversion"%>"; 				
				document.mainform.submit();
			}
			else
			{alert(strErrMsg);}
			
		}
		function doValidations()
		{
		     
			var ddIndex;
			var strTemp;
			var strFld;
			var frmDoc;
			var strErrMsg;
			strErrMsg = "";
			frmDoc = document.mainform;			
			strFld = frmDoc.amount
			if (strFld.value == "") 			         			
			strErrMsg = strErrMsg + "Please enter the amount\n";
			return strErrMsg;
		}
		
		 function doQuit()
			{		 
			  document.mainform.action = "home"  ; 
			  document.mainform.submit();
			}
	function doSubmit()
			{		   
				var strErrMsg;
				strErrMsg = "";			
				strErrMsg = doValidations();
				if (strErrMsg == "" )
				{
				    DoCalc();		
					document.mainform.action = ""  ;    				
					document.mainform.submit();
				}
				else
				{alert(strErrMsg);}
			}
			function doValidations()
			{
				var ddIndex;
				var strTemp;
				var strFld;
				var frmDoc;
				var strErrMsg;

				strErrMsg = "";
				frmDoc = document.mainform;			
				strFld = frmDoc.from
				if (strFld.value == "") strErrMsg = strErrMsg + "Please enter Source city\n";			
				strFld = frmDoc.to
				if (strFld.value == "") strErrMsg = strErrMsg + "Please enter Destination city\n";	
				return strErrMsg;
			}
			
			function DoCalc() 
			{
	        var frmdoc; 
			var strFld;
			var str;
			var Orig=new Array();
	    	var Dest=new Array();
	       	var nm=0;
	        var tc=0;
			var d;
			var message;	
			frmDoc = document.mainform;			
			strFld = frmDoc.from.value
			Orig=strFld.split("/");
			strFld = frmDoc.to.value
			Dest=strFld.split("/");
			d=Math.acos(Math.sin(Orig[2])
			*Math.sin(Dest[2])
			+Math.cos(Orig[2])
			*Math.cos(Dest[2])
			*Math.cos(Orig[4]-Dest[4]));
			nm=Math.round(3956.073*d);
			if (Math.sin(Dest[4]-Orig[4]) < 0) {
			tc=Math.acos((Math.sin(Dest[2])
			-Math.sin(Orig[2])*Math.cos(d))
			/(Math.sin(d)*Math.cos(Orig[2])));
	         } 
			else { 
			tc=2*Math.PI
			-Math.acos((Math.sin(Dest[2])
			-Math.sin(Orig[2])
			*Math.cos(d))/(Math.sin(d)
			*Math.cos(Orig[2])));
			}
			tc=Math.round(tc*(180/Math.PI));
			message=(Orig[0] + " to " + Dest[0] + "\n\n");
			message+=("Kilometers: "+Math.round(nm*1.6094));
			alert(message);
	   }
		
</SCRIPT>
<title>Travel Coming Soon Flat Responsive Widget Template :: w3layouts</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Travel Coming Soon Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- css files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery.countdown.css" />	<!-- Countdown-CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
<!-- css files -->

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<!-- Online-fonts -->
<link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext" rel="stylesheet">
<!-- //Online-fonts -->

 

</head>
<body>


	<script src="js/jquery.vide.min.js"></script>
	<!-- main -->
	<div data-vide-bg="video/Mykonos">
	
		<div class="center-container">
			<div class="w3ls_banner_info">
			
				<h1>Tour Around</h1>
				
				<div class="container-fluid text-center">
  <div class="row">
  
<div class="col-sm-4"></div>
<div class="col-sm-4">
<p align="center"><strong><font size="6" color="#990000"><u>convertor </u></font></strong></p>
<table width="580" height="186" border="0" cellpadding="1" cellspacing="0"><FORM name=mainform method=post>

  <tr > 
    <td><input name="amount" type="text" class=input value="1"><BR><BR></td>
    <td> 
        <select name="source" size="1" id="source">
          <option value="1" selected>GBP United Kingdom Pounds</option>
          <option value="2">JPY Japan Yen</option>
          <option value="3">ITL Italy Lire</option>
          <option value="4">Aud Austrlian Dollars</option>
          <option value="5">CAD Canada Dollars</option>
          <option value="6">USD United staes Dollars Dollars</option>
          <option value="7">NZD Newzeeland Dollars</option>
        </select><Br><BR></td>
    <td><p>INR</p></td>
  </tr>
  <tr> 
<TR>
<Td colspan=3 align=center><button class="btn btn-info" onclick=doSubmit();>Convert</button>&nbsp;&nbsp;<button  class="btn btn-danger" type=reset>Clear Now</button>
</TD></TR></tABLE></form>


</TD></TR></TABLE>

</div>
<div class="col-sm-4"></div>
  
  
  </div>
 
			</div>
			<!--footer-->
	<div class="footer-w3">
		<p>&copy; 2017 Travel Coming Soon. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
	</div>
	
	
	<!--//footer-->
		</div>
		
	</div>
	<!-- //main -->


<!--scripts--> 
<!-- Countdown-Timer-JavaScript -->
<!-- 			<script src="js/simplyCountdown.js"></script> -->
<!-- 			<script> -->
<!-- 				var d = new Date(new Date().getTime() + 948 * 120 * 120 * 2000); -->

<!-- 				// default example -->
<!-- 				simplyCountdown('.simply-countdown-one', { -->
<!-- 					year: d.getFullYear(), -->
<!-- 					month: d.getMonth() + 1, -->
<!-- 					day: d.getDate() -->
<!-- 				}); -->

<!-- 				// inline example -->
<!-- 				simplyCountdown('.simply-countdown-inline', { -->
<!-- 					year: d.getFullYear(), -->
<!-- 					month: d.getMonth() + 1, -->
<!-- 					day: d.getDate(), -->
<!-- 					inline: true -->
<!-- 				}); -->

<!-- 				//jQuery example -->
<!-- 				$('#simply-countdown-losange').simplyCountdown({ -->
<!-- 					year: d.getFullYear(), -->
<!-- 					month: d.getMonth() + 1, -->
<!-- 					day: d.getDate(), -->
<!-- 					enableUtc: false -->
<!-- 				}); -->
<!-- 			</script> -->
		<!-- //Countdown-Timer-JavaScript -->
<!--//scripts--> 


</body>
</html>
