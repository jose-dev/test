public enum Day {
    SUNDAY(1),
    MONDAY(2),
    TUESDAY(3),
    WEDNESDAY(4),
    THURSDAY(5),
    FRIDAY(6),
    SATURDAY(7);
    
    public int dayOrder;  
    Day(int i) {
        this.dayOrder = i;
    }
}