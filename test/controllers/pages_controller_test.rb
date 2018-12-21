require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get mainpage" do
    get pages_mainpage_url
    assert_response :success
  end

end
