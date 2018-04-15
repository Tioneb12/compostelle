class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_poi, only: [:show, :edit, :update, :destroy]

  def index
    @pois = Poi.all
  end

  def show
    @markers = [{lat: @poi.latitude, lng: @poi.longitude}]
  end

  def new
    @poi = Poi.new
  end

  def create
    @poi = Poi.new(poi_params)
    if @poi.save
      redirect_to pois_path
    else
      render :new
    end
  end

  def destroy
    @poi.destroy
    redirect_to pois_path
  end

  def edit
    render :edit
  end

  def update
    if @poi.update(poi_params)
      redirect_to pois_path
    else
      render :edit
    end
  end

  private

  def set_poi
    @poi = Poi.friendly.find(params[:id])
  end

  def poi_params
    params.require(:poi).permit(:name,:address,:address2,:zip_code,:city,:pk,:latitude,:longitude)
  end

end





