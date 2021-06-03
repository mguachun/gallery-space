class WorksController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end


  def new
  end

  def create
  end
end
