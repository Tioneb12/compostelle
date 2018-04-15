class TracksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_poi, only: [:show, :edit, :update, :destroy]

  def index
    @tracks = Track.all
  end

  def show
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end
end
