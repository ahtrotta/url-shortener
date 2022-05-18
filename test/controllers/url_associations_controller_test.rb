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
    post root_url, params: { long_url: 'https://www.google.com', short_url: '123456789012' }
    assert_response :found
    follow_redirect!
    assert_response :success
    assert_select 'p', 'long URL:'
  end

  test "should be able to retrieve a URL association" do
    get '/url_associations/1'
    assert_response :success
  end

  test "should get redirected when accessing short_url" do
    get '/testShortUrl'
    assert_response :moved_permanently
  end
end
