<%--
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>
<%@ include file="init.jsp"%>
<head>
<script type="text/javascript" src="/js/main.js"></script>
</head>
<h1>Success Page</h1>
<body onload="clickCounter()">
<p><button onclick="clickCounter()" type="button">Click me!</button></p>
<div id="result"></div>
<p>Click the button to see the counter increase.</p>
<p>Close the browser tab (or window), and try again, and the counter is reset.</p>


<%
PortletURL saveImgURL = renderResponse.createActionURL();
saveImgURL.setParameter(
ActionRequest.ACTION_NAME, "saveImg");


%>

<aui:form name="fm" method="POST" action="<%= saveImgURL.toString() %>" enctype="multipart/form-data">

select image  <aui:input type="file" name="image" />

<aui:button type="submit" value="Save" onClick="setProgress(50)" />
</aui:form>
<portlet:renderURL var="gv">
<portlet:param name="jspPage" value="/html/bestdesign/view.jsp"/>
</portlet:renderURL>
<a href="<%=gv %>">Back</a>
</body>

