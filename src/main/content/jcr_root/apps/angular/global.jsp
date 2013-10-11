<%@ page session="false" %>
<%@ page import="com.day.cq.i18n.I18n" %>
<%@ page import="com.day.cq.wcm.api.WCMMode" %>
<%@ page import="javax.jcr.Node" %>
<%@ page import="java.util.Map" %>
<%@include file="/libs/foundation/global.jsp"%>
<%@ page trimDirectiveWhitespaces="true" %>
<cq:setContentBundle/>
<%
	final I18n i18n = new I18n(slingRequest);
	boolean isEdit = WCMMode.fromRequest(request) == WCMMode.EDIT;
	boolean isDesign = WCMMode.fromRequest(request) == WCMMode.DESIGN;


%>
<%!
    final String QUOTE = "\"";
    final String COLON = ":";

    public String formatKeyValueJSON(String key, String value){
        return QUOTE.concat(key).concat(QUOTE).concat(COLON).concat(QUOTE).concat(value).concat(QUOTE);
    }

    public String formatMap(Map<String,Object> raw){
        String jsonString = "{";
        Iterator<Map.Entry<String,Object>> mapIterator = raw.entrySet().iterator();
        while(mapIterator.hasNext()){
            Map.Entry<String,Object> entry = mapIterator.next();
            jsonString += formatKeyValueJSON(entry.getKey(),entry.getValue().toString());
            if(mapIterator.hasNext()){
                jsonString += ",";
            }
        }
        jsonString += "}";
        return jsonString;
    }

%>
<c:set var="isEdit" value="<%= isEdit %>" />
<c:set var="isDesign" value="<%= isDesign %>" />