<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
%>
<LINK HREF="<%=path+"/Styles/Travel.css"%>" REL="STYLESHEET">
<SCRIPT>
	function doClear()
		{		 
		  	document.mainform.BudgetAmtPDay.value = "";
		  	document.mainform.BudgetAmtPTrip.value = "";
		}
  function doSubmit()
		{
			var strErrMsg;
			strErrMsg = "";			
			strErrMsg = doValidations();
			if (strErrMsg == "" )
			{				
				document.mainform.action = "<%=path+"/register"%>";				
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
			strFld = frmDoc.loginid
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter LoginID\n";
			strFld = frmDoc.pswd
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter Your Password\n";
			strTemp = frmDoc.confpswd
			if (strFld.value == "") strErrMsg = strErrMsg + "Please reenter your Password\n";
			if (strFld.value != strTemp.value)
			{
				 strErrMsg = strErrMsg + "Your password doesn't match\n";
				 frmDoc.confpswd.value="";
			}
			strFld = frmDoc.answer
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter youe security answer\n";
			strFld = frmDoc.fname
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter youe first name\n";
			strFld = frmDoc.lname
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter youe last name\n";
			strFld = frmDoc.add1
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter first line of your address\n";
			strFld = frmDoc.add2
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter second line of your address\n";
			strFld = frmDoc.city
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter your city\n";
			strFld = frmDoc.pin
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter your postal code\n";
			strFld = frmDoc.cno
			if (strFld.value == "") strErrMsg = strErrMsg + "Please enter your contact number\n";				
			strFld = frmDoc.mailid
			if (strFld.value == "")
			{strErrMsg = strErrMsg = strErrMsg + "Please enter Email ID\n";}
			else
			{
			var strEmail=frmDoc.mailid.value;
			var pos1=strEmail.indexOf("@")
			var pos2=strEmail.indexOf(".")
			if (pos1>=0 && pos2>=0){}else{strErrMsg = strErrMsg + "Please enter Email ID\n";}
			}		
			return strErrMsg;
		}
</SCRIPT>
<BODY LEFTMARGIN=0 TOPMARGIN=0>
<TABLE WIDTH=1400 align=center cellspacing=0 cellpadding=0>
<TR>
<TD valign=top><img src="<%=path+"/Images/B.png"%>" alt="" width="1400" height="150"></TD>
</TR>
</TABLE>
<SCRIPT SRC="<%=path+"/Scripts/Menubar.js"%>"></SCRIPT>
<TABLE WIDTH=1400 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">

<TR bgcolor=#234567><TH valign=top width=150>Quick Links</TH><TH width=400><marquee direction=right> We Share a Vision
</marquee></TH><TH width=230><a href="" class=caption>Visit India on Your Requirements</a></TH></TR></TABLE>
<TABLE width=1400 align=center cellspacing=0 cellpadding=0><TR><TD valign=top>
<SCRIPT>
quickLinks("<%=path+"/Pages/"%>","<%=path+"/Images/Anniversary1.jpg"%>","<%=path+"/Images/trivendrum.jpg"%>");
</SCRIPT></TD><TD valign=top>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
<TR></TR>
<TR><Th style='color:green'><BR><B><center>travel Management Members Enrolling Terminal</center></B><BR></TD></TR></TABLE>
<FORM name=mainform method=post action="<%=path+"/login"%>">
<table cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input>
		</TR>
		<TR>
			<td align=right>Password&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><input type=password name=pswd class=input></TD></TR>
		<TR>
			<td align=right>Retype Password&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><input type=password name=confpswd class=input></TD>
		</TR>
		<TR>
			<td align=right>Password&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
	       <TD><select name=security_question>
          <option value=1 selected>What is your preferred internet password?</option>
          <option value=2>What is the name of the street where you grew up?</option>
          <option value=4>What is the name of your favorite restaurant?</option>
          <option value=5>What is your favorite movie?</option>
          <option value=6>What is the name of your favorite cartoon character?</option>
          <option value=7>Who is your favorite fictional character?</option>
          <option value=8>Where did you go on your first date?</option>
          <option value=9>What is your favorite pet's name?</option>
          <option value=11>What is your best friend's last name?</option>
	       </select></TD></TR>
   		<TR>
			<td align=right>Hint Answer&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><input type=password name=answer class=input></TD></TR>
		<TR>
			<TD align=right>First Name&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="fname" type="text" class=input>
		</TR>
	<TR>
			<TD align=right>Middle Name&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="mname" type="text" class=input>
		</TR>
	<TR>
			<TD align=right>Last name&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="lname" type="text" class=input>
		</TR>
		<TR>
			<TD align=right>Sex&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name=sex>
          <option value="M" selected>MALE</option>
          <option value="F">FEMALE</option>
        </select></TD></TR>
		<TR>
			<TD align=right>Date of Birth&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="dd">
                  <option value="1" selected>01</option>
                  <option value="2">02</option>
                  <option value="3">03</option>
                  <option value="4">04</option>
                  <option value="5">05</option>
                  <option value="6">06</option>
                  <option value="7">07</option>
                  <option value="8">08</option>
                  <option value="9">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
                  <option value="21">21</option>
                  <option value="22">22</option>
                  <option value="23">23</option>
                  <option value="24">24</option>
                  <option value="25">25</option>
                  <option value="26">26</option>
                  <option value="27">27</option>
                  <option value="28">28</option>
                  <option value="29">29</option>
                  <option value="30">30</option>
                  <option value="31">31</option>
                </select>
                &nbsp; <select name="mm">
                  <option value="1" selected>JAN</option>
                  <option value="2">FEB</option>
                  <option value="3">MAR</option>
                  <option value="4">APR</option>
                  <option value="5">MAY</option>
                  <option value="6">JUN</option>
                  <option value="7">JUL</option>
                  <option value="8">AUG</option>
                  <option value="9">SEP</option>
                  <option value="10">OCT</option>
                  <option value="11">NOV</option>
                  <option value="12">DEC</option>
                </select>
                &nbsp; <select name="yy" size="1">
                  <option value="1980">1980</option>
                  <option value="1981">1981</option>
                  <option value="1982">1982</option>
                  <option value="1983">1983</option>
                  <option value="1984">1984</option>
                  <option value="1985">1985</option>
                  <option value="1986">1986</option>
                  <option value="1987">1987</option>
                  <option value="1988">1988</option>
                  <option value="1989">1989</option>
                  <option value="1990">1990</option>
                  <option value="1991">1991</option>
                  <option value="1992">1992</option>
                </select> </td>
            </tr>
			<TR>
			<TD align=right>Line #1 Address (or P.O. Box):&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=add1></TD></TR>
			<TD align=right>Line #2 Address (include Apt #):&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=add2></TD></TR>
			<TR><TD align=right>City:&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=city></TD></TR>
			<TR><TD align=right>State:&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name=state size="1">
                  <option value="AP">Andhra Pradesh</option>
                  <option value="ND" selected>New Delhi</option>
                  <option value="PB">Punjab</option>
                  <option value="HR">Hariyana</option>
                  <option value="HP">Himanchal Pradesh</option>
                  <option value="GJ">Gujrat</option>
                  <option value="MP">Madhya Pradesh</option>
                  <option value="BR">Bihar</option>
                  <option value="MH">Maharashtra</option>
                  <option value="RJ">Rajasthan</option>
                  <option value="KA">Karnatka</option>
                  <option value="KR">Kerala</option>
                  <option value="UP">Uttar Pradesh</option>
                </select></TD></TR>
               <TD align=right>Zip:&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=pin></TD></TR>
			<TR><TD align=right>Contact No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=cno></TD></TR>
			<TR><TD align=right>Email-Id for Correspondance&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input class=input name=mailid></TD></TR>
			<TR><TD>&nbsp;</TD><TD>
			<input type=checkbox checked value=Y name=flag>Yes, I would like to hear more about 
                priceline's<br>
                upcoming services and special promotions.</TD></TR>
<TR><Td colspan=2 align=center><a href="javascript:doSubmit()"><img src="<%=path+"/Images/createProfile.gif"%>" border=0></A>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.jpg"%>")</SCRIPT>-->


