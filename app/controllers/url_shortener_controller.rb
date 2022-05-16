class UrlShortenerController < ApplicationController
  def index 
  end

  def create
    long_url = helpers.ensure_protocol params[:long_url]
    if !helpers.valid_url? long_url
      # change to redirect_to
      render html: long_url
      return
    end

    short_url = helpers.create_short_url

    @url_association = UrlAssociation.new(long_url: long_url, short_url: short_url)

    if @url_association.save
      # change to use redirect_to
      render html: "#{root_url}#{short_url}"
    else
      render html: 'failed to save to database'
    end
  end

  def redirect
    @url_association = UrlAssociation.find_by short_url: params[:short_url]
    redirect_to @url_association.long_url, status: :moved_permanently
  end
end
