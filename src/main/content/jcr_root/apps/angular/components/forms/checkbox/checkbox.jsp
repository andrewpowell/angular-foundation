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
	String  ngTrueValue     = properties.get("ngTrueValue", "");
	String  ngFalseValue    = properties.get("ngFalseValue", "");
	String  ngChange        = properties.get("ngChange", "");
    String  cssClass        = properties.get("cssClass", "");
%>
<c:set var="displayLabel"       value="<%= displayLabel%>"/>
<c:set var="ngModel" 	        value="<%= ngModel %>"/>
<c:set var="name" 		        value="<%= name %>"/>
<c:set var="ngTrueValue"        value="<%= ngTrueValue %>"/>
<c:set var="ngFalseValue"       value="<%= ngFalseValue %>"/>
<c:set var="ngChange" 	        value="<%= ngChange %>"/>
<c:set var="cssClass" 	        value="<%= cssClass %>"/>
<c:set var="nameEmpty" 		    value="<%= name.isEmpty() %>"/>
<c:set var="ngTrueValueEmpty"   value="<%= ngTrueValue.isEmpty() %>"/>
<c:set var="ngFalseValueEmpty"  value="<%= ngFalseValue.isEmpty() %>"/>
<c:set var="ngChangeEmpty" 	    value="<%= ngChange.isEmpty() %>"/>
<c:set var="classEmpty" 	    value="<%= cssClass.isEmpty() %>"/>
<div>
<c:out value="${displayLabel}"/>
<input type="checkbox" ng-model="<c:out value="${ngModel}"/>" <c:if test="${!nameEmpty}">name="<c:out value="${name}"/>" </c:if><c:if test="${!ngTrueValueEmpty}">ng-true-value="<c:out value="${ngTrueValue}"/>" </c:if><c:if test="${!ngFalseValueEmpty}">ng-false-value="<c:out value="${ngFalseValue}"/>" </c:if><c:if test="${!ngChangeEmpty}">ng-change="<c:out value="${ngChange}"/>" </c:if><c:if test="${!classEmpty}">class="<c:out value="${cssClass}"/>" </c:if>/>
</input>
</div>