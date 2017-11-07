<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
	String reqURI  = request.getRequestURI();
	String jspName = reqURI.substring(reqURI.lastIndexOf("/")+1, reqURI.indexOf(".jsp"));
	request.setAttribute("jspName", jspName);
%>