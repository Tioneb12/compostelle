class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  before_action :set_poi, only: [:show, :edit, :update, :destroy]

  def index
    # @pois = Poi.all

    @pois = Poi.where.not(latitude: nil, longitude: nil)

    @markers = @pois.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude
      }
    end
  end

  def show
    @markers = [{lat: @poi.latitude, lng: @poi.longitude}]
  end

  def new
    @poi = Poi.new
  end

  def destroy
    @poi.destroy
  end

  private

  def set_poi
    @poi = Poi.friendly.find(params[:id])
  end

end
