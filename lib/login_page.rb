class LoginPage

  include PageObject

  page_url(ENV['SITE_URL'] || 'https://app.schoolrunner.org/login')

  link(:forgot_password_link, :xpath => "//*[@id='login-form']/div[4]/a")

  def click_forgot_password_link
    self.forgot_password_link
  end
  
end