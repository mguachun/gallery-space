class WorksController < ApplicationController
  before_action :check_login?
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