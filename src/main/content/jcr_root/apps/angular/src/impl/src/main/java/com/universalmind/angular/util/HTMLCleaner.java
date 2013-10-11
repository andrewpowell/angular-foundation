package apps.angular.src.impl.src.main.java.com.universalmind.angular.util;

import org.jsoup.Jsoup;

/**
 * Created with IntelliJ IDEA.
 * User: andrewpowell
 * Date: 10/11/13
 * Time: 11:35 AM
 * To change this template use File | Settings | File Templates.
 */
public class HTMLCleaner {

    public static String html2text(String html) {
        return Jsoup.parse(html).text();
    }

}
