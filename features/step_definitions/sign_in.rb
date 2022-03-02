Given(/^I am not logged in visitor$/) do
  visit 'http://192.168.0.107/'
end

When(/^I click 'Sign in' button$/) do
  find(:xpath, '//*[@id="account"]/ul/li[1]/a').click
end

Then(/^I see 'Sign in' form opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end

When(/^I fill in log in form with valid credentials$/) do
  find("#username").set 'user'
  find("#password").set '9U6A3Byet97j'
end

And(/^I click 'Login' button$/) do
  find("#login-submit").click
end

Then(/^I become a logged in user$/) do
  expect(page).to have_content 'Logged in as user'
end