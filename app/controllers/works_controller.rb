class WorksController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    if params[:user_id] && @comment = Comment.find(params[:user_id])
      @work = Work.new(comment_id: params[:comment_id])
    else
      @work = Work.new
      @work.build_comment
    end
  end

  def create
    redirect_if_not_logged_in
    work = current_user.works.build(params)
    work.save
  end

  if work.save
    redirect_to works_path
  else
    render :new
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
      render edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  private

  def work_params
    params.require(:work).permit(:artist, :title, :year, :location, :medium, :comment_id, comment_attributes: [:headline, :description])
  end



  end




end
