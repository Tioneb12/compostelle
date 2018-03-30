class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pois = Poi.all
  end

  def show
    set_poi
  end

  def new
    @poi = Poi.new
  end

  def show
    set_poi
  end

  def destroy
    set_poi
    @poi.destroy
  end

  private

  def set_poi
    @poi = Poi.find(params[:id])
  end

end
