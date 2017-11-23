package appTask.utils;


/**
 * Created by corncandy on 2017/8/7.
 */
public class Generator {
    public static String mobile() {
        return MobileGenerator.generate();
    }

    public static String name() {
        return NameGenerator.generate();
    }

    public static String idCard() {
        return IdGenerator.generate();
    }

    public static String bankCard() {
        return CardGenerator.generate("8");
    }
}
