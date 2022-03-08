Given(/^I am not a registered visitor$/) do
  @home_page = HomePage.new
  @home_page.load
end

When(/^I click 'Register' button$/) do
  @home_page.top_menu.register_link.click
end

Then(/^I see 'Register' form opened$/) do
  expect(current_url).to include '/account/register'
  expect(page).to have_content 'Register'
end

When(/^I fill in 'Register' form with valid credentials$/) do
  @login = 'user' + Time.now.to_i.to_s
  @password = '123' + Time.now.to_i.to_s
  @email = Time.now.to_i.to_s + '@test.com'
  @register_page = RegisterPage.new
  @register_page.login_field.set @login
  @register_page.password_field.set @password
  @register_page.confirmation_field.set @password
  @register_page.first_name_field.set 'John'
  @register_page.last_name_field.set 'Doe'
  @register_page.email_field.set @email
  @register_page.hide_email_cb.set(true)
  @register_page.language_drdn.select 'English'

end

And(/^I click 'Submit' button$/) do
  @register_page.submit_btn.click
end

Then(/^I become a registered user$/) do
  expect(page).to have_content "Logged in as " + @login
end

