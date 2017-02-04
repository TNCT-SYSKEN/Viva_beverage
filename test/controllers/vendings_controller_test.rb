require 'test_helper'

class VendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get vendings_show_url
    assert_response :success
  end

end
