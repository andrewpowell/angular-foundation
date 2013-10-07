<%--

  ==============================================================================

  Includes the scripts and css to be included in the head tag

  ==============================================================================

--%>
<%@ page session="false" %>
<%@include file="/libs/foundation/global.jsp" %>
<%@ page import="org.apache.sling.api.resource.ValueMap" %>
<%
    ValueMap pageProps = currentPage.getProperties();
    String appFilePath = pageProps.get("appFilePath", String.class);

%>
<c:set var="appFilePath" value="<%=appFilePath%>"/>
<c:set var="hasAppFilePath" value="<%=appFilePath.isEmpty()%>"/>
<cq:includeClientLib js="angular.main"/>
<c:if test="${hasAppFilePath}">
    <script type="text/javascript" src="<c:out value="${appFilePath}"/>"></script>
</c:if>