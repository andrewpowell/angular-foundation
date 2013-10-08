<%--

  Generic Angular Input component.

  HTML input element control with angular data-binding. Input control follows HTML5 input types and polyfills the HTML5 validation behavior for older browsers.

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>

<input <c:forEach items="${properties}" var="prop"><c:choose><c:when test="${prop.key == 'required' && prop.value == 'true'}">required</c:when><c:when test="${fn:startsWith(prop.key,'required')!=true && fn:contains(fn:toLowerCase(prop.key),'label')!=true && fn:startsWith(prop.key,'jcr')!=true && fn:startsWith(prop.key,'sling')!=true && fn:startsWith(prop.key,'<')!=true}">${prop.key}="${prop.value}"</c:when></c:choose> </c:forEach>>
</input>


