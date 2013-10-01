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
    String controllerName = properties.get("controllerName", "");
%>
<c:set var="hasController" value="<%= controllerName.isEmpty() %>" />
<c:if test="${isEdit || isDesign}">
	<h2> Angular Form </h2>
</c:if>

<c:choose>
    <c:when test="${hasController}"><form></c:when>
	<c:otherwise><form ng-controller="<%=controllerName%>"></c:otherwise>
</c:choose>
	<cq:include path="formElements" resourceType="foundation/components/parsys"/>
</form>