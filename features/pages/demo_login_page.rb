class DemoLoginPage < SitePrism::Page

  set_url "/login"
  set_url_matcher /demo.schoolrunner.org\/?/

  #ELEMENT DEFINITIONS
  element :username_input,      'input[name="username"]'
  element :password_input,      'input[name="password"]'
  element :sign_in_button,      'a.btn.btn-block' 
  element :username_error,      'input.error[name="username"]'
  element :password_error,      'input.error[name="password"]'

  #METHODS

  def login (username, password)
    username_input.set username
    password_input.set password
    sign_in_button.click
  end
  
end