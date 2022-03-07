module FeatureHelper
  def login_admin
    @login_page = LoginPage.new
    @login_page.load

    @login_page.user_name_field.set 'user'
    @login_page.password_field.set 'Ar0gzXpEtiGh'
    @login_page.submit_btn.click
  end
end