package com.universalmind.angular;

import org.jsoup.Jsoup;

/**
 * Utility class used by script.
 */
public class SampleUtil {

    public static String getText() {
        return "Hello World.";
    }

    public static String html2text(String html) {
        return Jsoup.parse(html).text();
    }
}