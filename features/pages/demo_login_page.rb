class DemoLoginPage < SitePrism::Page

  set_url "/login"
  set_url_matcher /demo.schoolrunner.org\/?/

  element :username_input,       'input[name="username"]'
  element :password_input,       'input[name="password"]'
  element :sign_in_button,       'a.btn.btn-block' 

  # link(:forgot_password_link, :xpath => "//*[@id='login-form']/div[4]/a")
  
end