import java.util.ArrayList;
import java.util.List;

public class LoopThruList {

  public static void main(String[] args) throws Throwable {
    List<SingleElement> list = new ArrayList<SingleElement>();
    for ( int i = 1; i <= 10; i++ ) {
        SingleElement e = new SingleElement();
        e.setOne(i);
        e.setTwo(i+100);
        list.add(e);
    }
    
    for (int i = 0; i < list.size(); i++) {
        SingleElement e = list.get(i);
        System.out.println("one: " + e.getOne() + "\ttwo: " + e.getTwo());
    }
  }
}
