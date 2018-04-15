class WaysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_way, only: [:show, :edit, :update, :destroy]

  def index
    @ways = Way.all
  end

  def show
  end

  private

  def set_way
    @way = Way.find(params[:id])
  end

end
