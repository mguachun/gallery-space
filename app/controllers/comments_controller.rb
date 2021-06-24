class CommentsController < ApplicationController
  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])

  end

  def new
    @work = Work.find(params[:work_id])
    if @work 
      @comment = @work.comments.build
    else 
      redirect_to works_path
    end
  end
  

  def create
    @work = Work.find(params[:work_id])

      @comment = @work.comments.create(comment_params)
      @comment.user = current_user
  
    if @comment.save
         redirect_to works_path
      else
        redirect_to new_work_comment(@work)
      end
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

