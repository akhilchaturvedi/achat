<%@include file="../Common/Global.jsp"%>
<SCRIPT>
  function doSubmit()
		{
			var strErrMsg;
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{				
				document.mainform.action = "<%=path+"/cancelcar2"%>";		
				document.mainform.submit();
			}
					
			else
			{alert(strErrMsg);}
		}
		function doValidations()
		{
			
			
			var strFld;
			var frmDoc;
			var strErrMsg;

			strErrMsg = "";
			frmDoc = document.mainform;			
			strFld = frmDoc.reqno;
			if (strFld.value == "") strErrMsg = strErrMsg + "req-no can not be null\n";			
			return strErrMsg;
		}
</SCRIPT>

<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
	<TR><Td><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'>Cancel Reservations</TH></TR>
<TR><TD><BR>Procedure of Cancel Reservation is as follows</B>
<LI>It checks for Login ID and password, if both are valid then it will check for request number corresponding to that LoginID, if it is valid then your reservation will be cancelled 
<LI>If Login ID or password or Request No. fails then again a new window will appear in which you again enter valid LoginID, password and Request No. After valid LoginID, password and Request No. your reservation will be cancelled 
<LI>A Penality will be charged for cancellation depending upon when you will cancel your reservation eg. if you cancel 2 days before then penality will be more in comparison to if you cancel 4 or 5 days before 
<TR><Th style='color:green'><BR><B><center>Hotel Booking or Lodging</center></B><BR><FORM name=mainform method=post>
	<table width=560 cellspacing=0 cellpadding=4>
		<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>

		<TR>
			<TD align=right>Request Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input  type="text" name="reqno" class=input>
		</TR>
<TR><Td colspan=2 align=center><button onclick=doSubmit();>Cancel Now</button>&nbsp;&nbsp;<button type=reset>Clear Now</button>
</TD></TR></tABLE></form>


</TD></TR></TABLE>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.gif"%>")</SCRIPT>


