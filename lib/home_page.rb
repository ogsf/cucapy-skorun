class HomePage

  include PageObject

  page_url(ENV['SITE_URL'] || 'http://schoolrunner.org')

  link(:sign_in_link, :href => "https://app.schoolrunner.org/login")
  button(:learn_more_button, :css => "div.btn.teal.learn-more.hover")
  h2(:learn_more_text, :css => "h2.section-heading.problem")

  def click_sign_in_link
    self.sign_in_link
  end

  def click_learn_more_button
    self.learn_more_button
  end

end