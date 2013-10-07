<%--

  Angular Bound Unordered List Component.

  An unordered list that repeats over a collection.

--%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>><%
	String ngRepeat = properties.get("ngRepeat","");
%>
<c:set var="ngRepeat" value="<%=ngRepeat%>"/>
<ul>
    <li ng-repeat="<c:out value="${ngRepeat}"/>">
        <cq:include path="listContent" resourceType="foundation/components/parsys"/>
    </li>
</ul>