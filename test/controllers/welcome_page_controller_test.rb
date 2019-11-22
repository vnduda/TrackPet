require 'test_helper'

class WelcomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_page_index_url
    assert_response :success
  end

end
