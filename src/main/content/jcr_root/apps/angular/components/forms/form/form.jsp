<%--

  Angular Form component.

  Directive that instantiates FormController.

If the name attribute is specified, the form controller is published onto the current scope under this name.

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>
<%
    // read value from component
    String name             = properties.get("name", "");
    String controllerName   = properties.get("controllerName", "");
    String ngSubmit         = properties.get("ngSubmit","");
    String ngClick          = properties.get("ngClick","");
%>
<c:set var="name"           value="<%= name %>" />
<c:set var="hasName"        value="<%= !name.isEmpty() %>" />
<c:set var="controller"     value="<%= controllerName %>" />
<c:set var="hasController"  value="<%= !controllerName.isEmpty() %>" />
<c:set var="ngSubmit"       value="<%= ngSubmit %>" />
<c:set var="hasNgSubmit"    value="<%= !ngSubmit.isEmpty() %>" />
<c:set var="ngClick"        value="<%= ngClick %>" />
<c:set var="hasNgClick"     value="<%= !ngClick.isEmpty() %>" />

<c:if test="${isEdit || isDesign}">
	<h2> Angular Form </h2>
</c:if>

<form <c:if test="${hasName}">name="<c:out value="${name}"/>" </c:if><c:if test="${hasController}">ng-controller="<c:out value="${controller}"/>" </c:if><c:if test="${hasNgSubmit}">ng-submit="<c:out value="${ngSubmit}"/>" </c:if><c:if test="${hasNgClick}">ng-click="<c:out value="${ngClick}"/>" </c:if>>

	<cq:include path="formElements" resourceType="foundation/components/parsys"/>
</form>