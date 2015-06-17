class HomePage < SitePrism::Page

  set_url "/"
  set_url_matcher /schoolrunner.org\/?/

  element :sign_in_link,      "a[text='Sign In']"
  # element(:learn_more_button) { find(:css, 'div.btn.teal.learn-more.hover') }
  # element(:learn_more_text)   { find(:css, 'h2.section-heading.problem') }

  # def click_sign_in_link
  #   self.sign_in_link
  # end

  # def click_learn_more_button
  #   self.learn_more_button
  # end

end