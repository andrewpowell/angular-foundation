<%--

  ==============================================================================

  Includes the scripts and css to be included in the head tag

  ==============================================================================

--%>
<%@ page session="false" %>
<%@include file="/libs/foundation/global.jsp" %>
<%@ page import="org.apache.sling.api.resource.ValueMap" %>
<%
    String appFilePath = properties.get("appFilePath", String.class);
    String cssFilePath = properties.get("cssFilePath", String.class);
%>
<c:set var="appFilePath" value="<%=appFilePath%>"/>
<c:set var="hasAppFilePath" value="<%=appFilePath != null && !appFilePath.isEmpty()%>"/>
<c:set var="cssFilePath" value="<%=cssFilePath%>"/>
<c:set var="hasCssFilePath" value="<%=cssFilePath != null && !cssFilePath.isEmpty()%>"/>

<cq:includeClientLib js="angular.main"/>
<c:if test="${hasAppFilePath}">
    <script type="text/javascript" src="<c:out value="${appFilePath}"/>"></script>
</c:if>
<c:if test="${hasCssFilePath}">
    <link rel="stylesheet" href="<c:out value="${appFilePath}"/>">
</c:if>