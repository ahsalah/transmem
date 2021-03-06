<%@ page language="java" errorPage="error.jsp" pageEncoding="UTF-8"
	import="com.transmem.data.db.Users,java.util.ArrayList"
%>

<%
	Users user = (Users)session.getAttribute("user");
	if (user == null) {
		response.sendError(999,"session.getAttribute('user') return null in articles.jsp");
	}
	java.util.ResourceBundle rb = (java.util.ResourceBundle)session.getAttribute("bundle");
%>

<html>
<head>
<title><%=rb.getString("translate.title")%></title>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="/transmem/css/mmenu.css">
<link rel="stylesheet" type="text/css" href="/transmem/css/trans.css">

<%@include file="variables.inc"%>

<SCRIPT language="JavaScript" src="/transmem/js/mmenu.js"></SCRIPT>
<SCRIPT language="JavaScript" src="/transmem/js/ajax.js"></SCRIPT>
<SCRIPT language="JavaScript" src="/transmem/js/trans.js"></SCRIPT>

</head>

<body class="project">
<%@include file="mmenu.inc"%>
<%@ include file="links.inc" %>

<table class="outer" align="center" width="98%">
 <tr>
   <td valign="top" width="50%">
     <!-- left side-->
     <table class="inner" width="100%">
		<tr>
		  <td>
		  	<%@include file="source_header.inc" %>
		  </td>
		</tr>
		<tr>
		  <td>
		    <div id="p_src">Loading source text...
		    </div>
		  </td>
		</tr>
		<tr>
		  <td>
		    <%@include file="trans_header.inc" %>
		  </td>
		</tr>
		<tr>
		  <!--translation and examples box -->
		  <td>
		    <%@include file="trans_edit.inc" %>
		  </td>
		</tr>
     </table>
   </td>
   <td valign="top">
     <!-- right box for examples-->
     <table class="inner" width="100%">
		<tr>
		  <td>
		    <%@include file="target_header.inc" %>
		  </td>
		</tr>
		<tr>
		  <td>
		    <div id="p_tgt">Target box.
		    </div>
		  </td>
		</tr>
       <tr>
         <td>
           <%@include file="example_header.inc" %>
         </td>
       </tr>
       <tr>
         <td valign="top">
		    <!-- examples-->
		    <%@include file="examples.inc"%>
         </td>
       </tr>
     </table>
   </td>
 </tr>
</table>
<%@include file="transform.inc" %>
<!-- footer here -->

<script language="JavaScript" type="text/javascript" src="/transmem/js/boxover.js"></script>
</body>
</html>
