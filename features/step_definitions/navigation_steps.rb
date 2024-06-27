require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

# Method to initialize the WebDriver based on the browser parameter
def initialize_driver(browser)
  case browser
  when 'chrome'
    puts "Initializing Chrome driver"
    Selenium::WebDriver.for :chrome
  when 'firefox'
    puts "Initializing Firefox driver"
    Selenium::WebDriver.for :firefox
  else
    raise "Unsupported browser: #{browser}"
  end
end

# Ensure the driver quits after each scenario
After do
  @driver.quit if @driver
end

Given('I open the website {string}') do |url|
  @driver = initialize_driver(ENV['BROWSER'])
  @driver.navigate.to url
  sleep 1
end

When('I tap on the Automation link') do
  automation_link = @driver.find_element(:xpath, '//*[@id="about"]/div/div/div/p[5]/a[1]')
  automation_link.click
  sleep 2
end

When('I tap on the BDD link') do
  bdd_link = @driver.find_element(:xpath, '//*[@id="about"]/div/div/div/p[5]/a[2]')
  bdd_link.click
  sleep 2
end

When('I tap on my email link') do
  email_link = @driver.find_element(:xpath, '//*[@id="contact"]/div/div/div/p[1]/a')
  email_link.click
  sleep 2
end

When('I tap on the GitHub button') do
  github_button = @driver.find_element(:xpath, '//*[@id="contact"]/div/div/div/div/a[1]')
  github_button.click
  sleep 2
end

When('I tap on the LinkedIn button') do
  linkedin_button = @driver.find_element(:xpath, '//*[@id="contact"]/div/div/div/div/a[2]')
  linkedin_button.click
  sleep 2
end

Then('the user is directed to {string}') do |expected_url|
  @driver.switch_to.window(@driver.window_handles.last)
  current_url = @driver.current_url
  expect(current_url).to eq(expected_url)
end

Then('the email address should be {string}') do |expected_email|
  email_link = @driver.find_element(:xpath, '//*[@id="contact"]/div/div/div/p[1]/a')
  actual_email = email_link.text
  expect(actual_email).to eq(expected_email)
end

When('I click on About') do
  about_link = @driver.find_element(:css, 'a.nav-link.js-scroll-trigger[href="#about"]')
  about_link.click
  sleep 2
end

Then('I am directed to the About Me section') do
  about_section = @driver.find_element(:id, 'about')
  expect(about_section.displayed?).to be true
end

When('I click on Portfolio') do
  portfolio_link = @driver.find_element(:css, 'a.nav-link.js-scroll-trigger[href="#portfolio"]')
  portfolio_link.click
  sleep 2
end

Then('I am directed to the Portfolio section') do
  portfolio_section = @driver.find_element(:id, 'portfolio')
  expect(portfolio_section.displayed?).to be true
end

When('I click on Testimonials') do
  testimonials_link = @driver.find_element(:css, 'a.nav-link.js-scroll-trigger[href="#testimonials"]')
  testimonials_link.click
  sleep 2
end

Then('I am directed to the Testimonials section') do
  testimonials_section = @driver.find_element(:id, 'testimonials')
  expect(testimonials_section.displayed?).to be true
end

When('I click on Contact') do
  contact_link = @driver.find_element(:css, 'a.nav-link.js-scroll-trigger[href="#contact"]')
  contact_link.click
  sleep 2
end

Then('I am directed to the Contact section') do
  contact_section = @driver.find_element(:id, 'contact')
  expect(contact_section.displayed?).to be true
end

When('I click on QA Analyst at Stake') do
  stake_link = @driver.find_element(:css, 'a.portfolio-title[href="#stake-details"]')
  stake_link.click
  sleep 2
end

Then('the card expands and user can view my duties and experiences at Stake') do
  stake_details = @driver.find_element(:id, 'stake-details')
  expect(stake_details.displayed?).to be true
end

When('I click on QA Analyst at Stake again') do
  stake_link = @driver.find_element(:css, 'a.portfolio-title[href="#stake-details"]')
  stake_link.click
  sleep 2
end

Then('the card collapses and user cannot view my duties and experiences at Stake') do
  stake_details = @driver.find_element(:id, 'stake-details')
  expect(stake_details.displayed?).to be false
end

When('I click on Technical Skills') do
  tech_link = @driver.find_element(:css, 'a.portfolio-title[href="#tech-skills-details"]')
  tech_link.click
  sleep 2
end

Then('the card expands and user can view my technical skills') do
  tech_details = @driver.find_element(:id, 'tech-skills-details')
  expect(tech_details.displayed?).to be true
end

When('I click on Technical Skills again') do
  tech_link = @driver.find_element(:css, 'a.portfolio-title[href="#tech-skills-details"]')
  tech_link.click
  sleep 2
end

Then('the card collapses and user cannot view my technical skills') do
  tech_details = @driver.find_element(:id, 'tech-skills-details')
  expect(tech_details.displayed?).to be false
end

When('I click on Software QA Analyst at Kemper Insurance') do
  kemper_link = @driver.find_element(:css, 'a.portfolio-title[href="#kemper-details"]')
  kemper_link.click
  sleep 2
end

Then('the card expands and user can view my duties and experiences at Kemper Insurance') do
  kemper_details = @driver.find_element(:id, 'kemper-details')
  expect(kemper_details.displayed?).to be true
end

Then('the card contains verbiage {string}') do |expected_verbiage|
  kemper_details = @driver.find_element(:id, 'kemper-details')
  actual_verbiage = kemper_details.text
  expect(actual_verbiage).to include(expected_verbiage)
end

When('I view the testimonials section') do
  @driver.find_element(:id, 'testimonials')
  sleep 1
end

Then('the testimonial by Santiago Guerrero contains the text {string}') do |expected_text|
  actual_text = @driver.find_element(:xpath, "//p[contains(text(), 'Santiago Guerrero')]/preceding-sibling::p").text
  actual_text = actual_text.tr('"', '') # Remove the double quotes from the actual text
  expect(actual_text).to eq(expected_text)
end
