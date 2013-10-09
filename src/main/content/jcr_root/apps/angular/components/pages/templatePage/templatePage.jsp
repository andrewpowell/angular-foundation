<%--

  AngularJS View Template component.

  A template for creating AngularJS templates

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<%
	// TODO add you code here
%>
<c:if test="${isEdit}">
    <html>
    <cq:include script="/apps/angular/components/pages/page/head.jsp"/>
    <body>
    <div>
        <h3>URL Fragment:</h3>
        <cq:include path="urlFragment" resourceType="/apps/angular/components/common/htmlText"/>
    </div>
    <div>
        <h3>Route Controller Name:</h3>
        <cq:include path="controllerName" resourceType="/apps/angular/components/common/htmlText"/>
    </div>
</c:if>
<div>
    <cq:include path="main" resourceType="foundation/components/parsys"/>
</div>
<c:if test="${isEdit}"></body></html></c:if>