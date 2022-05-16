require "test_helper"

class UrlAssociationsControllerTest < ActionDispatch::IntegrationTest
  test "should successfully GET root" do
    get root_url
    assert_response :success
  end

  test "url_shortener#index should have a form that sends a POST to root" do
    get root_url
    assert_select "form[action=?]", root_path
    assert_select "form[method=?]", 'post'
  end

  test "should post to root" do
    post root_url
    assert_response :success
  end
end
