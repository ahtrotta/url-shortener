require "test_helper"

class UrlAssociationsControllerTest < ActionDispatch::IntegrationTest
  test "should successfully GET root" do
    get root_url
    assert_response :success
  end

  test "a GET request to root renders the application layout with URL Shortener heading" do
    get root_url
    assert_select 'h1', 'URL Shortener'
  end

  test "root page should have a form that sends a POST to root" do
    get root_url
    assert_select "form[action=?]", root_path
    assert_select "form[method=?]", 'post'
  end

  test "should post to root and redirect" do
    post root_url, params: { long_url: 'https://www.google.com' }
    assert_response :found
  end
end
