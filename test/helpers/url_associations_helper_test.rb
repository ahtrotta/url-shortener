require "test_helper"

class UrlAssociationsHelperTest < ActionView::TestCase
  test "should return an alphanumeric string between 12 and 14 characters long" do
    assert_match /[a-z0-9]{12,14}/, create_short_url
  end

  test "should not return the same value on sequential invocations" do
    assert_not_equal create_short_url, create_short_url
  end

  test "should append https:// to URLs without a protocol" do
    assert_equal ensure_protocol('www.google.com'), 'https://www.google.com'
  end

  test "should not append https:// to URLs with a https://" do
    assert_equal ensure_protocol('https://www.google.com'), 'https://www.google.com'
  end

  test "should not append https:// to URLs with a http://" do
    assert_equal ensure_protocol('http://www.google.com'), 'http://www.google.com'
  end
end