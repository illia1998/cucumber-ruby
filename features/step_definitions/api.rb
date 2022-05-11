Given(/^I get all users$/) do
  response = get_user_list

  mail = JSON.parse(response.body)['users'][0]['mail']
  p mail
end

Given(/^I am not a registered user$/) do
  register_user
end

Then(/^I become a registered user via API$/) do

  @home_page = HomePage.new
  @home_page.load
  @home_page.top_menu.sign_in_link.click

  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'

  @login_page = LoginPage.new
  @login_page.user_name_field.set get_login
  @login_page.password_field.set get_password
  @login_page.submit_btn.click

  expect(page).to have_content "Logged in as " + get_login
end