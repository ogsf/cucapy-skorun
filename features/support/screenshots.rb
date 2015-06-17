# After do |scenario|
#   if(scenario.failed?)
#     @browser.save_screenshot("reports/#{scenario.__id__}.png")
#     embed("reports/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
#   end
# end

require 'capybara/dsl'
require 'capybara/cucumber'

After do |scenario|
  if Capybara::Screenshot.autosave_on_failure && scenario.failed?
    filename_prefix = scenario.name.gsub(/[^0-9A-Za-z]/, '')

    saver = Capybara::Screenshot::Saver.new(Capybara, Capybara.page, true, filename_prefix)
    saver.save

  end

  #Close web browser and clear session
  page.execute_script "window.close()"
  page.execute_script "sessionStorage.clear()"
end
