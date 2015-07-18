class ArtistsController < ApplicationController
  def show
  	@artist = Artist.find(params[:id])
  end

  def index
  end
end
