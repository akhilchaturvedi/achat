<%
	String path=new java.net.URL(request.getScheme(),request.getServerName(),request.getServerPort(),request.getContextPath()).toString();
	String member=session.getAttribute("Member")!=null?"Welcome "+session.getAttribute("Member").toString():"We Share a Vision";
	String user=session.getAttribute("Member")!=null?session.getAttribute("Member").toString():"";
//	if(session.getAttribute("Member")==null) response.sendRedirect(path+"/Pages/Login.jsp");
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
<TR bgcolor=#00cc66><TH valign=top width=150>Quick Links</TH><TH width=400><marquee direction=right><%=member%></marquee></TH><TH width=230><a href="<%=path+"/Pages/Signout.jsp"%>" class=caption>Sign Out From Here</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<%=path+"/index.jsp"%>" class=caption>Home</a></TH></TR></TABLE>
<TABLE width=900 align=center cellspacing=0 cellpadding=0><TR><Th valign=top>
<SCRIPT>
quickLinks("<%=path+"/Pages/"%>","<%=path+"/Images/Anniversary1.gif"%>","<%=path+"/Images/trivendrum.gif"%>");
</SCRIPT></TD><TD valign=top>