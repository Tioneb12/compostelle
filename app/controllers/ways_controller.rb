class WaysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_way, only: [:show, :edit, :update, :destroy]

  def index
    @ways = Way.all.where.not( active: false)
  end

  def show
    @tracks = Track.all.where.not(active: false)
    @tracks1 = @tracks.where.not(genre: "Voie secondaire")
    @tracks2 = @tracks.where.not(genre: "Voie principale")
  end

  private

  def set_way
    @way = Way.find(params[:id])
  end

end
