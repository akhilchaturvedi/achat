<span page="<%=application.getRealPath("/Pages/Common/Global.jsp")%>"/>
<%@include file="../Common/Global.jsp"%>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=4 style="font:bold 11px verdana">
<img src="<%=path+"/Images/car.jpg"%>" width=100 height=100>
<TR></TR>
<TR><Th bgcolor=#234567 colspan=2>Travel Management System</TH></TR>
<TR><Td valign=top><%
	for(int i=1;i<9;i++) {
		if(i==5) out.println("<BR><img src='"+path+"/Images/car"+i+".jpg' width=100 height=100>");
		else out.println("<img src='"+path+"/Images/car"+i+".jpg' width=100 height=100>");
}
%>Driving direction regarding various places in a city<BR><center><img src="<%=path+"/Images/car.jpg"%>" width=250 height=200></center>
</TD></TR></TABLE>
<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Back.gif"%>")</SCRIPT>


