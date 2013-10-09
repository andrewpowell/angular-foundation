<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%--

  ==============================================================================

  Includes the body content.

  ==============================================================================

--%>
<%@ page session="false" %>
<%@ include file="/apps/angular/global.jsp"%>

<%
    Iterator<Page> raw = currentPage.listChildren();
    List<Page> children = new ArrayList<Page>();
    while(raw.hasNext()){
        children.add(raw.next());
    }
%>

<body>
    <div id="title">
        <h2>Application Title:</h2>
        <cq:include path="appTitle" resourceType="/apps/angular/components/common/htmlText"/>
    </div>
    <% for(Page child : children){ %>
        <c:set var="name" value="<%=child.getName()%>"/>
        <div>
            <c:out value="${name}"/>
        </div>
    <% } %>
</body>