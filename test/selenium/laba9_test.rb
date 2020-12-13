require "selenium-webdriver"
require "minitest/autorun"

class TestMeme < Minitest::Test

  def test_that_kitty_can_eat
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "http://localhost:3000"

    input = driver.find_element(id: 'v1')
    input.send_keys "10"
    button = driver.find_element(name: 'commit')
    button.click
    puts driver.title
    rows = driver.find_elements(css:"div#result table tr")
    assert_equal(11, rows.length)
  end

end
#driver.quit