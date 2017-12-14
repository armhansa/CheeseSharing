package tool;

import java.io.PrintWriter;

public class Reaction {
    // Singleton
    private static Reaction reacInstance;
    
    private final String path[];
    
    private Reaction() {
        String tmp[] = {"entrance.jsp", "homePage.jsp"};
        path = tmp;
    }
    
    public static Reaction getInstance() {
        if(reacInstance == null)
            reacInstance = new Reaction();
        
        return reacInstance;
    }
    
    public void alert(PrintWriter out, String alert, int indexPath) {
        if(indexPath >= 0 && indexPath < path.length) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('"+alert+"');");
            out.println("location='"+path[indexPath]+"';");
            out.println("</script>");
        }
    }
    
}
