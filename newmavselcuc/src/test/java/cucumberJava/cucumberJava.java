package cucumberJava; 

import com.codeborne.selenide.Configuration;
import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Selectors.*;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;

public class cucumberJava { 
	public void setUp() {
		  //Configuration.timeout = 600;
		}
	


	@When("^I click \"([^\"]*)\"$")
	public void i_click(String arg1) throws Throwable {
	    $(By.partialLinkText(arg1.split(" ")[0])).click();
	}

	@Then("^\"([^\"]*)\" exists$")
	public void exists(String arg1) throws Throwable {
		System.out.println("!!1 " +arg1);
		$(byText(arg1)).shouldBe(exist);
	}
	


	@Then("^label \"([^\"]*)\" exists$")
	public void label_exists(String arg1) throws Throwable {
		System.out.println("!!2 " +arg1);
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
	    $(byText(arg1)).shouldBe(exist);
	}

	@Then("^field \"([^\"]*)\" exists$")
	public void field_exists(String fieldName) throws Throwable {
		System.out.println("!!3 " +fieldName);
		$(By.name(fieldName)).shouldBe(exist);
	}
	@Then("^firstName \"([^\"]*)\" exists$")
	public void firstName_exists(String fieldName) throws Throwable {
		System.out.println("!!4 " +fieldName);
		$(By.name("test")).shouldBe(exist);
	}

	@When("^field \"([^\"]*)\" is clicked$")
	public void field_is_clicked(String arg1) throws Throwable {
		System.out.println("!!5 " +arg1);
		$(By.name(arg1)).click();
	}

	@Then("^tip (.*) is visible$")
	public void tip_is_visible(String tipText) throws Throwable {
		//final Condition visible;
		//Condition visible = true;
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
	    //$(By.partialLinkText(tipText)).shouldBe(visible);
		//$("valid-tip").shouldBe(visible);
		$(By.className("input_block__valid-tip")).shouldBe(visible).shouldHave(value(tipText));
		
	}
	
	@Then("^tip (.*) is invisible$")
	public void tip_is_invisible(String tipText) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
	    $(By.className("input_block__valid-tip")).shouldNotBe(visible);
	}

	@When("^type (.*) in (.*)$")
	public void type_text_in_Firstname_it_is_displayed(String text, String fieldName) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		$(byName(fieldName)).setValue(text);
	}
	@Then("^(.*) is displayed in (.*)$")
	public void text_is_displayed(String text, String fieldName) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		$(byName(fieldName)).shouldHave(value(text));
	}

}