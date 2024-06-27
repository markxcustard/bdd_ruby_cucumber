Website Cucumber Test Suite
This repository contains Cucumber tests for verifying the functionality and content of the website hosted at https://markxcustard.github.io/.

Prerequisites
Ruby
Bundler
Selenium WebDriver
ChromeDriver for Chrome
GeckoDriver for Firefox
Installation
Clone the Repository


git clone https://github.com/yourusername/website_cucumber.git
cd website_cucumber
Install Dependencies


bundle install
Install WebDrivers

Ensure chromedriver and geckodriver are installed and added to your system's PATH.


# On macOS using Homebrew
brew install chromedriver geckodriver
Running the Tests
Run Tests in Chrome

export BROWSER=chrome
cucumber

Run Tests in Firefox

export BROWSER=firefox
cucumber

Step Definitions

Given Steps

Given I open the website "URL"

When Steps

When I tap on the Automation link
When I tap on the BDD link
When I tap on my email link
When I tap on the GitHub button
When I tap on the LinkedIn button
When I click on About
When I click on Portfolio
When I click on Testimonials
When I click on Contact
When I click on QA Analyst at Stake
When I click on QA Analyst at Stake again
When I click on Technical Skills
When I click on Technical Skills again
When I click on Software QA Analyst at Kemper Insurance
When I view the testimonials section

Then Steps

Then the user is directed to "URL"
Then the email address should be "EMAIL"
Then I am directed to the About Me section
Then I am directed to the Portfolio section
Then I am directed to the Testimonials section
Then I am directed to the Contact section
Then the card expands and user can view my duties and experiences at Stake
Then the card collapses and user cannot view my duties and experiences at Stake
Then the card expands and user can view my technical skills
Then the card collapses and user cannot view my technical skills
Then the card expands and user can view my duties and experiences at Kemper Insurance
Then the card contains verbiage "VERBIAGE"
Then the testimonial by Santiago Guerrero contains the text "TEXT"

Contributing
Contributions are welcome! Please submit a pull request or open an issue to discuss changes.

