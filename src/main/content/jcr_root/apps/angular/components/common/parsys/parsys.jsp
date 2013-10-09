<%--
  Copyright 1997-2009 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default parsys component

  Includes all child resources but respects the columns control resources and
  layouts the HTML accordingly.
  
--%><%@page import="com.day.cq.wcm.foundation.Paragraph,
                    com.day.cq.wcm.foundation.ParagraphSystem,
                    com.day.cq.wcm.api.components.IncludeOptions,
                    com.day.cq.commons.jcr.JcrConstants,
                    com.day.cq.wcm.api.WCMMode" %>
<%@include file="/libs/foundation/global.jsp"%>
<%
    
    ParagraphSystem parSys = ParagraphSystem.create(resource, slingRequest);
    String newType = resource.getResourceType() + "/new";

    for (Paragraph par: parSys.paragraphs()) {
        if (editContext != null) {
            editContext.setAttribute("currentResource", par);
        }
        switch (par.getType()) {
            case START:
                break;
            case BREAK:
                if (editContext != null) {
                    // draw 'new' bar
                    IncludeOptions.getOptions(request, true).getCssClassNames().add("section");
                    %><sling:include resource="<%= par %>" resourceType="<%= newType %>"/><%
                }
                break;
            case END:
                if (editContext != null) {
                    // draw new bar
                    IncludeOptions.getOptions(request, true).getCssClassNames().add("section");
                    %><sling:include resource="<%= par %>" resourceType="<%= newType %>"/><%
                }
                if (editContext != null && WCMMode.fromRequest(request) == WCMMode.EDIT) {
                    // draw 'end' bar
                    IncludeOptions.getOptions(request, true).getCssClassNames().add("section");
                    %><sling:include resource="<%= par %>"/><%
                }
                break;
            case NORMAL:
                // include 'normal' paragraph
                IncludeOptions.getOptions(request, true).getCssClassNames().add("section");
                
                // draw anchor if needed
                if (currentStyle.get("drawAnchors", false)) {
                    String path = par.getPath();
                	path = path.substring(path.indexOf(JcrConstants.JCR_CONTENT)
                            + JcrConstants.JCR_CONTENT.length() + 1);
                	String anchorID = path.replace("/", "_").replace(":", "_");
                    %><a name="<%= anchorID %>" style="visibility:hidden"></a><%
                }
                %><sling:include resource="<%= par %>"/><%
                break;
        }
        if (editContext != null) {
            editContext.setAttribute("currentResource", null);
            // draw 'new' bar
            IncludeOptions.getOptions(request, true).getCssClassNames().add("section");
            %><cq:include path="*" resourceType="<%= newType %>"/><%
        }
    }
%>