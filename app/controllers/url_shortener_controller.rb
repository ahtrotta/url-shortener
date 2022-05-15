class UrlShortenerController < ApplicationController
  def index 
  end

  def create
    long_url = params[:long_url]
    render html: "#{long_url}"
  end
end
