package cucumberJava;
 
import cucumber.api.junit.Cucumber;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class) 
@CucumberOptions (
        //plugin = {"html:target/cucumber-report/smoketest", "json:target/cucumber.json"},
		plugin = {"json:target/cucumber.json"},
        features = "src/test/java/cucumberJava",
		
        //glue = "ru/riskmarket/steps",
        tags = "@inDevelopment")
//tags = "@testFeature")
public class runTest { }