package team.edge.util;

import javax.servlet.http.HttpSession;

/**
 * @author jack
 * @date 2018/9/12
 */
public class CheckSession {
    public static boolean check(HttpSession session, String name) {
        return session.getAttribute(name) != null;
    }
}
