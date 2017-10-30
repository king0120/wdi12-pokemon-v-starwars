require 'test_helper'

class StarWarsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get star_wars_update_url
    assert_response :success
  end

end
