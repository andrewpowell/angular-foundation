<%--

  Angular Controller Div component.

  Creates a DIV tag with the specified controller and id.

--%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>
<%
	String idName           = properties.get("id","");
    String controller       = properties.get("ngController","");
    boolean idNameEmpty     = idName.isEmpty();
    boolean controllerEmpty = controller.isEmpty();
%>
<c:set var="idName"             value="<%= idName%>"/>
<c:set var="controller"         value="<%= controller%>"/>
<c:set var="idNameEmpty"        value="<%= idNameEmpty%>"/>
<c:set var="controllerEmpty"    value="<%= controllerEmpty%>"/>
<div <c:if test="${!idNameEmpty}">id="<c:out value="${idName}"/>" </c:if><c:if test="${!controller}">ng-controller="<c:out value="${controllerEmpty}"/>" </c:if>>
    <cq:include path="angularContent" resourceType="foundation/components/parsys"/>
</div>