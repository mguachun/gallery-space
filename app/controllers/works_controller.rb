class WorksController < ApplicationController
  before_action :redirect_if_not_logged_in
  
  def index
    @works = Work.all
  end

  def show
    @work = Work.find_by(id:params[:id])
    
    @comments = @work.comments 
  end


  private

  def work_params
    params.require(:work).permit(:title, :artist, :year, :medium)
  end
end