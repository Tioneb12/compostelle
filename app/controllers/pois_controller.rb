class PoisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pois = Poi.all
  end

  def show
  end

end
