package appTask.utils;

/**
 * Created by corncandy on 2017/8/7.
 */
public class CardGenerator {
    // BankCard
    private static int i = 0;

    public synchronized static String generate(String prefix) {
        String st = "622848" + prefix + getUnixTime();
        return st + getBankCardCheckCode(st);
    }

    public static void main(String[] args) {
        System.out.println(generate("8"));
    }

    private synchronized static String getUnixTime() {
        try {
            Thread.sleep(10);//线程同步执行，休眠10毫秒 防止卡号重复
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        i++;
        i = i > 100 ? i % 10 : i;
        return ((System.currentTimeMillis() / 100) + "").substring(1) + (i % 10);
    }

    public static boolean checkBankCard(String cardId) {
        char bit = getBankCardCheckCode(cardId.substring(0, cardId.length() - 1));
        if (bit == 'N') {
            return false;
        }
        return cardId.charAt(cardId.length() - 1) == bit;
    }

    public static char getBankCardCheckCode(String nonCheckCodeCardId) {
        if (nonCheckCodeCardId == null || nonCheckCodeCardId.trim().length() == 0
                || !nonCheckCodeCardId.matches("\\d+")) {
            //如果传的不是数据返回N
            return 'N';
        }
        char[] chs = nonCheckCodeCardId.trim().toCharArray();
        int luhmSum = 0;
        for (int i = chs.length - 1, j = 0; i >= 0; i--, j++) {
            int k = chs[i] - '0';
            if (j % 2 == 0) {
                k *= 2;
                k = k / 10 + k % 10;
            }
            luhmSum += k;
        }
        return (luhmSum % 10 == 0) ? '0' : (char) ((10 - luhmSum % 10) + '0');
    }
}
