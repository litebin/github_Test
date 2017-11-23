package baseFrame.commonUtils;

import org.apache.log4j.Logger;
import org.junit.Assert;

/**
 *Created by yaolei on 2017/7/24.
 */
public  class CheckPoint{
    private static Logger logger = Logger.getLogger(CheckPoint.class.getName());

    public Object actual;
    public Object expectation;



    /**
     * @return
     * @TODO Check
     * @parameter @param actual "实际值"
     * @parameter @param expected "预期值"
     * @parameter @param result "结果"
     */
    private void ptFormat(String common, Object expected,Object actual, String result) {
        String ptmsg;
        ptmsg = common+"预期值：" + expected +">>>>>>>>>"+"实际值：" + actual+","+result ;
        logger.info(ptmsg);
    }
    /**
     * @return
     * @TODO 检查实际和预期是否一样
     * @parameter @param actual
     * @parameter @param expected
     * @parameter @param comment
     */
    public void checkP(Object expected, Object actual, String... comment) {
        String comm;
        if (comment.length == 0) {
            comm = "checkpoint";
        } else {
            comm = comment[0];
        }
        if (actual.equals(expected)){
            Assert.assertEquals(expected,actual);
            ptFormat(comm, expected + "", actual + "", "PASS");
        } else   {
            ptFormat(comm, expected + "", actual + "", "FAIL");
            Assert.assertEquals(expected, actual);
        }
    }


    public void checkR() {
        //Assert.assertEquals(actual, expectation);
        checkP(expectation,actual);
    }
}
