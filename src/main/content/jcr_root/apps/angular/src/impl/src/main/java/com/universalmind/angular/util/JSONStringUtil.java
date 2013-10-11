package apps.angular.src.impl.src.main.java.com.universalmind.angular.util;

import java.util.Iterator;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: andrewpowell
 * Date: 10/11/13
 * Time: 3:41 PM
 * To change this template use File | Settings | File Templates.
 */
public class JSONStringUtil {

    private static final String QUOTE = "\"";
    private static final String COLON = ":";

    public static String formatKeyValue(String key, String value){
        return QUOTE.concat(key).concat(QUOTE).concat(COLON).concat(QUOTE).concat(value).concat(QUOTE);
    }

    public static String formatMap(Map<String,Object> raw){
         String jsonString = "{";
         Iterator<Map.Entry<String,Object>> mapIterator = raw.entrySet().iterator();
         while(mapIterator.hasNext()){
             Map.Entry<String,Object> entry = mapIterator.next();
             jsonString += formatKeyValue(entry.getKey(),entry.getValue().toString());
             if(mapIterator.hasNext()){
                 jsonString += ",";
             }
         }
         jsonString += "}";
         return jsonString;
     }

}
