class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])

  end

  def new
    if params[:brand_id] && @work = Work.find(params[:work_id])
      @comment = Work.new(work_id: params[:work_id])
      else 
        @comment = Comment.new
        @comment.build_work
      end
    end


  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path
    else 
      render :new
    end
  end

  def edit 
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(commment_params)
    if @comment.valid?
        redirect_to comments_path 
    else
        render :edit 
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path 
  end

  private

  def comment_params
    params.require(:comment).permit(:headline, :description)
  end
end
