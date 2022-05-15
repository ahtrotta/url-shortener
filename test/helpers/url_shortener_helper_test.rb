require "test_helper"

class UrlShortenerHelperTest < ActionView::TestCase
  test "should return an alphanumeric string between 12 and 14 characters long" do
    assert_match /[a-z0-9]{12,14}/, create_short_url
  end

  test "should not return the same value on sequential invocations" do
    assert_not_equal create_short_url, create_short_url
  end
end