require "test_helper"

class UrlShortenerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get url_shortener_home_url
    assert_response :success
  end
end
