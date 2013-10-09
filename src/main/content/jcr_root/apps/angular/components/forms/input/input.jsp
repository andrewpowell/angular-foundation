<%--

  Angular Input component.

  HTML input element control with angular data-binding. Input control follows HTML5 input types and polyfills the HTML5 validation behavior for older browsers.

--%>
<%@include file="/apps/angular/components/common/autoEditBase/autoEditBase.jsp"%>

<%
    String label = properties.get("label","");
    String resourceType = properties.get("./sling.resourceType","");
    boolean labelRight = properties.get("type","").equals("radio") || properties.get("type","").equals("checkbox");
%>
<c:set var="resourceType" value="<%=resourceType%>"/>

<c:set var="label"      value="<%= label %>"/>
<c:set var="hasLabel"   value="<%=!label.isEmpty()%>"/>
<c:set var="labelRight" value="<%=labelRight%>"/>

<c:if test="${hasLabel && !labelRight}"><span>${label}</span></c:if>
<input <c:forEach items="${properties}" var="prop"><c:choose><c:when test="${prop.key == 'required' && prop.value == 'true'}">required</c:when><c:when test="${fn:startsWith(prop.key,'required')!=true && fn:contains(fn:toLowerCase(prop.key),'label')!=true && fn:startsWith(prop.key,'jcr')!=true && fn:startsWith(prop.key,'sling')!=true && fn:startsWith(prop.key,'<')!=true}">${prop.key}="${prop.value}"</c:when></c:choose> </c:forEach>>
</input>
<c:if test="${hasLabel && labelRight}"><span>${label}</span></c:if>

