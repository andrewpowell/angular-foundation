<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="java.util.Iterator" %>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<%
    response.setContentType("application/x-javascript");
    response.setCharacterEncoding("utf-8");

    Iterator<Page> children = currentPage.listChildren();

    Resource resAppTitle = currentPage.getContentResource("appTitle");
    Node nodeAppTitle = resAppTitle.adaptTo(Node.class);
    String rawNodeValue = nodeAppTitle.getProperty("text").getString();
    String appTitleCleanNodeValue = rawNodeValue.toLowerCase().replaceAll("[^a-zA-Z0-9]+","").replaceAll("^-+","").replaceAll("-+$","");
    appTitleCleanNodeValue = appTitleCleanNodeValue.substring(1,appTitleCleanNodeValue.length()-1);
    appTitleCleanNodeValue = Jsoup.parse(appTitleCleanNodeValue).text();



%>
{
    var <cq:text value="<%=appTitleCleanNodeValue%>"/> = angular.module('<cq:text value="<%=appTitleCleanNodeValue%>"/> ',[]);
}





