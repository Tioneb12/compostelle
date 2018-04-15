class TracksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  def show
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end
end
