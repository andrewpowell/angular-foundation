<%--

  Angular Controller Div component.

  Creates a DIV tag with the specified controller and id.

--%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>
<%
	String idName           = properties.get("id","");
    String cssClass         = properties.get("cssClass","");
    String controller       = properties.get("ngController","");
    boolean idNameEmpty     = idName.isEmpty();
    boolean cssClassEmpty   = cssClass.isEmpty();
    boolean controllerEmpty = controller.isEmpty();
%>
<c:set var="idName"             value="<%= idName%>"/>
<c:set var="cssClass"           value="<%= cssClass%>"/>
<c:set var="controller"         value="<%= controller%>"/>
<c:set var="idNameEmpty"        value="<%= idNameEmpty%>"/>
<c:set var="cssClassEmpty"        value="<%= cssClassEmpty%>"/>
<c:set var="controllerEmpty"    value="<%= controllerEmpty%>"/>
<div <c:if test="${!idNameEmpty}">id="<c:out value="${idName}"/>" </c:if><c:if test="${!cssClassEmpty}">class="<c:out value="${cssClass}"/>" </c:if><c:if test="${!controllerEmpty}">ng-controller="<c:out value="${controller}"/>" </c:if>>
    <cq:include path="angularContent" resourceType="foundation/components/parsys"/>
</div>