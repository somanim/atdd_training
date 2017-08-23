# Assessment Quiz 
 
 ## Test Automation

Why would you want to automate a test?
Automate test can save time, and can be run repeatedly which save lot of time for manual tester. 
To run the regression test do to a quick check if the changes have affected any other part of the application.

What tests are good canidates for automation? How do you decide what to automate?
Almost all test can be automated, End to end test, regression test, and a quick smoke test are the part for automation. 
It is a QA team with help of dev to decide whether the test is worth automating.

What type of things are not good to automate?
If the test is just one time to test is not worth to automate. Also test that are suppose to go back and forth through the pages (Exploratory testing).
  
What criteria do you consider for automating a test?
Depending on whats the functionality, and how often the test needs to be run. Test that can save time of a manual tester.   
 
What are some advantages to writing automated tests that drive the UI of an application? What are some of the disadvantages?
Automation test save time and keeps the manual tester away from doing the monotonous action. Automated test cannot do exploratory testing
  (user negative thinking is lacking)

What is the Test Data Lifecycle? What is destructive testing?
Getting requirements, Design and planning, creating Test data, validating test, and maintaining the test data. 
  Not sure about destructive testing, it may be as keep testing the application till it is not broken. 
  I usually do quite negative test to brake the application 

Can you automate everything 100%? If no, whay are the disadvantages of trying to automate everything?
No, Time consume in developing an automation test that can be easily done in manual. 

 ## OO Questions

Explain what Object Oriented Programming.
 
 What is the difference between module and a class in Ruby?

 Explain the mix-in behavior in Ruby.

 Explain inheritance in Ruby.

 Why should you focus compesition over inheritance?

 What is the difference between a class and a instance method?

 When would you use an instance method vs a class method?


 ## Watir / Page Object

What is the page object pattern?

What is Watir?

What are the advantages of using Page Object over using Watir?

Given a text box with an Id of "myTextBox", Show how you would enter text into the element using watir webdriver. How would you do it with page object?


 ## Cucumber

What is Cucumber?
Cucumber is a software tool used by the tester/programmer to test the application, based on acceptance tests.

 What is Gherkin? How does it relate to Acceptance Criteria?
Gherkin is a plain english text, where test cases are written,and save in feature file that Cucumber can execute
  Since it is in simple english acceptance criteria can be transferred in Gherkin which business team can understand.
  and they can be confirmed from signing off.  

Define what is support, env.rb and hooks.rb ?

 What are the 2 files required to execute a Cucumber test scenario?
Feature file, step definition
What is feature file in Cucumber? What does feature file consist of?
Cucumber test is written is called a feature file, it contains scenarios 
Given 
When 
Then

 What is the difference betweent imperative and Declaritive style Gherkin?

