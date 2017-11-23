package appTask.utils;

/**
 * Created by corncandy on 2017/8/7.
 */
public class MobileGenerator {
    // Phone Number
    private static String[] telFirst = "134,135,136,137,138,139,150,151,152,157,158,159,130,131,132,155,156,133,153".split(",");

    public static String generate() {
        int index = getNum(0, telFirst.length - 1);

        String first = telFirst[index];
        String second = String.valueOf(getNum(1, 888) + 10000).substring(1);
        String third = String.valueOf(getNum(1, 9100) + 10000).substring(1);

        return first + second + third;
    }

    public static void main(String[] args) {
        System.out.println(generate());
    }

    private static int getNum(int start, int end) {
        return (int) (Math.random() * (end - start + 1) + start);
    }
}
