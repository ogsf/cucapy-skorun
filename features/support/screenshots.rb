After do |scenario|
  if(scenario.failed?)
    @browser.save_screenshot("reports/#{scenario.__id__}.png")
    embed("reports/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end