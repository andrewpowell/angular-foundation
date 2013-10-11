<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page import="java.util.List" %>


<cq:setContentBundle/>

<%
    response.setContentType("application/x-javascript");
    response.setCharacterEncoding("utf-8");

    StringBuffer buf = new StringBuffer();

    Iterator<Page> children = currentPage.listChildren();

    Resource resAppTitle = currentPage.getContentResource("appTitle");

    Node nodeAppTitle = resAppTitle.adaptTo(Node.class);
    NodeIterator nodes = nodeAppTitle.getNodes();
    List<Node> nodeList = new ArrayList<Node>();
    while(nodes.hasNext()){
        nodeList.add(nodes.nextNode());
    }


%>
<c:out value="<%=nodeAppTitle.getProperty("text")%>"/>




