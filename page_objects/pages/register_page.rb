class RegisterPage < SitePrism::Page
  set_url'http://192.168.0.111/account/register'

  element :login_field, :xpath, "//input[@id='user_login']"
  element :password_field, :xpath, "//input[@id='user_password']"
  element :confirmation_field, :xpath, "//input[@id='user_password_confirmation']"
  element :first_name_field, :xpath, "//input[@id='user_firstname']"
  element :last_name_field, :xpath, "//input[@id='user_lastname']"
  element :email_field, :xpath, "//input[@id='user_mail']"
  element :hide_email_cb, :xpath, "//input[@id='pref_hide_mail']"
  element :language_drdn, :xpath, "//select[@id='user_language']"
  element :submit_btn, :xpath, "//input[@name='commit']"

end