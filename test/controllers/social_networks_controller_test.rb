require 'test_helper'

class SocialNetworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get social_networks_index_url
    assert_response :success
  end

end
