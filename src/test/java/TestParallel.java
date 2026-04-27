import io.karatelabs.core.Runner;
import io.karatelabs.core.SuiteResult;
//import io.karatelabs.karate.Runner;
//import io.karatelabs.karate.SuiteResult;
import org.junit.Test;

public class TestParallel {

    @Test
    public void testAll() {
        SuiteResult result = Runner.path("classpath:APITest01.feature")
                .outputHtmlReport(true)
                .parallel(5);
        assert(result.isPassed());
    }
}