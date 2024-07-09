import java.util.Calendar;

public class EnumWeekEx {
    public static void main(String[] args) {

        Week today = null;

        Calendar cal = Calendar.getInstance();
        int week = cal.get(Calendar.DAY_OF_WEEK);
        int week2 = cal.DAY_OF_WEEK;

        System.out.println(week);
        System.out.println(week2);

    }
}
