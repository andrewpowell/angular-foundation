<%--

  Angular Bound Unordered List Component.

  An unordered list that repeats over a collection.

--%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>
<%
	String ngRepeat = properties.get("ngRepeat","");
    String cssClass = properties.get("class","");
%>
<c:set var="ngRepeat"   value="<%= ngRepeat %>"/>
<c:set var="cssClass"   value="<%= cssClass %>"/>
<c:set var="hasClass"   value="<%= !cssClass.isEmpty() %>"/>
<ul <c:if test="${hasClass}">class="<c:out value="${cssClass}"/>"</c:if> >
    <li ng-repeat="<c:out value="${ngRepeat}"/>" >
        <cq:include path="listContent" resourceType="foundation/components/parsys"/>
    </li>
</ul>