<%--

  Angular Input component.

  HTML input element control with angular data-binding. Input control follows HTML5 input types and polyfills the HTML5 validation behavior for older browsers.

--%>
<%@include file="/apps/angular/global.jsp"%>
<%@page session="false" %>
<cq:setContentBundle/>

<%
    String label = properties.get("label","");
    String resourceType = properties.get("./sling.resourceType","");
    boolean labelRight = properties.get("type","").equals("radio") || properties.get("type","").equals("checkbox");
%>
<c:set var="resourceType" value="<%=resourceType%>"/>

<script type="text/javascript">
    var onInsert = function(){
        var aDlg = {
            "jcr:primaryType": "cq:Dialog",
            "title":CQ.I18n.getMessage("Input Details"),
            "formUrl": CQ.Util.externalize(win.path),
            "path":CQ.Util.externalize(win.path),
            "modal":true,
            "params": {
                "./sling:resourceType":"${resourceType}",
                "_charset_":"utf-8",
                "./mode" : mod
            },
            "items": {
                "jcr:primaryType": "cq:Widget",
                "xtype": "cqinclude",
                "path": path
            }
        };

        var dialog = CQ.WCM.getDialog(aDlg);
        dialog.failure = function(dlg, response) {
            CQ.Ext.Msg.alert(
                    CQ.I18n.getMessage("Error"),
                    CQ.I18n.getMessage("{0}", response.result.Message));
        };
        dialog.success = function(dlg, response) {
            win.hide();
        };
        dialog.loadContent(win.path);
        dialog.show();
    }

</script>

<c:set var="label"      value="<%= label %>"/>
<c:set var="hasLabel"   value="<%=!label.isEmpty()%>"/>
<c:set var="labelRight" value="<%=labelRight%>"/>

<c:if test="${hasLabel && !labelRight}"><span>${label}</span></c:if>
<input <c:forEach items="${properties}" var="prop"><c:choose><c:when test="${prop.key == 'required' && prop.value == 'true'}">required</c:when><c:when test="${fn:startsWith(prop.key,'required')!=true && fn:contains(fn:toLowerCase(prop.key),'label')!=true && fn:startsWith(prop.key,'jcr')!=true && fn:startsWith(prop.key,'sling')!=true && fn:startsWith(prop.key,'<')!=true}">${prop.key}="${prop.value}"</c:when></c:choose> </c:forEach>>
</input>
<c:if test="${hasLabel && labelRight}"><span>${label}</span></c:if>

