class LoginPage < SitePrism::Page

  set_url "/login"
  set_url_matcher /app.schoolrunner.org\/?/

  # link(:forgot_password_link, :xpath => "//*[@id='login-form']/div[4]/a")

  # def click_forgot_password_link
  #   self.forgot_password_link
  # end
  
end