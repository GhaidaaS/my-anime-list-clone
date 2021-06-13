require "test_helper"

class AnimeControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get anime_search_url
    assert_response :success
  end
end
