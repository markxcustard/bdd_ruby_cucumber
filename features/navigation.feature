Feature: Navigation menu

  @automation
  Scenario: Redirect to Automation repository
    Given I open the website "https://markxcustard.github.io/"
    When I tap on the Automation link
    Then the user is directed to "https://github.com/markxcustard/personal_website_automation"

  @bdd
  Scenario: Redirect to BDD repository
    Given I open the website "https://markxcustard.github.io/"
    When I tap on the BDD link
    Then the user is directed to "https://github.com/markxcustard/bdd_personal_website"

  @email
  Scenario: Open email page
    Given I open the website "https://markxcustard.github.io/"
    When I tap on my email link
    Then the email address should be "mark.a.custard@gmail.com"

  @github
  Scenario: Redirect to GitHub profile
    Given I open the website "https://markxcustard.github.io/"
    When I tap on the GitHub button
    Then the user is directed to "https://github.com/markxcustard"

  @linkedin
  Scenario: Redirect to LinkedIn profile
    Given I open the website "https://markxcustard.github.io/"
    When I tap on the LinkedIn button
    Then the user is directed to "https://www.linkedin.com/in/mark-custard/"

  @about
  Scenario: Navigate to the About Me section
    Given I open the website "https://markxcustard.github.io/"
    When I click on About
    Then I am directed to the About Me section
  
  @portfolio
  Scenario: Navigate to the Portfolio section
    Given I open the website "https://markxcustard.github.io/"
    When I click on Portfolio
    Then I am directed to the Portfolio section

  @testimonials
  Scenario: Navigate to the Testimonials section
    Given I open the website "https://markxcustard.github.io/"
    When I click on Testimonials
    Then I am directed to the Testimonials section

  @contact
  Scenario: Navigate to the Contact section
    Given I open the website "https://markxcustard.github.io/"
    When I click on Contact
    Then I am directed to the Contact section

  @stake
  Scenario: Expand QA Analyst at Stake card
    Given I open the website "https://markxcustard.github.io/"
    When I click on QA Analyst at Stake
    Then the card expands and user can view my duties and experiences at Stake

  @stake_collapse
  Scenario: Collapse QA Analyst at Stake card
    Given I open the website "https://markxcustard.github.io/"
    When I click on QA Analyst at Stake
    And I click on QA Analyst at Stake again
    Then the card collapses and user cannot view my duties and experiences at Stake

  @tech
  Scenario: Expand Technical Skills card
    Given I open the website "https://markxcustard.github.io/"
    When I click on Technical Skills
    Then the card expands and user can view my technical skills

  @tech_collapse
  Scenario: Collapse Technical Skills card
    Given I open the website "https://markxcustard.github.io/"
    When I click on Technical Skills
    And I click on Technical Skills again
    Then the card collapses and user cannot view my technical skills

  @kemper
  Scenario: Verify verbiage in Software QA Analyst at Kemper Insurance card
    Given I open the website "https://markxcustard.github.io/"
    When I click on Software QA Analyst at Kemper Insurance
    Then the card expands and user can view my duties and experiences at Kemper Insurance
    And the card contains verbiage "Developed and continuously updated test plans and cases, ensuring comprehensive test coverage and adherence to best practices in test methodology."

  @testimonial
  Scenario: Verify verbiage in Santiago Guerrero's testimonial
    Given I open the website "https://markxcustard.github.io/"
    When I view the testimonials section
    Then the testimonial by Santiago Guerrero contains the text "I only needed a day to know how valuable Mark is on a QA team. His experience, dedication and commitment are truly out of the ordinary. He will get the job done, no questions asked."