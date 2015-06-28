class DemoLoginPage < SitePrism::Page

  set_url "/login"
  set_url_matcher /demo.schoolrunner.org\/?/

  #ELEMENT DEFINITIONS
  element :username_input, :css,            'input[name="username"]'
  element :password_input, :css,            'input[name="password"]'
  element :sign_in_button, :css,            'a.btn.btn-block' 
  element :username_error, :css,            'input.error[name="username"]'
  element :password_error, :css,            'input.error[name="password"]'
  element :invalid_credentials_error, :css, '.alert'

  #METHODS

  def login (username, password)
    username_input.set username
    password_input.set password
    sign_in_button.click
  end
  
end