import java.net.URI;

public class RouterUri {

  public static void main(String[] args) throws Throwable {
    String routerName = "jose-cool-router-name";
    String uriName    = new URI(routerName).toASCIIString();
    
    System.out.println("direct:" + uriName + "_Reporting");

  }
}
