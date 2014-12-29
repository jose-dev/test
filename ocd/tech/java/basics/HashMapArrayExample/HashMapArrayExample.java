import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;

public class HashMapArrayExample {

  public static void main(String[] args) throws Throwable {
    Map<Integer, List<SingleElement>> map = new HashMap<Integer, List<SingleElement>>();

    for ( int i = 1; i <= 5; i++ ) {
      for ( int j = 1; j <= 2; j++ ) {
        //List<SingleElement> list = new ArrayList<SingleElement>();

        List<SingleElement> list = map.get(i);
        if ( list == null ) {
          list = new ArrayList<SingleElement>();
          map.put(i, list);
        }
        
        SingleElement se = new SingleElement(i*10*j, i*100*j);
        list.add(se);
        //map.put(i, list);
      }
    }
    
    System.out.println("Number of keys: " + map.size());
    System.out.println("All keys: " + map.keySet().toString());
    //for (int i = 1; i <= map.size(); i++) {
    for (int i : map.keySet()) {
        System.out.println("Key " + i);
        List<SingleElement> le = map.get(i);
        for ( SingleElement e: le ) {
          System.out.println("\tone: " + e.getOne() + "\ttwo: " + e.getTwo());
        }
    }
  }
}
