class DemoHomePage < SitePrism::Page

  set_url "/home{?asof=*}"
  set_url_matcher /demo.schoolrunner.org\/?/

  element :h1_heading,       'h1'

  # link(:forgot_password_link, :xpath => "//*[@id='login-form']/div[4]/a")
  
end