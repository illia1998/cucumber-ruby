module FeatureHelper
  def login_user(user_name, password)
    login_page = LoginPage.new
    login_page.load

    login_page.user_name_field.set user_name
    login_page.password_field.set password
    login_page.submit_btn.click
  end

  def set_login
    @login = 'user' + Time.now.to_i.to_s
  end

  def get_login
    @login
  end

  def set_password
    @password = '123' + Time.now.to_i.to_s
  end

  def get_password
    @password
  end

  def set_email
    @email = Time.now.to_i.to_s + '@test.com'
  end

  def get_email
    @email
  end
end


