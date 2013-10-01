<%--

  Angular Form component.

  Creates a form with an optional controller property.

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>
<%
    // read value from component
    String controllerName = properties.get("controllerName", "");
%>
<% if(isEdit) {%>
<h2> Angular Form </h2>
<%}%>
<% if(controllerName.equals("")){%>
<form>
<%} else {%>
<form ng-controller="<%=controllerName%>">
<%}%>
    <cq:include path="formElements" resourceType="foundation/components/parsys"/>
</form>