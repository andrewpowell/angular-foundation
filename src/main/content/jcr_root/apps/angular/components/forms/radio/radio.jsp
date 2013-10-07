<%--

  Angular Checkbox component.

  HTML Checkbox

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>
<%
    String  displayLabel    = properties.get("displayLabel","");
	String  ngModel         = properties.get("ngModel", "");
	String  name            = properties.get("name", "");
	String  value           = properties.get("value", "");
	String  ngChange        = properties.get("ngChange", "");
    String  cssClass        = properties.get("cssClass", "");
%>
<c:set var="displayLabel"       value="<%= displayLabel%>"/>
<c:set var="ngModel" 	        value="<%= ngModel %>"/>
<c:set var="name" 		        value="<%= name %>"/>
<c:set var="value"              value="<%= value %>"/>
<c:set var="ngChange" 	        value="<%= ngChange %>"/>
<c:set var="cssClass" 	        value="<%= cssClass %>"/>
<c:set var="nameEmpty" 		    value="<%= name.isEmpty() %>"/>
<c:set var="valueEmpty"   value="<%= value.isEmpty() %>"/>
<c:set var="ngChangeEmpty" 	    value="<%= ngChange.isEmpty() %>"/>
<c:set var="classEmpty" 	    value="<%= cssClass.isEmpty() %>"/>
<label><c:out value="${displayLabel}"/></label>
<input type="radio" ng-model="<c:out value="${ngModel}"/>" <c:if test="${!nameEmpty}">name="<c:out value="${name}"/>" </c:if><c:if test="${!valueEmpty}">value="<c:out value="${value}"/>" </c:if><c:if test="${!ngChangeEmpty}">ng-change="<c:out value="${ngChange}"/>" </c:if><c:if test="${!classEmpty}">class="<c:out value="${cssClass}"/>" </c:if>/>
</input>