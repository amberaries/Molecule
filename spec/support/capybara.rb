RSpec.configure do |config|
  config.before(:each, type: :system) do
    # TODO:
    # selenium_chrome_headless
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless
  end
end
