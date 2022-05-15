class UrlShortenerController < ApplicationController
  def index 
  end

  def create
    long_url = params[:long_url]
    short_url = helpers.create_short_url
    @url_association = UrlAssociation.new(long_url: long_url, short_url: short_url)

    if @url_association.save
      render html: "#{root_url}#{short_url}"
    else
      render html: 'failed to save to database'
    end
  end
end
