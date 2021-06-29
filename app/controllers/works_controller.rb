class WorksController < ApplicationController
  before_action :check_login?
  def index
    @works = Work.all
  end

  def show

    @work = Work.find_by(id:params[:id])
    
    @comments = @work.comments 
  
  end

  def new
      @work = Work.new
      # @work.build_comment
   end

  
  def create
    @work = Work.new(work_params)
   
    if @work.save
        redirect_to work_path(@work)
    else
        render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    @work.update(work_params)
    if @work.valid?
      redirect_to works_path
    else
      render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :artist, :year, :medium)
  end
end