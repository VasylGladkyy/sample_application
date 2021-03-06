require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end
  
  test 'full title helper' do
    assert_equal full_title, @base_title
    input_string = "Help"
    assert_equal full_title(input_string), input_string + " | " + @base_title
  end
end