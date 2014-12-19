import java.util.Arrays;

class ArrayDemo {
    public static void main(String[] args) {
        // declares an array of integers
        int[] anArray;

        // allocates memory for 10 integers
        anArray = new int[10];
        
        // populates array
        for ( int i = 0; i < anArray.length; i++ ) {
            anArray[i] = 100 * (i + 1);
        }
        
        // prints elements of array
        for ( int i = 0; i < anArray.length; i++ ) {
            System.out.println("Element at index " + i + ": " + anArray[i]);
        }        

        System.out.println(Arrays.toString(anArray));
    }
} 