Given(/^I am not logged in visitor$/) do
  # visit 'http://192.168.0.111/'
  @home_page = HomePage.new
  @home_page.load
end

When(/^I click 'Sign in' button$/) do
  # find(:xpath, '//*[@id="account"]/ul/li[1]/a').click
  @home_page.top_menu.sign_in_link.click
end

Then(/^I see 'Sign in' form opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end

When(/^I fill in log in form with valid credentials$/) do
  # find("#username").set 'user'
  # find("#password").set 'Ar0gzXpEtiGh'
  @login_page = LoginPage.new
  @login_page.user_name_field.set 'user'
  @login_page.password_field.set 'Ar0gzXpEtiGh'
end

And(/^I click 'Login' button$/) do
  # find("#login-submit").click
  @login_page.submit_btn.click
end

Then(/^I become a logged in as "([^"]*)"$/) do |user_name|
  expect(page).to have_content "Logged in as #{user_name}"
end

Given(/^I am logged in as "([^"]*)"$/) do |user_name|
  login_user user_name, 'qwerty123'
end