package cucumberJava; 

import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.ex.SoftAssertionError;
import com.codeborne.selenide.impl.Navigator;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Selenide.navigator;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static com.codeborne.selenide.Selectors.*;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.junit.AfterClass;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;

public class openRegForm { 
	public void setUp() {
		  //Configuration.timeout = 60000;
		}
	
	@Given("^an open browser with (.*)")
	public void an_open_browser_with_site(String link) throws Throwable {
		
	   Configuration.browser = "chrome";
	   //$("#welcome-message").shouldHave(text("Welcome, user!"));
	    System.out.println("!!URL " +link);
	    open(link);
	}

	@When("^I goto (.*)")
	public void i_goto(String arg1) throws Throwable {
		System.out.println("!bro= " +Configuration.browser);
		navigator.open(arg1);
		System.out.println("!bro= " +Configuration.browser);
	}

	@Then("Поле (.*) exists$")
	public void pole_exists(String fieldLabel) throws Throwable {
		//Configuration.timeout = 6000;
		System.out.println("!!time " +Configuration.timeout);
		System.out.println("!!1 " +fieldLabel);
		//$(byClassName("app__title")).shouldBe(exist);
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldBe(exist);

	}
	@Then("^Поле (.*) редактируемое$")
	public void поле_редактируемое(String fieldLabel) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		System.out.println("!!fieldid= " +$(byText("Имя")).getAttribute("for"));
		System.out.println("!!fieldname= " +$(byId($(byText(fieldLabel)).getAttribute("for"))).getAttribute("name"));
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldBe(enabled);
	}
	@Then("^Поле (.*) имеет тип (.*)$")
	public void поле__имеет_тип(String fieldLabel, String fieldType) throws Throwable {
		if (fieldType.equals("Текстовое поле с подсказкой")) {
			fieldType = "input_block__text ui-autocomplete-input";
		}
		if (fieldType.equals("Текстовое поле")) {
			fieldType = "input_block__text";
		}
		if (fieldType.equals("Дата")) {
			fieldType = "nf-widget-date";
		}
		if (fieldType.equals("Переключатель")) {
			fieldType = "radio_control";
		}
	    // Write code here that turns the phrase above into concrete actions
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldHave(attribute("class", fieldType));
		
	}
	@Then("^Поле (.*) имеет значение (.*)$")
	public void поле_имеет_значение(String fieldLabel, String fieldValue) throws Throwable {
		if (fieldValue.equals("пустое")) {
			fieldValue = "";
		}
	    // Write code here that turns the phrase above into concrete actions
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldHave(value(fieldValue));
	}

	@Then("^Поле (.*) имеет длину (\\d+) символов$")
	public void поле_имеет_длину_символов(String fieldLabel, String maxlength) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldHave(attribute("maxlength", maxlength));
	}

	@When("^I type (.*) to (.*)$")
	public void i_type_to(String fieldText, String fieldLabel) throws Throwable {
		if (fieldText.equals("сегодня")) {
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/mm/yyyy");
			LocalDate localDate = LocalDate.now();
			System.out.println(dtf.format(localDate)); 
			fieldText = dtf.format(localDate);
		}
	    // Write code here that turns the phrase above into concrete actions
		$(byId($(byText(fieldLabel)).getAttribute("for"))).setValue(fieldText);
		$(byId($(byText(fieldLabel)).getAttribute("for"))).pressTab();
		
	}
	
	@Then("^Поле (.*) содержит значения (.*)$")
	public void поле_содержит_значения(String fieldLabel, String fieldValueList) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		//String vals = $(byText(fieldLabel)).closest("div").$(byAttribute("tag", "ul")).getTagName();
		//$(byId($(byText(fieldLabel)).getAttribute("for"))).click();
		String vals1 = $(byId($(byText(fieldLabel)).getAttribute("for"))).innerText();
		String vals2 = fieldValueList;//.replaceAll("  ", " ").replaceAll(", ", ",").replaceAll(" ,", ",").split(",");
		System.out.println("!!vals1= " +vals1+"end");
		System.out.println("!!vals2= " +vals2+"end");
		System.out.println("!equals="+vals1.replaceAll("\\\n", "").trim().equals(vals2.replaceAll(", ", "")));
		System.out.println("!equals2="+vals1.replaceAll("\\n", "").trim().equals(vals2.replaceAll(", ", "")));
		$(byId($(byText(fieldLabel)).getAttribute("for"))).shouldHave(attribute("innerText", vals2.replaceAll(", ", "")));
		}

	@When("^click (.*)$")
	public void click(String buttonName) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    $(buttonName).click();
	}
	
	

}