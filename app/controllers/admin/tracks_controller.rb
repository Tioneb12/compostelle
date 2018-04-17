class Admin::TracksController < ApplicationController
  layout "admin"
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new
    if @track.save
      redirect_to track_path
    else
      render :new
    end
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    params.require(:poi).permit(:name,:description,:genre,:path,:active,:way_id)
  end
end
