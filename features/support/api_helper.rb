require 'rest-client'

module APIHelper

  def get_user_list
    RestClient.get 'http://192.168.0.111/users.json', {'Content-Type' => 'application/json', 'X-Redmine-API-Key' => 'a7325b1ea24c8ff0fd6ec533b4f4e1579a367ae0'}
  end

  def register_user
    RestClient.post'http://192.168.0.111/users.json', { user: {
      login: set_login,
      firstname: "Mark",
      lastname: "Cool",
      mail: set_email,
      password: set_password
    }}, {'Content-Type' => 'application/json', 'X-Redmine-API-Key' => 'a7325b1ea24c8ff0fd6ec533b4f4e1579a367ae0'}
  end

end

