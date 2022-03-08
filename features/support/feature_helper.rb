module FeatureHelper
  def login_user(user_name, password)
    login_page = LoginPage.new
    login_page.load

    login_page.user_name_field.set user_name
    login_page.password_field.set password
    login_page.submit_btn.click
  end
end

