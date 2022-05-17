require "test_helper"

class UrlAssociationTest < ActiveSupport::TestCase
  test "should not save a url_association with a blank long URL" do
    url_association = UrlAssociation.new(short_url: '123456789012')
    assert_not url_association.save
  end

  test "should not save a url_association with an invalid URL" do
    invalid_url_pipe = UrlAssociation.new(long_url: '|', short_url: '123456789012')
    invalid_url_newline = UrlAssociation.new(long_url: '\n', short_url: '123456789012')
    invalid_url_tab = UrlAssociation.new(long_url: '\t', short_url: '123456789012')
    invalid_url_backslash = UrlAssociation.new(long_url: '\\', short_url: '123456789012')
    assert_not invalid_url_pipe.save
    assert_not invalid_url_newline.save
    assert_not invalid_url_tab.save
    assert_not invalid_url_backslash.save
  end

  test "should not save a url_association even if missing protocol" do
    url_association = UrlAssociation.new(long_url: 'www.google.com', short_url: '123456789012')
    assert_not url_association.save
  end
end
