class UrlAssociationsController < ApplicationController
  def show
    @url_association = UrlAssociation.find(params[:id])
  end
end
