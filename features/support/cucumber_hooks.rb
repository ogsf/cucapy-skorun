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

    # Embed the screenshot into our output."
    if File.exist?(saver.screenshot_path)
      require "base64"
      #encode the image into it's base64 representation
      image = open(saver.screenshot_path, 'rb') {|io|io.read}
      encoded_img = Base64.encode64(image)
      #this will embed the image in the HTML report, embed() is defined in cucumber
      embed("data:image/png;base64,#{encoded_img}", 'image/png', "#{filename_prefix}")
    end
  end

  #Close web browser and clear session
  # page.execute_script "window.close()"
  page.execute_script "sessionStorage.clear()"
end