<%--

  Angular Email Input component.

  Text input with email validation. Sets the email validation error key if not a valid email address.

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>
<%
    String  displayLabel = properties.get("displayLabel","");
	String  ngModel      = properties.get("ngModel", "");
	String  name         = properties.get("name", "");
	boolean required     = properties.get("required", "").equals("true");
    boolean ngRequired   = properties.get("ngRequired", "").equals("true");
    boolean ngReqEmpty   = properties.get("ngRequired", "").isEmpty();
	String  min  		 = properties.get("min", "");
	String  max  		 = properties.get("max", "");
	String  ngMinLength  = properties.get("ngMinLength", "");
	String  ngMaxLength  = properties.get("ngMaxLength", "");
	String  ngPattern    = properties.get("ngPattern", "");
	String  ngChange     = properties.get("ngChange", "");
    String  cssClass     = properties.get("cssClass", "");
%>
<c:set var="displayLabel"       value="<%= displayLabel%>"/>
<c:set var="ngModel" 	        value="<%= ngModel %>"/>
<c:set var="name" 		        value="<%= name %>"/>
<c:set var="required" 	        value="<%= required %>"/>
<c:set var="ngRequired"         value="<%= ngRequired %>"/>
<c:set var="min"        		value="<%= min %>"/>
<c:set var="max"        		value="<%= max %>"/>
<c:set var="ngMinLength"        value="<%= ngMinLength %>"/>
<c:set var="ngMaxLength"        value="<%= ngMaxLength %>"/>
<c:set var="ngPattern" 	        value="<%= ngPattern %>"/>
<c:set var="ngChange" 	        value="<%= ngChange %>"/>
<c:set var="cssClass" 	        value="<%= cssClass %>"/>
<c:set var="labelEmpty" 		value="<%= displayLabel.trim().isEmpty() %>"/>
<c:set var="nameEmpty" 		    value="<%= name.isEmpty() %>"/>
<c:set var="ngReqEmpty"         value="<%= ngReqEmpty %>"/>
<c:set var="minEmpty"   		value="<%= min.isEmpty() %>"/>
<c:set var="maxEmpty"   		value="<%= max.isEmpty() %>"/>
<c:set var="ngMinLengthEmpty"   value="<%= ngMinLength.isEmpty() %>"/>
<c:set var="ngMaxLengthEmpty"   value="<%= ngMaxLength.isEmpty() %>"/>
<c:set var="ngPatternEmpty" 	value="<%= ngPattern.isEmpty() %>"/>
<c:set var="ngChangeEmpty" 	    value="<%= ngChange.isEmpty() %>"/>
<c:set var="classEmpty" 	    value="<%= cssClass.isEmpty() %>"/>
<c:if test="${!labelEmpty}"><label><c:out value="${displayLabel}"/></label></c:if>
<input type="number" ng-model="<c:out value="${ngModel}"/>" <c:if test="${!nameEmpty}">name="<c:out value="${name}"/>" </c:if><c:if test="${!minEmpty}">min="<c:out value="${min}"/>" </c:if><c:if test="${!maxEmpty}">max="<c:out value="${max}"/>" </c:if><c:if test="${required}">required </c:if><c:if test="${!ngReqEmpty}">ng-required="<c:out value="${ngRequired}"/>" </c:if><c:if test="${!ngMinLengthEmpty}">ng-minlength="<c:out value="${ngMinLength}"/>" </c:if><c:if test="${!ngMaxLengthEmpty}">ng-maxlength="<c:out value="${ngMaxLength}"/>" </c:if><c:if test="${!ngPatternEmpty}">ng-pattern="<c:out value="${ngPattern}"/>" </c:if><c:if test="${!ngChangeEmpty}">ng-change="<c:out value="${ngChange}"/>" </c:if><c:if test="${!classEmpty}">class="<c:out value="${cssClass}"/>" </c:if>>
</input>