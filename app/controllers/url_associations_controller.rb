class UrlAssociationsController < ApplicationController
  def new
  end

  def show
    @url_association = UrlAssociation.find(params[:id])
  end

  def create
    long_url = helpers.ensure_protocol params[:long_url]
    short_url = helpers.create_short_url

    @url_association = UrlAssociation.new(long_url: long_url, short_url: short_url)

    if @url_association.save
      redirect_to @url_association
    else
      render 'new'
    end
  end

  def redirect
    @url_association = UrlAssociation.find_by short_url: params[:short_url]
    redirect_to @url_association.long_url, status: :moved_permanently
  end
end
