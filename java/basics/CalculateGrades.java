import java.util.Arrays;

class CalculateGrades {
    public static void main(String[] args) {
        double[][] gradePoints = {
            { 5.0, 0,   49.5  },
            { 4.7, 50,  59.5  },
            { 4.0, 60,  64.5  },
            { 3.7, 65,  69.5  },
            { 3.3, 70,  74.5  },
            { 3.0, 75,  79.5  },
            { 2.7, 80,  84.5  },
            { 2.3, 85,  89.5  },
            { 2.0, 90,  94.5  },
            { 1.7, 95,  99.5  },
            { 1.3, 100, 104.5 },
            { 1.0, 105, 120   }
        };
        
        double step   = 0.5;
        double points = 0.0;
        while ( points <= 120.0 ) {
            
            for ( double[] oneGradePoint : gradePoints ) {
                if ( points >= oneGradePoint[1] && points <= oneGradePoint[2] ) {
                    System.out.println("Points: " + points + "\tGrade: " + oneGradePoint[0]);
                }
            }
            points += step;
        }
    }
} 