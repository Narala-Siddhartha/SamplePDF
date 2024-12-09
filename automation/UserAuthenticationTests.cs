using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using TechTalk.SpecFlow;

namespace UserAuthenticationTests
{
    [Binding]
    public class UserAuthenticationSteps
    {
        private IWebDriver driver;

        [BeforeScenario]
        public void Setup()
        {
            driver = new ChromeDriver();
        }

        [AfterScenario]
        public void TearDown()
        {
            driver.Quit();
        }

        [Given(@"I am on the login or account recovery page")]
        public void GivenIAmOnTheLoginOrAccountRecoveryPage()
        {
            driver.Navigate().GoToUrl("http://example.com/login");
        }

        [When(@"the page loads")]
        public void WhenThePageLoads()
        {
            // Page load logic
        }

        [Then(@"I should see a prompt asking for my registered username or email address")]
        public void ThenIShouldSeeAPromptAskingForMyRegisteredUsernameOrEmailAddress()
        {
            var prompt = driver.FindElement(By.Id("usernamePrompt"));
            Assert.IsTrue(prompt.Displayed);
        }

        [Then(@"the prompt should be clearly visible and easy to understand")]
        public void ThenThePromptShouldBeClearlyVisibleAndEasyToUnderstand()
        {
            var prompt = driver.FindElement(By.Id("usernamePrompt"));
            Assert.AreEqual("Enter your username or email", prompt.Text);
        }

        [When(@"I enter my registered username or email address in the input field")]
        public void WhenIEnterMyRegisteredUsernameOrEmailAddressInTheInputField()
        {
            var inputField = driver.FindElement(By.Id("usernameInput"));
            inputField.SendKeys("testuser@example.com");
        }

        [Then(@"the input field should accept the entered value")]
        public void ThenTheInputFieldShouldAcceptTheEnteredValue()
        {
            var inputField = driver.FindElement(By.Id("usernameInput"));
            Assert.AreEqual("testuser@example.com", inputField.GetAttribute("value"));
        }

        // Additional step definitions for other scenarios
    }
}
